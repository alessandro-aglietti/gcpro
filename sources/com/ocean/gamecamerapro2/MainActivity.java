package com.ocean.gamecamerapro2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.ocean.ble.BLEDeviceAdapter;
import com.ocean.ble.BLEDeviceObject;
import com.ocean.ble.BT4Base;
import com.ocean.ble.BeepManager;
import com.ocean.cmdrequest.CameraRequest;
import com.ocean.playback.PlaybackActivity;
import com.ocean.widget.CircularProgressButton;
import com.ocean.widget.IOSAlertDialog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class MainActivity extends Activity implements CameraRequest.OnCameraRequestListener, BLEDeviceObject.OnBLEDeviceObjectListener, BT4Base.OnBT4BaseListener, BLEDeviceAdapter.OnBLEDeviceAdapterListener {
    private static final int BUTTON_STATE_DEFEAT = -1;
    private static final int BUTTON_STATE_LOADING = 50;
    private static final int BUTTON_STATE_NROMAL = 0;
    private static final int BUTTON_STATE_SUCCEED = 100;
    private static final int MAIN_DELAY_EXIT_APP = 3;
    private static final int MAIN_DELAY_SCAN_BT = 2;
    private static final int MAIN_SET_CONN_STATUS = 1;
    private static final int MSG_BT_SCAN_NONE = 6;
    private static final int MSG_BT_SCAN_REPEAT = 4;
    private static final int MSG_CANCEL_WAIT_VIEW = 1;
    private static final int MSG_CHK_WIFI_OFF = 9;
    private static final int MSG_CHK_WIFI_ON_END = 8;
    private static final int MSG_CHK_WIFI_ON_SEC = 7;
    private static final int MSG_SHOW_WAIT_SECOND = 5;
    private static final int MSG_VIB_ENABLE = 0;
    private static final int PERMISSION_CAMERA_MODE = 4;
    private static final int PERMISSION_LOCATION_BTSCAN = 2;
    private static final int PERMISSION_LOCATION_MAP = 3;
    private static final int PERMISSION_READ_PHONE_STATE = 5;
    private static final int PERMISSION_STORAGE_ONCREATE = 0;
    private static final String TAG = "MainActivity";
    public static MainActivity _instance = null;
    private static boolean isWaitDlgCheck = false;
    private static boolean isWaitDlgStart = false;
    private static ProgressDialog mWaitDlg;
    private static int nWaitDlgCount;
    private static int nWaitDlgCountMax;
    private static String strWaitDlgMsg;
    public int ACTIVITY_STATE;
    private BeepManager beepManager;
    private Button btnEnableBT;
    private Button btnEnableWiFi;
    private Button btnLocalAlbum;
    private Button btnOffWiFi;
    private Button btnRenameBT;
    private Button btnResetWiFi;
    private Button btnScanBT;
    private Button btnSkipBT;
    private CameraRequest cameraRequest;
    private CircularProgressButton connect_bt;
    private TextView connect_study;
    private ImageView imgSplash;
    private RelativeLayout layoutGudieIdx;
    private RelativeLayout layoutGuide00;
    private RelativeLayout layoutGuide01;
    private RelativeLayout layoutGuide02;
    private RelativeLayout layoutGuide03;
    public RelativeLayout layoutMidDevicesList;
    private LinearLayout layoutWiFi4G;
    public ListView listDevices;
    private TextView txtVersion;
    private HandlerThread wThread;
    private WorkerHandler workHandler;
    private RelativeLayout main_layout = null;
    public int G_nDevMode = -1;
    private boolean G_isEnterFromLogin = false;
    private boolean isManualDisconnect = false;
    public String G_strMcuName = null;
    public String G_strProjectID = null;
    public String G_strProjectVer = null;
    public String G_strBuildTime = null;
    public String G_strOTG = null;
    public String G_strWiFiName = null;
    private Handler mainHandler = new Handler() { // from class: com.ocean.gamecamerapro2.MainActivity.7
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    if (MainActivity.this.connect_bt.getProgress() == 0) {
                        MainActivity.this.connect_bt.setProgress(50);
                        sendEmptyMessageDelayed(0, 1000L);
                        return;
                    } else if (MainActivity.this.connect_bt.getProgress() == 100 || MainActivity.this.connect_bt.getProgress() == -1) {
                        MainActivity.this.connect_bt.setProgress(0);
                        return;
                    } else if (Math.random() > 0.5d) {
                        MainActivity.this.connect_bt.setProgress(100);
                        MainActivity.this.workHandler.sendEmptyMessageDelayed(0, 1000L);
                        sendEmptyMessageDelayed(0, 1250L);
                        return;
                    } else {
                        MainActivity.this.connect_bt.setProgress(-1);
                        sendEmptyMessageDelayed(0, 1250L);
                        return;
                    }
                case 1:
                    MainActivity.this.connect_bt.setProgress(message.arg1);
                    if (message.arg1 == 100 || message.arg1 == -1) {
                        Message obtainMessage = obtainMessage();
                        obtainMessage.what = 1;
                        obtainMessage.arg1 = 0;
                        sendMessageDelayed(obtainMessage, 2000L);
                        return;
                    }
                    return;
                case 2:
                    MainActivity.this.guide_ScanBT(1);
                    return;
                case 3:
                    if (MainActivity.this.workHandler != null) {
                        MainActivity.this.workHandler.removeCallbacksAndMessages(null);
                        MainActivity.this.workHandler = null;
                    }
                    if (MainActivity.this.mainHandler != null) {
                        MainActivity.this.mainHandler.removeCallbacksAndMessages(null);
                        MainActivity.this.mainHandler = null;
                    }
                    MainActivity.this.mBT4Base.didDisconnectAll();
                    MainActivity.this.unregisterReceiver(MainActivity.this.mBT4Base.ui_mGattUpdateReceiver);
                    System.exit(1);
                    return;
                default:
                    return;
            }
        }
    };
    private LocationManager mLmanager = null;
    public BT4Base mBT4Base = null;
    public int nDeviceDetailPos = -1;
    public String strDeviceDetailProductID = null;
    public int nDeviceDetailVersion = -1;
    public BLEDeviceObject pDeviceDetailObj = null;
    private int nBTReconnect = 0;
    public BLEDeviceAdapter adapterBluetooth = null;
    private int nVibratorNum = 0;
    private Timer pVibratorTimer = new Timer();
    @SuppressLint({"HandlerLeak"})
    private Handler pVibratorHandler = new Handler() { // from class: com.ocean.gamecamerapro2.MainActivity.23
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MainActivity.access$1408(MainActivity.this);
            MainActivity.this.beepManager.playBeepSoundAndVibrate();
            if (MainActivity.this.nVibratorNum == 10) {
                MainActivity.this.system_stopVibrator();
            }
        }
    };
    private Timer pSystemTimer = null;
    private TimerTask pSystemTimerTask = null;
    private Handler pSystemTimerHandler = null;
    private boolean isChkBTScanTimeout = false;
    private int nChkBTScanTimeout = 0;
    private int nBTScanCount = 0;
    private boolean isChkWiFiOn = false;
    private int nChkWiFiOnTimeout = 0;
    private boolean isChkWiFiOff = false;
    private int nChkWiFiOffTimeout = 0;
    private int nGuidePage = 0;
    private final int REQUEST_ENABLE_BT = 2;

    @Override // com.ocean.ble.BT4Base.OnBT4BaseListener
    public void btDidSendData(String str) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetBatteryFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetBatterySucc(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd3031Fail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd3031Succ(HashMap<String, ArrayList<ArrayList<String>>> hashMap) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd9026Fail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd9026Succ(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetFileListFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetFileListSucc(ArrayList<HashMap<String, String>> arrayList) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetIDFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetIDSucc(String str) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModeFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetRetStatusFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetRetStatusSucc(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSDFreeSpaceFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSDFreeSpaceSucc(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSettingsFail(HashMap<String, Integer> hashMap) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSettingsSucc(HashMap<String, Integer> hashMap) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidRecordFail(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidRecordSucc(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSendCmdFail(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeSucc(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSnapshotFail(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSnapshotSucc(int i) {
    }

    @Override // com.ocean.ble.BLEDeviceObject.OnBLEDeviceObjectListener
    public void deviceDidGetGpioStatus(int i) {
    }

    @Override // com.ocean.ble.BLEDeviceObject.OnBLEDeviceObjectListener
    public void deviceDidUpdateAuto(int i) {
    }

    static /* synthetic */ int access$1408(MainActivity mainActivity) {
        int i = mainActivity.nVibratorNum;
        mainActivity.nVibratorNum = i + 1;
        return i;
    }

    static /* synthetic */ int access$2008() {
        int i = nWaitDlgCount;
        nWaitDlgCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$2408(MainActivity mainActivity) {
        int i = mainActivity.nChkBTScanTimeout;
        mainActivity.nChkBTScanTimeout = i + 1;
        return i;
    }

    static /* synthetic */ int access$2708(MainActivity mainActivity) {
        int i = mainActivity.nChkWiFiOnTimeout;
        mainActivity.nChkWiFiOnTimeout = i + 1;
        return i;
    }

    static /* synthetic */ int access$2808(MainActivity mainActivity) {
        int i = mainActivity.nChkWiFiOffTimeout;
        mainActivity.nChkWiFiOffTimeout = i + 1;
        return i;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.activity_main);
        _instance = this;
        this.G_isEnterFromLogin = false;
        bt4base_initBluetoothFeature();
        btlist_initBluetoothListView();
        system_initTimer();
        system_initVibrator();
        initCameraRequest();
        initViews();
        guide_initView();
        initThreadHandler();
        permission_accessStorage();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.ACTIVITY_STATE = 1;
        this.main_layout.setVisibility(0);
        if (this.mainHandler != null) {
            Message obtainMessage = this.mainHandler.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.arg1 = 0;
            this.mainHandler.sendMessage(obtainMessage);
        }
        Handler handler = this.mainHandler;
        if (MyApplication._instance.isLoginSetWiFi) {
            MyApplication._instance.isLoginSetWiFi = false;
            if (this.workHandler != null) {
                this.workHandler.sendEmptyMessageDelayed(257, 500L);
            }
        }
        if (MyApplication._instance.isPreviewExit) {
            MyApplication._instance.isPreviewExit = false;
            this.cameraRequest.sendCmd(-4, "9018", null);
        }
        if (!this.isChkWiFiOff && this.nGuidePage == 4) {
            this.isChkWiFiOff = true;
            this.nChkWiFiOffTimeout = 0;
        }
        this.G_isEnterFromLogin = false;
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.ACTIVITY_STATE = 2;
        this.main_layout.setVisibility(4);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            new AlertDialog.Builder(this).setTitle(getResources().getString(R.string.L_warning)).setIcon(17301659).setMessage(getResources().getString(R.string.L_set_exitfunc)).setPositiveButton(getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (MainActivity.this.nDeviceDetailPos != -1 && MainActivity.this.mBT4Base.arrayBLEDevices.get(MainActivity.this.nDeviceDetailPos) != null) {
                        int i3 = MainActivity.this.mBT4Base.arrayBLEDevices.get(MainActivity.this.nDeviceDetailPos).tagStatus;
                        BT4Base bT4Base = MainActivity.this.mBT4Base;
                        if (i3 == 2) {
                            MainActivity.this.btSetGpio2(MainActivity.this.nDeviceDetailPos);
                        }
                    }
                    if (MainActivity.this.mainHandler != null) {
                        MainActivity.this.mainHandler.sendEmptyMessageDelayed(3, 500L);
                    }
                }
            }).setNegativeButton(getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            }).show();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = super.getResources();
        Configuration configuration = new Configuration();
        configuration.setToDefaults();
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        return resources;
    }

    private void initViews() {
        this.main_layout = (RelativeLayout) findViewById(R.id.main_layout);
        this.imgSplash = (ImageView) findViewById(R.id.img_splash);
        this.imgSplash.setVisibility(0);
        this.txtVersion = (TextView) findViewById(R.id.txt_version);
        this.txtVersion.setVisibility(0);
        this.connect_bt = (CircularProgressButton) findViewById(R.id.connect_bt);
        this.connect_bt.setIndeterminateProgressMode(true);
        this.connect_bt.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.connect_bt.getProgress() != 0) {
                    return;
                }
                MainActivity.this.workHandler.sendEmptyMessage(257);
            }
        });
        this.connect_study = (TextView) findViewById(R.id.connect_text);
        this.connect_study.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.btnOffWiFi = (Button) findViewById(R.id.btn_off_wifi);
        this.btnOffWiFi.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyApplication._instance.isLoginSetWiFi = true;
                MainActivity.this.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
            }
        });
        new Timer().schedule(new TimerTask() { // from class: com.ocean.gamecamerapro2.MainActivity.6
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                MainActivity.this.runOnUiThread(new Runnable() { // from class: com.ocean.gamecamerapro2.MainActivity.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MainActivity.this.imgSplash.setVisibility(8);
                        MainActivity.this.txtVersion.setVisibility(8);
                        MainActivity.this.nGuidePage = 1;
                        MainActivity.this.guide_GotoPage();
                    }
                });
            }
        }, 3000L);
    }

    private void initThreadHandler() {
        this.wThread = new HandlerThread("WorkerThread");
        this.wThread.start();
        this.workHandler = new WorkerHandler(this.wThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class WorkerHandler extends Handler {
        public WorkerHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i != 0) {
                switch (i) {
                    case 257:
                        Message obtain = Message.obtain();
                        obtain.what = 1;
                        obtain.arg1 = 50;
                        MainActivity.this.mainHandler.sendMessage(obtain);
                        MainActivity.this.cameraRequest.getCameraModelID();
                        return;
                    case 258:
                        if (MainActivity.this.G_nDevMode == -1) {
                            MainActivity.this.G_nDevMode = 1;
                        }
                        SharedPreferences sharedPreferences = MainActivity.this.getSharedPreferences(MainActivity.this.getString(R.string.app_name), 0);
                        sharedPreferences.edit().putString("Mcu Name", MainActivity.this.G_strMcuName).commit();
                        sharedPreferences.edit().putString("Project ID", MainActivity.this.G_strProjectID).commit();
                        sharedPreferences.edit().putString("Project Ver", MainActivity.this.G_strProjectVer).commit();
                        sharedPreferences.edit().putString("Build Time", MainActivity.this.G_strBuildTime).commit();
                        sharedPreferences.edit().putString("OTG", MainActivity.this.G_strOTG).commit();
                        sharedPreferences.edit().putInt("Camera Mode", MainActivity.this.G_nDevMode).commit();
                        sharedPreferences.edit().putBoolean("isEnterFromLogin", MainActivity.this.G_isEnterFromLogin).commit();
                        sharedPreferences.edit().putBoolean("isVideoFiles", false).commit();
                        MyApplication._instance.nAppMode = 1;
                        MainActivity.this.isChkWiFiOff = false;
                        MainActivity.this.startActivity(new Intent(MainActivity.this, PreviewActivity.class));
                        return;
                    case 259:
                        MainActivity.this.cameraRequest.setCameraDate();
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private boolean gps_enableLocation(int i) {
        this.mLmanager = (LocationManager) getSystemService("location");
        if (!this.mLmanager.isProviderEnabled("gps") && !this.mLmanager.isProviderEnabled("network")) {
            new AlertDialog.Builder(this).setIcon(17301659).setTitle(getString(R.string.L_notice_title)).setMessage(getString(i)).setNegativeButton(getString(R.string.L_show_again), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            }).setPositiveButton(getString(R.string.L_go_setting), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    MainActivity.this.startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 0);
                }
            }).show();
            return false;
        }
        if (i == R.string.L_location_bt) {
            btDidSearching(1);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean permission_accessLocation(int i) {
        String[] strArr = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_BACKGROUND_LOCATION"};
        String[] strArr2 = {"android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT"};
        if (Build.VERSION.SDK_INT < 31) {
            if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                ActivityCompat.requestPermissions(this, strArr, i);
                return false;
            }
            return true;
        } else if (ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_SCAN") != 0) {
            ActivityCompat.requestPermissions(this, strArr2, i);
            return false;
        } else {
            return true;
        }
    }

    private boolean permission_accessStorage() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 0);
            return false;
        }
        return true;
    }

    private boolean permission_accessCamera() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 4);
            return false;
        }
        return true;
    }

    private boolean permission_accessPhoneState(int i) {
        if (ContextCompat.checkSelfPermission(this, "android.permission.READ_PHONE_STATE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.READ_PHONE_STATE"}, i);
            return false;
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (strArr.length == 0 || iArr.length == 0) {
            return;
        }
        if (i == 0) {
            if (strArr[0].equalsIgnoreCase("android.permission.WRITE_EXTERNAL_STORAGE") && iArr[0] == -1) {
                new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.L_ckstorage_hint)).setPositiveButton(getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.10
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        System.exit(1);
                    }
                }).show();
            }
        } else if (i != 2) {
            if (i == 3) {
            }
        } else if (strArr[0].equalsIgnoreCase("android.permission.ACCESS_COARSE_LOCATION")) {
            if (iArr[0] == -1) {
                new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.bt_scan_hint)).setPositiveButton(getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.12
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                        intent.setData(Uri.fromParts("package", MainActivity.this.getPackageName(), null));
                        MainActivity.this.startActivity(intent);
                    }
                }).setNegativeButton(getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.11
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).show();
            } else {
                gps_enableLocation(R.string.L_location_bt);
            }
        }
    }

    private void initCameraRequest() {
        this.cameraRequest = new CameraRequest(this);
        this.cameraRequest.setOnCameraRequestListener(this);
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeFail(int i) {
        camRequestError("camDidSetModeFail");
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModelIDSucc(HashMap<String, String> hashMap) {
        if (hashMap != null) {
            if (hashMap.containsKey("String0")) {
                this.G_strMcuName = hashMap.get("String0");
            }
            if (hashMap.containsKey("String1")) {
                this.G_strProjectID = hashMap.get("String1");
            }
            if (hashMap.containsKey("String3")) {
                this.G_strBuildTime = hashMap.get("String2");
            }
            if (hashMap.containsKey("String2")) {
                this.G_strProjectVer = hashMap.get("String3");
            }
            if (hashMap.containsKey("String4")) {
                this.G_strOTG = hashMap.get("String4");
            }
            if ((this.G_strProjectID.equalsIgnoreCase("RD2021") || this.G_strProjectID.equalsIgnoreCase("RD5009PRO") || this.G_strProjectID.equalsIgnoreCase("RD7000") || this.G_strProjectID.equalsIgnoreCase("RD7000_V01")) && this.G_strProjectID != null) {
                this.cameraRequest.setCameraDate();
                return;
            }
            return;
        }
        camDidGetModelIDFail();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModelIDFail() {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.arg1 = -1;
        this.mainHandler.sendMessage(obtain);
        if (this.ACTIVITY_STATE == 1) {
            new IOSAlertDialog(this).builder().setTitle(getString(R.string.my_dialog_title)).setMsg(getString(R.string.my_dialog_hint)).setPositiveButton(getString(R.string.my_dialog_go_setting), new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyApplication._instance.isLoginSetWiFi = true;
                    MainActivity.this.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
                }
            }).setNegativeButton(getString(R.string.my_dialog_go_album), new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MainActivity.this.G_isEnterFromLogin = true;
                    MainActivity.this.G_nDevMode = -1;
                    SharedPreferences sharedPreferences = MainActivity.this.getSharedPreferences(MainActivity.this.getString(R.string.app_name), 0);
                    sharedPreferences.edit().putString("Mcu Name", MainActivity.this.G_strMcuName).commit();
                    sharedPreferences.edit().putString("Project ID", MainActivity.this.G_strProjectID).commit();
                    sharedPreferences.edit().putString("Project Ver", MainActivity.this.G_strProjectVer).commit();
                    sharedPreferences.edit().putString("Build Time", MainActivity.this.G_strBuildTime).commit();
                    sharedPreferences.edit().putString("OTG", MainActivity.this.G_strOTG).commit();
                    sharedPreferences.edit().putInt("Camera Mode", MainActivity.this.G_nDevMode).commit();
                    sharedPreferences.edit().putBoolean("isEnterFromLogin", MainActivity.this.G_isEnterFromLogin).commit();
                    MainActivity.this.startActivity(new Intent(MainActivity.this, PlaybackActivity.class));
                }
            }).show();
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModeSucc(int i) {
        this.G_nDevMode = i;
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.arg1 = 100;
        this.mainHandler.sendMessage(obtain);
        this.workHandler.sendEmptyMessageDelayed(258, 1000L);
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateSucc() {
        this.cameraRequest.setCameraTime();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateFail() {
        camRequestError("camDidSetDateFail");
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetTimeSucc() {
        this.cameraRequest.getCameraMode();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetTimeFail() {
        camRequestError("camDidSetTimeFail");
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSendCmdSucc(int i, int i2) {
        if (i == -4 && i2 == 9018) {
            Toast.makeText(this, "Off WiFi Succ", 0).show();
        }
        if (this.nDeviceDetailPos != -1 && this.mBT4Base.arrayBLEDevices.get(this.nDeviceDetailPos) != null) {
            int i3 = this.mBT4Base.arrayBLEDevices.get(this.nDeviceDetailPos).tagStatus;
            BT4Base bT4Base = this.mBT4Base;
            if (i3 == 2) {
                btSetGpio2(this.nDeviceDetailPos);
            }
        }
        if (this.mainHandler != null) {
            this.mainHandler.sendEmptyMessageDelayed(3, 500L);
        }
    }

    private void camRequestError(String str) {
        Toast.makeText(this, str, 0).show();
    }

    private void bt4base_initBluetoothFeature() {
        this.mBT4Base = new BT4Base(this);
        if (this.mBT4Base == null) {
            ui_showText("Bluetooth Error!");
        } else {
            this.mBT4Base.setOnBT4BaseListener(this);
        }
    }

    @Override // com.ocean.ble.BT4Base.OnBT4BaseListener
    public void btDidDisconnected(BLEDeviceObject bLEDeviceObject) {
        ui_showWaitProcessDialog(false, null, null, 0, false, true);
        if (this.nGuidePage != 4) {
            ui_showText(bLEDeviceObject.tagDisplayName + " " + getResources().getString(R.string.bt_disconnected), 1);
        }
        if (MyApplication._instance.isManualDisconnect) {
            MyApplication._instance.isManualDisconnect = false;
        } else if (this.nDeviceDetailPos == bLEDeviceObject.nDevPos) {
            btFailConnecting(this.nDeviceDetailPos);
        }
    }

    @Override // com.ocean.ble.BT4Base.OnBT4BaseListener
    public void btDidConnected(BLEDeviceObject bLEDeviceObject) {
        this.nBTReconnect = 0;
        ui_showWaitProcessDialog(false, null, null, 0, false, true);
        if (this.nGuidePage != 4) {
            ui_showText(bLEDeviceObject.tagDisplayName + " " + getResources().getString(R.string.bt_connect), 0);
        }
        this.adapterBluetooth.notifyDataSetChanged();
        if (this.nDeviceDetailPos != -1) {
            return;
        }
        this.nDeviceDetailPos = bLEDeviceObject.nDevPos;
        MyApplication._instance.pDeviceDetailObj = bLEDeviceObject;
        this.nGuidePage = 3;
        guide_GotoPage();
    }

    @Override // com.ocean.ble.BT4Base.OnBT4BaseListener
    public void btDidUpdateDevices() {
        this.adapterBluetooth.notifyDataSetChanged();
    }

    @Override // com.ocean.ble.BT4Base.OnBT4BaseListener
    public void btDidSearched(BLEDeviceObject bLEDeviceObject) {
        if (this.layoutMidDevicesList.getVisibility() == 8) {
            this.layoutMidDevicesList.setVisibility(0);
        }
        this.adapterBluetooth.notifyDataSetChanged();
        this.isChkBTScanTimeout = false;
        this.nChkBTScanTimeout = 0;
    }

    @Override // com.ocean.ble.BT4Base.OnBT4BaseListener
    public void btDidGetAddress(String str) {
        if (str == null) {
            ui_showText("can't get ble address");
        }
    }

    @Override // com.ocean.ble.BT4Base.OnBT4BaseListener
    public void btFailConnecting(int i) {
        final BLEDeviceObject bLEDeviceObject;
        if (i == -1 || i > this.mBT4Base.arrayBLEDevices.size() - 1 || (bLEDeviceObject = this.mBT4Base.arrayBLEDevices.get(i)) == null) {
            return;
        }
        if (this.nGuidePage != 4) {
            this.nBTReconnect++;
            if (this.nBTReconnect > 10) {
                runOnUiThread(new Runnable() { // from class: com.ocean.gamecamerapro2.MainActivity.15
                    @Override // java.lang.Runnable
                    public void run() {
                        MainActivity.this.mBT4Base.mBluetoothAdapter.disable();
                        MainActivity.this.ui_showWaitProcessDialog(false, null, null, 0, false, true);
                        MainActivity.this.ui_showText(MainActivity.this.getString(R.string.bt_connect_none));
                        MainActivity.this.mBT4Base.arrayBLEDevices.clear();
                        MainActivity.this.nDeviceDetailPos = -1;
                        MyApplication._instance.pDeviceDetailObj = null;
                        MainActivity.this.nGuidePage = 1;
                        MainActivity.this.guide_GotoPage();
                    }
                });
                return;
            }
        }
        runOnUiThread(new Runnable() { // from class: com.ocean.gamecamerapro2.MainActivity.16
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.mBT4Base.didConnect(bLEDeviceObject);
                if (MainActivity.this.nGuidePage != 4) {
                    MainActivity.this.ui_showWaitProcessDialog(true, null, MainActivity.this.getResources().getString(R.string.bt_reconnecting) + bLEDeviceObject.tagDisplayName + ",\n" + MainActivity.this.getResources().getString(R.string.bt_pleasewait), 10, true, false);
                }
            }
        });
    }

    private void btDidConnecting(int i) {
        BLEDeviceObject bLEDeviceObject;
        if (i == -1 || (bLEDeviceObject = this.mBT4Base.arrayBLEDevices.get(i)) == null) {
            return;
        }
        int i2 = bLEDeviceObject.tagStatus;
        BT4Base bT4Base = this.mBT4Base;
        if (i2 == 2) {
            return;
        }
        BT4Base bT4Base2 = this.mBT4Base;
        bLEDeviceObject.tagStatus = 4;
        this.mBT4Base.didConnect(bLEDeviceObject);
        this.nBTReconnect = 0;
        ui_showWaitProcessDialog(true, null, getResources().getString(R.string.bt_connecting) + bLEDeviceObject.tagDisplayName + ",\n" + getResources().getString(R.string.bt_pleasewait), 20, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void btDidDisconnecting(int i) {
        BLEDeviceObject bLEDeviceObject = this.mBT4Base.arrayBLEDevices.get(i);
        if (bLEDeviceObject == null) {
            return;
        }
        int i2 = bLEDeviceObject.tagStatus;
        BT4Base bT4Base = this.mBT4Base;
        if (i2 == 1) {
            return;
        }
        BT4Base bT4Base2 = this.mBT4Base;
        bLEDeviceObject.tagStatus = 3;
        this.isManualDisconnect = true;
        this.mBT4Base.didDisconnect(bLEDeviceObject);
        ui_showWaitProcessDialog(true, null, getResources().getString(R.string.bt_disconnecting) + ", " + getResources().getString(R.string.bt_pleasewait), 5, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void btDidSearching(int i) {
        this.mBT4Base.didSearch();
        BT4Base bT4Base = this.mBT4Base;
        ui_showWaitProcessDialog(true, null, getResources().getString(R.string.bt_scan) + ",\n" + getResources().getString(R.string.bt_select_device), (int) 10, true, true);
        if (!this.isChkBTScanTimeout) {
            this.isChkBTScanTimeout = true;
            this.nChkBTScanTimeout = 0;
            this.nBTScanCount = 0;
            return;
        }
        this.nBTScanCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void btSetGpio2(int i) {
        BLEDeviceObject bLEDeviceObject = this.mBT4Base.arrayBLEDevices.get(i);
        if (bLEDeviceObject == null || bLEDeviceObject.tagGatt == null || !this.mBT4Base.iApp_SetGpio(bLEDeviceObject, "GPIO2")) {
            return;
        }
        ui_showText(getString(R.string.L_wifi_off), 0);
    }

    private void btSetGpio3(int i) {
        BLEDeviceObject bLEDeviceObject = this.mBT4Base.arrayBLEDevices.get(i);
        if (bLEDeviceObject == null || bLEDeviceObject.tagGatt == null) {
            return;
        }
        this.mBT4Base.iApp_SetGpio(bLEDeviceObject, "GPIO3");
    }

    private void btn_TopClick() {
        if (!this.mBT4Base.mBluetoothAdapter.isEnabled()) {
            startActivity(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"));
        } else if (Build.VERSION.SDK_INT >= 23) {
            if (permission_accessLocation(2)) {
                gps_enableLocation(R.string.L_location_bt);
            }
        } else {
            btDidSearching(1);
        }
    }

    private void btlist_initBluetoothListView() {
        this.layoutMidDevicesList = (RelativeLayout) findViewById(R.id.layout_mid_devices_list);
        this.listDevices = (ListView) findViewById(R.id.lv_devices);
        if (this.adapterBluetooth == null) {
            this.adapterBluetooth = new BLEDeviceAdapter(this);
            this.adapterBluetooth.setOnBLEDeviceAdapterListener(this);
        }
        this.listDevices.setAdapter((ListAdapter) this.adapterBluetooth);
        this.listDevices.setDivider(null);
        this.listDevices.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.17
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MainActivity.this.cellDidSelectedDev(i, true);
            }
        });
    }

    @Override // com.ocean.ble.BLEDeviceAdapter.OnBLEDeviceAdapterListener
    public void cellDidSetGpio2(int i) {
        if (i == -1) {
            return;
        }
        btSetGpio2(i);
    }

    @Override // com.ocean.ble.BLEDeviceAdapter.OnBLEDeviceAdapterListener
    public void cellDidSetGpio3(int i) {
        if (i == -1) {
            return;
        }
        btSetGpio3(i);
    }

    @Override // com.ocean.ble.BLEDeviceAdapter.OnBLEDeviceAdapterListener
    public void cellDidDisconnect(final int i) {
        String string = getResources().getString(R.string.bt_q_disconnect);
        String string2 = getResources().getString(R.string.ok);
        new AlertDialog.Builder(this).setCancelable(false).setTitle(string).setIcon(17301659).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.19
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                MainActivity.this.btDidDisconnecting(i);
                MainActivity.this.adapterBluetooth.isDisconnect = false;
            }
        }).setNegativeButton(getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.18
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                MainActivity.this.adapterBluetooth.isDisconnect = false;
            }
        }).show();
    }

    @Override // com.ocean.ble.BLEDeviceAdapter.OnBLEDeviceAdapterListener
    public void cellDidRename(int i) {
        final BLEDeviceObject bLEDeviceObject = this.mBT4Base.arrayBLEDevices.get(i);
        if (bLEDeviceObject == null) {
            return;
        }
        View inflate = LayoutInflater.from(this).inflate(R.layout.input_dialog_layout, (ViewGroup) null);
        final EditText editText = (EditText) inflate.findViewById(R.id.dialog_edit);
        editText.setFocusable(true);
        editText.setText(bLEDeviceObject.tagDisplayName);
        ((TextView) inflate.findViewById(R.id.dialog_text)).setText(R.string.input_hint);
        new AlertDialog.Builder(this).setTitle(getResources().getString(R.string.bt_rename)).setIcon(17301659).setView(inflate).setCancelable(false).setPositiveButton(getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                String str = "HTC-" + editText.getText().toString();
                if (MainActivity.this.mBT4Base.iApp_SetTagName(bLEDeviceObject, str.getBytes())) {
                    bLEDeviceObject.tagDisplayName = str.substring(4);
                    MainActivity.this.adapterBluetooth.isEditName = false;
                    MainActivity.this.adapterBluetooth.notifyDataSetChanged();
                    MainActivity.this.ui_showText(MainActivity.this.getString(R.string.bt_rename_ok));
                    return;
                }
                MainActivity.this.ui_showText(MainActivity.this.getString(R.string.bt_rename_fail));
            }
        }).setNegativeButton(getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                MainActivity.this.adapterBluetooth.isEditName = false;
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cellDidSelectedDev(int i, boolean z) {
        BLEDeviceObject bLEDeviceObject;
        BLEDeviceAdapter bLEDeviceAdapter = (BLEDeviceAdapter) this.listDevices.getAdapter();
        if (bLEDeviceAdapter.isDisconnect || bLEDeviceAdapter.isEditName || (bLEDeviceObject = this.mBT4Base.arrayBLEDevices.get(i)) == null) {
            return;
        }
        if (bLEDeviceObject.tagStatus == 2) {
            this.nDeviceDetailVersion = 1;
            return;
        }
        this.mBT4Base.nReconnectCount = 0;
        btDidConnecting(i);
    }

    public void ui_showWaitProcessDialog(boolean z, String str, String str2, int i, boolean z2, boolean z3) {
        if (mWaitDlg != null) {
            if (mWaitDlg.isShowing()) {
                mWaitDlg.cancel();
            }
            isWaitDlgStart = false;
            isWaitDlgCheck = false;
            nWaitDlgCount = 0;
            nWaitDlgCountMax = 0;
            mWaitDlg = null;
            strWaitDlgMsg = null;
        }
        if (z) {
            mWaitDlg = new ProgressDialog(this);
            mWaitDlg.setTitle(str);
            mWaitDlg.setMessage(str2);
            mWaitDlg.show();
            mWaitDlg.setCanceledOnTouchOutside(z3);
            mWaitDlg.setCancelable(z3);
            isWaitDlgStart = true;
            nWaitDlgCount = 0;
            nWaitDlgCountMax = i;
            isWaitDlgCheck = z2;
            strWaitDlgMsg = str2;
        }
    }

    public void ui_showText(String str) {
        Toast.makeText(this, str, 0).show();
    }

    public void ui_showText(String str, int i) {
        Toast.makeText(this, str, i).show();
    }

    public void ui_showPrompt(String str) {
        new AlertDialog.Builder(this).setMessage(str).setCancelable(false).setIcon(17301659).setPositiveButton(getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    private void system_startVibrator() {
        if (this.nVibratorNum != 0) {
            return;
        }
        this.pVibratorTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.ocean.gamecamerapro2.MainActivity.24
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Message message = new Message();
                message.what = 0;
                MainActivity.this.pVibratorHandler.sendMessage(message);
            }
        }, 100L, 1500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void system_stopVibrator() {
        if (this.pVibratorTimer != null) {
            this.nVibratorNum = 0;
            this.pVibratorTimer.cancel();
            this.pVibratorTimer = null;
            this.pVibratorTimer = new Timer();
        }
    }

    private void system_initVibrator() {
        this.beepManager = new BeepManager(this);
    }

    private void system_initTimer() {
        this.pSystemTimerTask = new TimerTask() { // from class: com.ocean.gamecamerapro2.MainActivity.25
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (MainActivity.isWaitDlgCheck && MainActivity.isWaitDlgStart) {
                    MainActivity.access$2008();
                    if (MainActivity.nWaitDlgCount >= MainActivity.nWaitDlgCountMax) {
                        Message message = new Message();
                        message.what = 1;
                        MainActivity.this.pSystemTimerHandler.sendMessage(message);
                    } else {
                        Message message2 = new Message();
                        message2.what = 5;
                        message2.arg1 = MainActivity.nWaitDlgCountMax - MainActivity.nWaitDlgCount;
                        MainActivity.this.pSystemTimerHandler.sendMessage(message2);
                    }
                }
                if (MainActivity.this.isChkBTScanTimeout) {
                    MainActivity.access$2408(MainActivity.this);
                    if (MainActivity.this.nChkBTScanTimeout >= 10) {
                        MainActivity.this.nChkBTScanTimeout = 0;
                        if (MainActivity.this.nBTScanCount >= 3) {
                            MainActivity.this.isChkBTScanTimeout = false;
                            MainActivity.this.pSystemTimerHandler.sendEmptyMessage(6);
                        } else {
                            MainActivity.this.pSystemTimerHandler.sendEmptyMessage(4);
                        }
                    }
                }
                if (MainActivity.this.nDeviceDetailPos != -1) {
                    MainActivity.this.mBT4Base.iApp_GetTagRssi(MainActivity.this.nDeviceDetailPos);
                }
                if (MainActivity.this.isChkWiFiOn) {
                    MainActivity.access$2708(MainActivity.this);
                    if (MainActivity.this.nChkWiFiOnTimeout >= 10) {
                        MainActivity.this.isChkWiFiOn = false;
                        MainActivity.this.nChkWiFiOnTimeout = 0;
                        MainActivity.this.pSystemTimerHandler.sendEmptyMessage(8);
                    } else {
                        Message message3 = new Message();
                        message3.what = 7;
                        message3.arg1 = 10 - MainActivity.this.nChkWiFiOnTimeout;
                        MainActivity.this.pSystemTimerHandler.sendMessage(message3);
                    }
                }
                if (MainActivity.this.isChkWiFiOff) {
                    MainActivity.access$2808(MainActivity.this);
                    if (MainActivity.this.nChkWiFiOffTimeout >= 50) {
                        MainActivity.this.nChkWiFiOffTimeout = 0;
                        MainActivity.this.pSystemTimerHandler.sendEmptyMessage(9);
                    }
                }
            }
        };
        this.pSystemTimerHandler = new Handler() { // from class: com.ocean.gamecamerapro2.MainActivity.26
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    MainActivity.this.ui_showWaitProcessDialog(false, null, null, 0, false, true);
                } else if (message.what == 5 && message.arg1 >= 0) {
                    if (MainActivity.strWaitDlgMsg == null || MainActivity.mWaitDlg == null) {
                        return;
                    }
                    ProgressDialog progressDialog = MainActivity.mWaitDlg;
                    progressDialog.setMessage(MainActivity.strWaitDlgMsg + " (" + Integer.toString(message.arg1) + " Sec)");
                } else if (message.what == 6) {
                    MainActivity.this.mBT4Base.mBluetoothAdapter.disable();
                } else if (message.what == 7) {
                    Button button = MainActivity.this.btnEnableWiFi;
                    button.setText(MainActivity.this.getString(R.string.L_TURN_ON_WF) + " (" + String.valueOf(message.arg1) + "s)");
                } else if (message.what == 8) {
                    MainActivity.this.btnEnableWiFi.setText(MainActivity.this.getString(R.string.L_TURN_ON_WF));
                    MainActivity.this.connect_bt.setVisibility(0);
                    MainActivity.this.nGuidePage = 4;
                    MainActivity.this.guide_GotoPage();
                } else if (message.what == 9) {
                    MainActivity.this.guide_EnableWiFi();
                } else if (message.what == 4) {
                    MainActivity.this.btDidSearching(1);
                }
            }
        };
        this.pSystemTimer = new Timer();
        this.pSystemTimer.schedule(this.pSystemTimerTask, 1000L, 1000L);
    }

    private void guide_initView() {
        this.layoutGudieIdx = (RelativeLayout) findViewById(R.id.layout_guide_index);
        this.layoutGuide00 = (RelativeLayout) findViewById(R.id.layout_guide_00);
        this.layoutGuide01 = (RelativeLayout) findViewById(R.id.layout_guide_01);
        this.layoutGuide02 = (RelativeLayout) findViewById(R.id.layout_guide_02);
        this.layoutGuide03 = (RelativeLayout) findViewById(R.id.layout_guide_03);
        this.layoutWiFi4G = (LinearLayout) findViewById(R.id.layout_wifi_4g);
        this.btnLocalAlbum = (Button) findViewById(R.id.btn_local_album);
        this.btnLocalAlbum.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.G_isEnterFromLogin = true;
                SharedPreferences sharedPreferences = MainActivity.this.getSharedPreferences(MainActivity.this.getString(R.string.app_name), 0);
                sharedPreferences.edit().putString("Mcu Name", MainActivity.this.G_strMcuName).commit();
                sharedPreferences.edit().putString("Project ID", MainActivity.this.G_strProjectID).commit();
                sharedPreferences.edit().putString("Project Ver", MainActivity.this.G_strProjectVer).commit();
                sharedPreferences.edit().putString("Build Time", MainActivity.this.G_strBuildTime).commit();
                sharedPreferences.edit().putString("OTG", MainActivity.this.G_strOTG).commit();
                sharedPreferences.edit().putInt("Camera Mode", MainActivity.this.G_nDevMode).commit();
                sharedPreferences.edit().putBoolean("isEnterFromLogin", MainActivity.this.G_isEnterFromLogin).commit();
                MainActivity.this.startActivity(new Intent(MainActivity.this, PlaybackActivity.class));
            }
        });
        this.btnEnableBT = (Button) findViewById(R.id.btn_check_bt);
        this.btnEnableBT.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.permission_accessLocation(2)) {
                    MainActivity.this.guide_EnableBT();
                }
            }
        });
        this.btnScanBT = (Button) findViewById(R.id.btn_scan_bt);
        this.btnScanBT.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.29
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.guide_ScanBT(1);
            }
        });
        this.btnEnableWiFi = (Button) findViewById(R.id.btn_wifi_on);
        this.btnEnableWiFi.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.30
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.guide_EnableWiFi();
                MainActivity.this.isChkWiFiOn = true;
                MainActivity.this.nChkWiFiOnTimeout = 0;
            }
        });
        this.btnRenameBT = (Button) findViewById(R.id.btn_rename_bt);
        this.btnRenameBT.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.31
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.cellDidRename(MainActivity.this.nDeviceDetailPos);
            }
        });
        this.btnResetWiFi = (Button) findViewById(R.id.btn_on_wifi);
        this.btnResetWiFi.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.32
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.guide_EnableWiFi();
            }
        });
        this.btnSkipBT = (Button) findViewById(R.id.btn_skip);
        this.btnSkipBT.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.MainActivity.33
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.nGuidePage = 4;
                MainActivity.this.guide_GotoPage();
            }
        });
        this.nGuidePage = 0;
        guide_GotoPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void guide_EnableBT() {
        if (!this.mBT4Base.mBluetoothAdapter.isEnabled()) {
            startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 2);
            return;
        }
        this.nGuidePage = 2;
        guide_GotoPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean guide_ScanBT(int i) {
        if (!this.mBT4Base.mBluetoothAdapter.isEnabled()) {
            startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 2);
            return false;
        } else if (Build.VERSION.SDK_INT >= 23) {
            if (permission_accessLocation(2)) {
                return gps_enableLocation(R.string.L_location_bt);
            }
            return false;
        } else {
            btDidSearching(i);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void guide_EnableWiFi() {
        if (this.nDeviceDetailPos == -1) {
            return;
        }
        btSetGpio3(this.nDeviceDetailPos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void guide_GotoPage() {
        if (this.nGuidePage == 1) {
            this.layoutGudieIdx.setBackgroundResource(R.drawable.img_page00);
            this.layoutGudieIdx.setVisibility(0);
            this.layoutGuide00.setVisibility(0);
            this.layoutGuide01.setVisibility(8);
            this.layoutGuide02.setVisibility(8);
            this.layoutGuide03.setVisibility(8);
        } else if (this.nGuidePage == 2) {
            this.layoutGudieIdx.setBackgroundResource(R.drawable.img_page01);
            this.layoutGudieIdx.setVisibility(0);
            this.layoutGuide00.setVisibility(8);
            this.layoutGuide01.setVisibility(0);
            this.layoutGuide02.setVisibility(8);
            this.layoutGuide03.setVisibility(8);
            this.mainHandler.sendEmptyMessageAtTime(2, 1000L);
        } else if (this.nGuidePage == 3) {
            this.layoutGudieIdx.setBackgroundResource(R.drawable.img_page02);
            this.layoutGudieIdx.setVisibility(0);
            this.layoutGuide00.setVisibility(8);
            this.layoutGuide01.setVisibility(8);
            this.layoutGuide02.setVisibility(0);
            this.layoutGuide03.setVisibility(8);
        } else if (this.nGuidePage == 4) {
            if (Build.VERSION.SDK_INT >= 28) {
                this.layoutWiFi4G.setVisibility(0);
            } else {
                this.layoutWiFi4G.setVisibility(8);
            }
            this.layoutGudieIdx.setVisibility(8);
            this.layoutGuide00.setVisibility(8);
            this.layoutGuide01.setVisibility(8);
            this.layoutGuide02.setVisibility(8);
            this.layoutGuide03.setVisibility(0);
            if (this.isChkWiFiOff) {
                return;
            }
            this.isChkWiFiOff = true;
            this.nChkWiFiOffTimeout = 0;
        } else {
            this.layoutGudieIdx.setVisibility(8);
            this.layoutGuide00.setVisibility(8);
            this.layoutGuide01.setVisibility(8);
            this.layoutGuide02.setVisibility(8);
            this.layoutGuide03.setVisibility(8);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 2 && this.mBT4Base.mBluetoothAdapter.isEnabled()) {
            this.nGuidePage = 2;
            guide_GotoPage();
        }
    }
}
