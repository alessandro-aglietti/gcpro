package com.ocean.gamecamerapro2;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.TrafficStats;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.ocean.ble.BLEDeviceObject;
import com.ocean.cmdrequest.CameraRequest;
import com.ocean.playback.PlaybackActivity;
import com.ocean.util.StateTag;
import com.ocean.widget.MyLoadingDialog;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IVLCVout;
/* loaded from: classes.dex */
public class PreviewActivity extends Activity implements SurfaceHolder.Callback, IVLCVout.OnNewVideoLayoutListener, CameraRequest.OnCameraRequestListener {
    public static boolean Camera_isRecording = false;
    private static final int MSG_BAT_STATUS_CHANGE = 2;
    private static final int MSG_BLE_DISCONNECTED = 6;
    private static final int MSG_BLE_UPDATE_RSSI = 5;
    private static final int MSG_DELAY_CHECK_MODE = 10;
    private static final int MSG_DELAY_OPEN_STREAM = 4;
    private static final int MSG_KEEP_CAM_ALVIE = 20;
    private static final int MSG_PIC_LEFT_CHANGE = 3;
    private static final int MSG_REC_SD_FULL = 34;
    private static final int MSG_REC_STATUS_CHANGE = 0;
    private static final int MSG_REC_TIMER_CHANGE = 1;
    private static final int MSG_SOCKET_CONNECT = 0;
    private static final int MSG_SOCKET_DISCONNECT = 1;
    private static final int MSG_TEST_RECORDING0 = 30;
    private static final int MSG_TEST_RECORDING1 = 31;
    private static final int MSG_TEST_RECORDING2 = 32;
    private static final int MSG_TEST_RECORDING3 = 33;
    public static final String TAG = "Zeo/PreviewActivity";
    private static CamReqHandler handlerCamReq = null;
    public static boolean isAppAlive = true;
    private static boolean isReordingUpdate = false;
    private ImageView btnAlbumP;
    private ImageView btnBackP;
    private Button btnExitP;
    private ImageView btnPhotoModeL;
    private ImageView btnPhotoModeP;
    private ImageView btnPowerP;
    private ImageView btnSettingsP;
    private ImageView btnStartL;
    private ImageView btnStartP;
    private ImageView btnVideoModeL;
    private ImageView btnVideoModeP;
    private CameraRequest cameraRequest;
    public MyLoadingDialog dlgLoading;
    private MyClickListener handlerClick;
    private SurfaceHolder holderSurface;
    private HandlerThread htCamCmd;
    private ImageView imgBatteryL;
    private ImageView imgBatteryP;
    private ImageView imgRssiL;
    private ImageView imgRssiP;
    private ImageView imgSolarL;
    private ImageView imgSolarP;
    private ImageView imgWiFiL;
    private ImageView imgWiFiP;
    private TextView infoCamL;
    private TextView infoCamP;
    private TextView infoVideoTimeL;
    private TextView infoVideoTimeP;
    private TextView infoWiFiSpeedL;
    private TextView infoWiFiSpeedP;
    private ArrayList<String> item_1002;
    private ArrayList<String> item_2002;
    private RelativeLayout layoutControlL;
    private RelativeLayout layoutControlP;
    private InputStream mInputS;
    private Socket mSocket;
    private int nAppOrientation;
    private int nVideoH;
    private int nVideoW;
    private TextView txtBatteryL;
    private TextView txtBatteryP;
    private TextView txtPlayerInfo;
    private TextView txtRssiL;
    private TextView txtRssiP;
    private ArrayList<String> value_1002;
    private ArrayList<String> value_2002;
    private SurfaceView viewSurface;
    private WifiManager wifiManager;
    public static int lastDataSizeLog = (int) (TrafficStats.getTotalRxBytes() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
    private static boolean G_is4K2KShow = false;
    public PreviewActivity _instance = null;
    private int video_dpi = 0;
    private int pic_dpi = 0;
    private int G_nDevMode = 1;
    private float G_fSDFreeSpace = 0.0f;
    private boolean isDoNextAction = true;
    private int G_n9026Ret = -1;
    private boolean isLowBatteryHint = false;
    public String G_strMcuName = null;
    public String G_strProjectID = null;
    public String G_strProjectVer = null;
    public String G_strBuildTime = null;
    public String G_strOTG = null;
    private int nTouchChkCount = 0;
    private BroadcastReceiver handleWiFiStatus = new BroadcastReceiver() { // from class: com.ocean.gamecamerapro2.PreviewActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            WifiInfo connectionInfo;
            String action = intent.getAction();
            if (action == null || !StateTag.WIFI_ACTION.equals(action) || (connectionInfo = PreviewActivity.this.wifiManager.getConnectionInfo()) == null || connectionInfo.getSSID() == null) {
                return;
            }
            int calculateSignalLevel = WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 4);
            if (calculateSignalLevel == 0) {
                PreviewActivity.this.imgWiFiP.setImageResource(R.drawable.wifi_1);
                PreviewActivity.this.imgWiFiL.setImageResource(R.drawable.wifi_1);
            } else if (calculateSignalLevel == 1) {
                PreviewActivity.this.imgWiFiP.setImageResource(R.drawable.wifi_2);
                PreviewActivity.this.imgWiFiL.setImageResource(R.drawable.wifi_2);
            } else if (calculateSignalLevel == 2) {
                PreviewActivity.this.imgWiFiP.setImageResource(R.drawable.wifi_3);
                PreviewActivity.this.imgWiFiL.setImageResource(R.drawable.wifi_3);
            } else if (calculateSignalLevel == 3) {
                PreviewActivity.this.imgWiFiP.setImageResource(R.drawable.wifi_4);
                PreviewActivity.this.imgWiFiL.setImageResource(R.drawable.wifi_4);
            }
        }
    };
    private LibVLC libVLC = null;
    private MediaPlayer mediaPlayer = null;
    private IVLCVout outVLC = null;
    private ArrayList<String> options = new ArrayList<>();
    private Timer pSystemTimer = null;
    private TimerTask pSystemTimerTask = null;
    private Handler pSystemTimerHandler = null;
    private boolean isUpdateRecStatus = false;
    private boolean isUpdateRecTimer = false;
    private boolean isUpdateBatStatus = false;
    private int nUpdateSolarPower = 0;
    private boolean isUpdateWiFiSpeed = false;
    private boolean isUpdatePhotoLeft = false;
    private int nRecTimerCountCur = 0;
    private int nRecTimerCount = 0;
    private int G_nBatteryStatus = -1;
    private int nWiFiSpeedCount = 0;
    private int nPhotoLeft = -1;
    private int nSocketConnect = 0;
    private boolean isSocketConnect = false;
    private boolean isKeepCamAlive = true;
    private int nKeepCamAlvieCount = 0;
    private boolean logBo = true;

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
    public void camDidGetCmd9026Fail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetFileListFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetFileListSucc(ArrayList<HashMap<String, String>> arrayList) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetIDSucc(String str) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModeSucc(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModelIDFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModelIDSucc(HashMap<String, String> hashMap) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetRetStatusFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSDFreeSpaceFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSendCmdFail(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSendCmdSucc(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateSucc() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetTimeSucc() {
    }

    static /* synthetic */ int access$1908(PreviewActivity previewActivity) {
        int i = previewActivity.nSocketConnect;
        previewActivity.nSocketConnect = i + 1;
        return i;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.activity_preview);
        SharedPreferences sharedPreferences = getSharedPreferences(getString(R.string.app_name), 0);
        this.G_strMcuName = sharedPreferences.getString("Mcu Name", "error");
        this.G_strProjectID = sharedPreferences.getString("Project ID", "error");
        this.G_strProjectVer = sharedPreferences.getString("Project Ver", "error");
        this.G_strBuildTime = sharedPreferences.getString("Build Time", "error");
        this.G_strOTG = sharedPreferences.getString("OTG", "error");
        this.G_nDevMode = sharedPreferences.getInt("Camera Mode", 1);
        this.G_nBatteryStatus = sharedPreferences.getInt("Battery", -1);
        isAppAlive = true;
        this._instance = this;
        this.isUpdateBatStatus = true;
        initCameraRequest();
        initPreviewView();
        initWiFiStatusHandler();
        initEventHandler();
        system_initTimer();
        initPreviewPlayer();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        isAppAlive = true;
        this.isKeepCamAlive = true;
        this.nKeepCamAlvieCount = 0;
        handlerCamReq.sendEmptyMessage(0);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (configuration.orientation == 1) {
            this.layoutControlP.setVisibility(0);
            this.layoutControlL.setVisibility(4);
            this.nAppOrientation = 1;
        } else if (configuration.orientation == 2) {
            this.layoutControlP.setVisibility(8);
            this.layoutControlL.setVisibility(0);
            this.nAppOrientation = 2;
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        isAppAlive = false;
        this.isKeepCamAlive = false;
        closeSocketConn();
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        getSharedPreferences(getString(R.string.app_name), 0).edit().putInt("Camera Mode", this.G_nDevMode).commit();
        isAppAlive = false;
        this.isKeepCamAlive = false;
        this.isUpdateBatStatus = false;
        this.isUpdateRecStatus = false;
        this.isUpdatePhotoLeft = false;
        this.isSocketConnect = false;
        this.isUpdateRecTimer = false;
        closeSocketConn();
        try {
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
            this.outVLC.detachViews();
            this.outVLC = null;
            this.holderSurface = null;
            this.viewSurface = null;
            this.libVLC.release();
            this.libVLC = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            handlerCamReq.removeCallbacksAndMessages(null);
            handlerCamReq = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            unregisterReceiver(this.handleWiFiStatus);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        System.runFinalization();
        System.gc();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.nTouchChkCount++;
        if (this.nTouchChkCount > 6) {
            this.nTouchChkCount = 0;
            if (this.nAppOrientation == 2) {
                if (this.layoutControlL.getVisibility() == 0) {
                    this.layoutControlL.setVisibility(4);
                } else {
                    this.layoutControlL.setVisibility(0);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            getSharedPreferences(getString(R.string.app_name), 0).edit().putInt("Camera Mode", this.G_nDevMode).commit();
            finish();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    private void initControlViewP() {
        this.layoutControlP = (RelativeLayout) findViewById(R.id.layout_control_p);
        this.infoVideoTimeP = (TextView) findViewById(R.id.video_time_p);
        initTopBarP1();
        initTopBarP2();
        initBottomBarP1();
        initBottomBarP2();
    }

    private void initTopBarP1() {
        this.infoCamP = (TextView) findViewById(R.id.info_text_p);
        this.infoWiFiSpeedP = (TextView) findViewById(R.id.wifi_speed_p);
    }

    private void initTopBarP2() {
        this.btnBackP = (ImageView) findViewById(R.id.back_button_p);
        this.btnPowerP = (ImageView) findViewById(R.id.power_button_p);
        this.imgBatteryP = (ImageView) findViewById(R.id.battery_info_p);
        this.imgWiFiP = (ImageView) findViewById(R.id.wifi_info_p);
        this.txtBatteryP = (TextView) findViewById(R.id.txt_battery_p);
        this.txtRssiP = (TextView) findViewById(R.id.txt_rssi_p);
        this.imgRssiP = (ImageView) findViewById(R.id.img_rssi_p);
        this.btnExitP = (Button) findViewById(R.id.btn_exit_p);
        this.imgSolarP = (ImageView) findViewById(R.id.img_solar_p);
        this.btnBackP.setOnClickListener(this.handlerClick);
        this.btnPowerP.setOnClickListener(this.handlerClick);
        this.btnExitP.setOnClickListener(this.handlerClick);
    }

    private void initBottomBarP1() {
        this.btnVideoModeP = (ImageView) findViewById(R.id.video_mode_p);
        this.btnPhotoModeP = (ImageView) findViewById(R.id.photo_mode_p);
        this.btnVideoModeP.setOnClickListener(this.handlerClick);
        this.btnPhotoModeP.setOnClickListener(this.handlerClick);
    }

    private void initBottomBarP2() {
        this.btnAlbumP = (ImageView) findViewById(R.id.album_button_p);
        this.btnSettingsP = (ImageView) findViewById(R.id.setting_button_p);
        this.btnStartP = (ImageView) findViewById(R.id.bt_start_stop_p);
        this.btnAlbumP.setOnClickListener(this.handlerClick);
        this.btnSettingsP.setOnClickListener(this.handlerClick);
        this.btnStartP.setOnClickListener(this.handlerClick);
    }

    private void initControlViewL() {
        this.layoutControlL = (RelativeLayout) findViewById(R.id.layout_control_l);
        this.infoVideoTimeL = (TextView) findViewById(R.id.video_time_l);
        initTopBarL1();
        initTopBarL2();
        initBottomBarL1();
        initBottomBarL2();
    }

    private void initTopBarL1() {
        this.infoCamL = (TextView) findViewById(R.id.info_text_l);
        this.infoWiFiSpeedL = (TextView) findViewById(R.id.wifi_speed_l);
    }

    private void initTopBarL2() {
        this.imgBatteryL = (ImageView) findViewById(R.id.battery_info_l);
        this.imgWiFiL = (ImageView) findViewById(R.id.wifi_info_l);
        this.txtBatteryL = (TextView) findViewById(R.id.txt_battery_l);
        this.txtBatteryL.setText(getString(R.string.L_charging));
        this.txtRssiL = (TextView) findViewById(R.id.txt_rssi_l);
        this.imgRssiL = (ImageView) findViewById(R.id.img_rssi_l);
        this.imgSolarL = (ImageView) findViewById(R.id.img_solar_l);
    }

    private void initBottomBarL1() {
        this.btnVideoModeL = (ImageView) findViewById(R.id.video_mode_l);
        this.btnPhotoModeL = (ImageView) findViewById(R.id.photo_mode_l);
        this.btnVideoModeL.setOnClickListener(this.handlerClick);
        this.btnPhotoModeL.setOnClickListener(this.handlerClick);
    }

    private void initBottomBarL2() {
        this.btnStartL = (ImageView) findViewById(R.id.bt_start_stop_l);
        this.btnStartL.setOnClickListener(this.handlerClick);
    }

    private void initPreviewView() {
        this.handlerClick = new MyClickListener();
        initPlayerInfoText();
        initControlViewP();
        initControlViewL();
        if (getResources().getConfiguration().orientation == 2) {
            this.layoutControlP.setVisibility(8);
            this.layoutControlL.setVisibility(0);
            this.nAppOrientation = 2;
        } else if (getResources().getConfiguration().orientation == 1) {
            this.layoutControlP.setVisibility(0);
            this.layoutControlL.setVisibility(4);
            this.nAppOrientation = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MyClickListener implements View.OnClickListener {
        private MyClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.startAnimation(AnimationUtils.loadAnimation(PreviewActivity.this, R.anim.scale_imageview));
            switch (view.getId()) {
                case R.id.album_button_p /* 2131165192 */:
                    if (PreviewActivity.Camera_isRecording) {
                        Toast.makeText(PreviewActivity.this.getApplicationContext(), PreviewActivity.this.getString(R.string.cant_change), 0).show();
                        return;
                    }
                    SharedPreferences sharedPreferences = PreviewActivity.this.getSharedPreferences(PreviewActivity.this.getString(R.string.app_name), 0);
                    sharedPreferences.edit().putInt("Camera Mode", PreviewActivity.this.G_nDevMode).commit();
                    sharedPreferences.edit().putFloat("SD Free Space", PreviewActivity.this.G_fSDFreeSpace).commit();
                    sharedPreferences.edit().putInt("Battery", PreviewActivity.this.G_nBatteryStatus).commit();
                    MyApplication._instance.nAppMode = 2;
                    PreviewActivity.this.startActivity(new Intent(PreviewActivity.this, PlaybackActivity.class));
                    PreviewActivity.this.finish();
                    return;
                case R.id.back_button_p /* 2131165196 */:
                    PreviewActivity.this.finish();
                    return;
                case R.id.bt_start_stop_l /* 2131165206 */:
                case R.id.bt_start_stop_p /* 2131165207 */:
                    if (PreviewActivity.this.isDoNextAction) {
                        PreviewActivity.this.isDoNextAction = false;
                        if (PreviewActivity.this.G_nDevMode == 1 || PreviewActivity.this.G_nDevMode == 3) {
                            PreviewActivity.this.txtPlayerInfo.setText("");
                            boolean unused = PreviewActivity.isReordingUpdate = false;
                            PreviewActivity.this.vlcStopMedia();
                            PreviewActivity.this.nKeepCamAlvieCount = 0;
                            PreviewActivity.this.ui_updateLoading(true);
                            if (!PreviewActivity.Camera_isRecording) {
                                PreviewActivity.this.cameraRequest.setCameraRecord(1);
                                return;
                            } else {
                                PreviewActivity.this.cameraRequest.setCameraRecord(0);
                                return;
                            }
                        } else if (PreviewActivity.this.G_nDevMode == 0 || PreviewActivity.this.G_nDevMode == 4) {
                            PreviewActivity.this.nKeepCamAlvieCount = 0;
                            PreviewActivity.this.cameraRequest.setCameraSnapshot();
                            return;
                        } else {
                            Toast.makeText(PreviewActivity.this.getApplicationContext(), PreviewActivity.this.getString(R.string.nores), 0).show();
                            return;
                        }
                    }
                    return;
                case R.id.btn_exit_p /* 2131165209 */:
                    new AlertDialog.Builder(PreviewActivity.this).setTitle(PreviewActivity.this.getResources().getString(R.string.L_warning)).setIcon(17301659).setMessage(PreviewActivity.this.getResources().getString(R.string.L_set_exitfunc)).setPositiveButton(PreviewActivity.this.getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.PreviewActivity.MyClickListener.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            MyApplication._instance.isPreviewExit = true;
                            PreviewActivity.this.finish();
                        }
                    }).setNegativeButton(PreviewActivity.this.getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.PreviewActivity.MyClickListener.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    }).show();
                    return;
                case R.id.photo_mode_l /* 2131165340 */:
                case R.id.photo_mode_p /* 2131165341 */:
                    if (!PreviewActivity.Camera_isRecording) {
                        if (PreviewActivity.this.G_nDevMode != 0 && PreviewActivity.this.isDoNextAction) {
                            PreviewActivity.this.isDoNextAction = false;
                            PreviewActivity.this.vlcStopMedia();
                            PreviewActivity.this.nKeepCamAlvieCount = 0;
                            PreviewActivity.this.ui_updateLoading(true);
                            PreviewActivity.this.cameraRequest.setCameraMode(0);
                            return;
                        }
                        return;
                    }
                    Toast.makeText(PreviewActivity.this.getApplicationContext(), PreviewActivity.this.getString(R.string.cant_change), 0).show();
                    return;
                case R.id.power_button_p /* 2131165343 */:
                default:
                    return;
                case R.id.setting_button_p /* 2131165355 */:
                    if (PreviewActivity.Camera_isRecording) {
                        Toast.makeText(PreviewActivity.this.getApplicationContext(), PreviewActivity.this.getString(R.string.cant_change), 0).show();
                        return;
                    } else if (SystemClock.uptimeMillis() - MyApplication.getGo_setting_time() < 3000) {
                        return;
                    } else {
                        MyApplication.setGo_setting_time(SystemClock.uptimeMillis());
                        PreviewActivity.this.nKeepCamAlvieCount = 0;
                        PreviewActivity.this.cameraRequest.setCameraMode(2);
                        return;
                    }
                case R.id.video_mode_l /* 2131165414 */:
                case R.id.video_mode_p /* 2131165415 */:
                    if (!PreviewActivity.Camera_isRecording) {
                        if (PreviewActivity.this.G_nDevMode != 1 && PreviewActivity.this.isDoNextAction) {
                            PreviewActivity.this.isDoNextAction = false;
                            PreviewActivity.this.vlcStopMedia();
                            PreviewActivity.this.nKeepCamAlvieCount = 0;
                            PreviewActivity.this.ui_updateLoading(true);
                            PreviewActivity.this.cameraRequest.setCameraMode(1);
                            return;
                        }
                        return;
                    }
                    Toast.makeText(PreviewActivity.this.getApplicationContext(), PreviewActivity.this.getString(R.string.cant_change), 0).show();
                    return;
            }
        }
    }

    private void initEventHandler() {
        this.htCamCmd = new HandlerThread("WorkerThread");
        this.htCamCmd.start();
        handlerCamReq = new CamReqHandler(this.htCamCmd.getLooper(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class CamReqHandler extends Handler {
        private WeakReference<PreviewActivity> mOwner;

        public CamReqHandler(Looper looper, PreviewActivity previewActivity) {
            super(looper);
            this.mOwner = new WeakReference<>(previewActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            PreviewActivity previewActivity = this.mOwner.get();
            switch (message.what) {
                case 0:
                    PreviewActivity.this.initSocketConn();
                    PreviewActivity.this.readSocketData(PreviewActivity.this.cameraRequest);
                    return;
                case 1:
                    PreviewActivity.this.isSocketConnect = false;
                    if (PreviewActivity.Camera_isRecording) {
                        PreviewActivity.Camera_isRecording = false;
                    }
                    Toast.makeText(previewActivity, PreviewActivity.this.getString(R.string.disconnect), 0).show();
                    removeCallbacksAndMessages(null);
                    MyApplication._instance.nAppMode = 0;
                    previewActivity.finish();
                    return;
                default:
                    return;
            }
        }
    }

    private void initPlayerInfoText() {
        this.txtPlayerInfo = (TextView) findViewById(R.id.txt_player_info);
    }

    private void initWiFiStatusHandler() {
        this.wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(StateTag.WIFI_ACTION);
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        registerReceiver(this.handleWiFiStatus, intentFilter);
    }

    private void initPreviewPlayer() {
        try {
            vlcInit();
            if (this.G_nDevMode == 1) {
                vlcSetMedia("http://192.168.8.120:8192");
                this.pSystemTimerHandler.sendEmptyMessageDelayed(4, 500L);
            } else if (this.G_nDevMode == 0) {
                vlcSetMedia("http://192.168.8.120:8192");
                this.pSystemTimerHandler.sendEmptyMessageDelayed(4, 500L);
            } else {
                this.nKeepCamAlvieCount = 0;
                this.cameraRequest.setCameraMode(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(getApplicationContext(), "Error creating player!", 1).show();
        }
    }

    private void vlcInit() {
        this.viewSurface = (SurfaceView) findViewById(R.id.main_surface);
        this.viewSurface.setKeepScreenOn(true);
        this.viewSurface.setVisibility(4);
        this.holderSurface = this.viewSurface.getHolder();
        this.holderSurface.addCallback(this);
        this.libVLC = new LibVLC(getApplication(), this.options);
        if (this.mediaPlayer != null && this.mediaPlayer.isPlaying()) {
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        this.mediaPlayer = new MediaPlayer(this.libVLC);
        this.outVLC = this.mediaPlayer.getVLCVout();
    }

    private void vlcSetMedia(String str) {
        Media media = new Media(this.libVLC, Uri.parse(str));
        media.setHWDecoderEnabled(true, false);
        media.addOption(":network-caching=300");
        this.mediaPlayer.setMedia(media);
        media.release();
    }

    private void vlcPlayMedia() {
        this.mediaPlayer.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vlcStopMedia() {
        this.mediaPlayer.stop();
        this.viewSurface.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vlcOpenStream() {
        vlcPlayMedia();
        ui_updatePreviewView();
        this.viewSurface.setVisibility(0);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.mediaPlayer != null) {
            this.holderSurface = surfaceHolder;
            this.outVLC.setVideoSurface(surfaceHolder.getSurface(), surfaceHolder);
            this.outVLC.attachViews(this);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (this.mediaPlayer != null) {
            this.holderSurface = surfaceHolder;
            this.outVLC.setWindowSize(i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (this.mediaPlayer != null) {
            this.outVLC.detachViews();
        }
    }

    @Override // org.videolan.libvlc.interfaces.IVLCVout.OnNewVideoLayoutListener
    public void onNewVideoLayout(IVLCVout iVLCVout, int i, int i2, int i3, int i4, int i5, int i6) {
        IVLCVout iVLCVout2 = this.outVLC;
    }

    private void setSize(int i, int i2) {
        this.nVideoW = i;
        this.nVideoH = i2;
        if (this.nVideoW * this.nVideoH <= 1 || this.holderSurface == null || this.viewSurface == null) {
            return;
        }
        int width = getWindow().getDecorView().getWidth();
        int height = getWindow().getDecorView().getHeight();
        boolean z = getResources().getConfiguration().orientation == 1;
        if ((width > height && z) || (width < height && !z)) {
            height = width;
            width = height;
        }
        float f = this.nVideoW / this.nVideoH;
        float f2 = width;
        float f3 = height;
        if (f2 / f3 < f) {
            height = (int) (f2 / f);
        } else {
            width = (int) (f3 * f);
        }
        this.holderSurface.setFixedSize(this.nVideoW, this.nVideoH);
        ViewGroup.LayoutParams layoutParams = this.viewSurface.getLayoutParams();
        layoutParams.width = width;
        layoutParams.height = height;
        this.viewSurface.setLayoutParams(layoutParams);
        this.viewSurface.invalidate();
    }

    private void initCameraRequest() {
        this.cameraRequest = new CameraRequest(this);
        this.cameraRequest.setOnCameraRequestListener(this);
        this.nKeepCamAlvieCount = 0;
        if (!this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
            this.cameraRequest.getCameraSettings();
        } else {
            this.cameraRequest.getCameraCmd9026();
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeSucc(int i) {
        ui_updateLoading(false);
        if (i == 1) {
            this.G_nDevMode = 1;
            vlcSetMedia("http://192.168.8.120:8192");
            this.pSystemTimerHandler.sendEmptyMessageDelayed(4, 500L);
            this.nKeepCamAlvieCount = 0;
            this.cameraRequest.getCameraSettings();
        } else if (i == 0) {
            this.G_nDevMode = 0;
            vlcSetMedia("http://192.168.8.120:8192");
            this.pSystemTimerHandler.sendEmptyMessageDelayed(4, 500L);
            this.nKeepCamAlvieCount = 0;
            this.cameraRequest.getCameraSettings();
        } else if (i == 2) {
            this.isDoNextAction = true;
            SharedPreferences sharedPreferences = getSharedPreferences(getString(R.string.app_name), 0);
            sharedPreferences.edit().putInt("Camera Mode", this.G_nDevMode).commit();
            sharedPreferences.edit().putFloat("SD Free Space", this.G_fSDFreeSpace).commit();
            sharedPreferences.edit().putInt("Battery", this.G_nBatteryStatus).commit();
            MyApplication._instance.nAppMode = 3;
            startActivity(new Intent(this, SettingsActivity.class));
            finish();
        } else {
            this.isDoNextAction = true;
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeFail(int i) {
        this.isDoNextAction = true;
        ui_updateLoading(false);
        camRequestError(getString(R.string.L_SET_MODE_FAIL));
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetIDFail() {
        camRequestError(getString(R.string.L_GET_ID_FAIL));
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModeFail() {
        camRequestError("camDidGetModeFail");
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateFail() {
        camRequestError("camDidSetDateFail");
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetTimeFail() {
        camRequestError("camDidSetTimeFail");
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSnapshotSucc(int i) {
        this.isDoNextAction = true;
        Toast.makeText(this, getString(R.string.take_pic_succ), 0).show();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSnapshotFail(int i) {
        this.isDoNextAction = true;
        if (i == -23) {
            Toast.makeText(this, getString(R.string.nosd), 0).show();
        } else if (i == -11) {
            Toast.makeText(this, getString(R.string.SDfull), 0).show();
        } else {
            Toast.makeText(this, getString(R.string.take_pic_fail), 0).show();
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidRecordSucc(int i, int i2) {
        this.isDoNextAction = true;
        this.nRecTimerCount = 0;
        this.nRecTimerCountCur = 0;
        ui_updateLoading(false);
        if (i == 1 && !Camera_isRecording) {
            this.G_nDevMode = 1;
            Camera_isRecording = true;
            this.isUpdateRecStatus = true;
            this.isUpdateRecTimer = true;
            this.nRecTimerCount = 0;
        } else if (i == 0 && Camera_isRecording) {
            this.G_nDevMode = 1;
            Camera_isRecording = false;
            this.isUpdateRecStatus = true;
            this.isUpdateRecTimer = false;
            this.nRecTimerCount = 0;
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidRecordFail(int i, int i2) {
        this.isDoNextAction = true;
        ui_updateLoading(false);
        if (i2 == -23) {
            Toast.makeText(this, getString(R.string.nosd), 0).show();
        } else if (i2 == -11) {
            Toast.makeText(this, getString(R.string.SDfull), 0).show();
        } else {
            Toast.makeText(this, getString(R.string.record_fail), 0).show();
        }
        this.pSystemTimerHandler.sendEmptyMessageDelayed(4, 500L);
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSettingsSucc(HashMap<String, Integer> hashMap) {
        this.isDoNextAction = true;
        if (!this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
            if (hashMap.containsKey("2002")) {
                this.video_dpi = hashMap.get("2002").intValue();
            }
            if (hashMap.containsKey("1002")) {
                this.pic_dpi = hashMap.get("1002").intValue();
            }
        } else if (this.G_n9026Ret == 1) {
            if (hashMap.containsKey("9022")) {
                this.video_dpi = hashMap.get("9022").intValue();
            }
            if (hashMap.containsKey("9025")) {
                this.pic_dpi = hashMap.get("9025").intValue();
            }
        } else {
            if (hashMap.containsKey("9023")) {
                this.video_dpi = hashMap.get("9023").intValue();
            }
            if (hashMap.containsKey("9024")) {
                this.pic_dpi = hashMap.get("9024").intValue();
            }
        }
        this.cameraRequest.getCameraCmd3031();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSettingsFail(HashMap<String, Integer> hashMap) {
        this.isDoNextAction = true;
        ui_updateLoading(false);
        camRequestError("camDidGetSettingsFail");
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSDFreeSpaceSucc(int i) {
        this.G_fSDFreeSpace = i / 1024.0f;
        this.G_fSDFreeSpace /= 1024.0f;
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd3031Succ(HashMap<String, ArrayList<ArrayList<String>>> hashMap) {
        if (!this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
            ArrayList<ArrayList<String>> arrayList = hashMap.get("1002");
            this.value_1002 = arrayList.get(1);
            this.item_1002 = arrayList.get(0);
            ArrayList<ArrayList<String>> arrayList2 = hashMap.get("2002");
            this.value_2002 = arrayList2.get(1);
            this.item_2002 = arrayList2.get(0);
        } else if (this.G_n9026Ret == 1) {
            ArrayList<ArrayList<String>> arrayList3 = hashMap.get("9025");
            this.value_1002 = arrayList3.get(1);
            this.item_1002 = arrayList3.get(0);
            ArrayList<ArrayList<String>> arrayList4 = hashMap.get("9022");
            this.value_2002 = arrayList4.get(1);
            this.item_2002 = arrayList4.get(0);
        } else {
            ArrayList<ArrayList<String>> arrayList5 = hashMap.get("9024");
            this.value_1002 = arrayList5.get(1);
            this.item_1002 = arrayList5.get(0);
            ArrayList<ArrayList<String>> arrayList6 = hashMap.get("9023");
            this.value_2002 = arrayList6.get(1);
            this.item_2002 = arrayList6.get(0);
        }
        ui_updateCameraDPI();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetRetStatusSucc(int i) {
        if (i == 0 && Camera_isRecording) {
            this.G_nDevMode = 1;
            Camera_isRecording = false;
            this.isUpdateRecStatus = true;
            this.isUpdateRecTimer = false;
        } else if (i != 1 || Camera_isRecording) {
        } else {
            this.G_nDevMode = 1;
            Camera_isRecording = true;
            this.isUpdateRecStatus = true;
            this.isUpdateRecTimer = true;
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd9026Succ(int i) {
        this.G_n9026Ret = i;
        this.cameraRequest.getCameraSettings();
    }

    private void camRequestError(String str) {
        Toast.makeText(this, str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initSocketConn() {
        try {
            this.mSocket = new Socket();
            this.mSocket.connect(new InetSocketAddress("192.168.8.120", 3333));
            this.mInputS = new DataInputStream(this.mSocket.getInputStream());
        } catch (Exception e) {
            e.printStackTrace();
            handlerCamReq.sendEmptyMessage(1);
        }
    }

    private void closeSocketConn() {
        if (this.mSocket == null || !this.mSocket.isConnected()) {
            return;
        }
        try {
            this.mInputS.close();
            this.mInputS = null;
            this.mSocket.close();
            this.mSocket = null;
            this.nSocketConnect = 0;
            this.isSocketConnect = false;
            System.gc();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readSocketData(final CameraRequest cameraRequest) {
        new Thread(new Runnable() { // from class: com.ocean.gamecamerapro2.PreviewActivity.2
            @Override // java.lang.Runnable
            public void run() {
                int intValue;
                int intValue2;
                int intValue3;
                int intValue4;
                byte[] bArr = new byte[1024];
                while (PreviewActivity.this.mSocket != null && !PreviewActivity.this.mSocket.isClosed() && PreviewActivity.this.mInputS != null) {
                    PreviewActivity.this.isSocketConnect = true;
                    try {
                        int read = PreviewActivity.this.mInputS.read(bArr, 0, bArr.length);
                        if (read > 0) {
                            HashMap<String, Integer> xmlStreamDecode2 = cameraRequest.xmlStreamDecode2(new String(bArr, 0, read));
                            if (xmlStreamDecode2 != null) {
                                if (xmlStreamDecode2.containsKey("3020")) {
                                    PreviewActivity.this.nSocketConnect = 0;
                                    int intValue5 = xmlStreamDecode2.get("3020").intValue();
                                    if (intValue5 == 8 && !PreviewActivity.Camera_isRecording) {
                                        PreviewActivity.this.G_nDevMode = 1;
                                        PreviewActivity.Camera_isRecording = true;
                                        PreviewActivity.this.isUpdateRecStatus = true;
                                        PreviewActivity.this.isUpdateRecTimer = true;
                                        PreviewActivity.this.nRecTimerCount = 0;
                                    } else if (intValue5 == 9 && PreviewActivity.Camera_isRecording) {
                                        PreviewActivity.this.G_nDevMode = 1;
                                        PreviewActivity.Camera_isRecording = false;
                                        PreviewActivity.this.isUpdateRecStatus = true;
                                        PreviewActivity.this.isUpdateRecTimer = false;
                                        PreviewActivity.this.nRecTimerCount = 0;
                                    } else if (intValue5 == -7 && PreviewActivity.Camera_isRecording) {
                                        PreviewActivity.this.G_nDevMode = 1;
                                        PreviewActivity.Camera_isRecording = false;
                                        PreviewActivity.this.isUpdateRecStatus = true;
                                        PreviewActivity.this.isUpdateRecTimer = false;
                                        PreviewActivity.this.nRecTimerCount = 0;
                                        PreviewActivity.this.pSystemTimerHandler.sendEmptyMessage(34);
                                    }
                                }
                                if (xmlStreamDecode2.containsKey("9019") && (intValue4 = xmlStreamDecode2.get("9019").intValue()) != -1) {
                                    PreviewActivity.this.nSocketConnect = 0;
                                    if (intValue4 != PreviewActivity.this.G_nBatteryStatus) {
                                        PreviewActivity.this.isUpdateBatStatus = true;
                                        PreviewActivity.this.G_nBatteryStatus = intValue4;
                                    }
                                }
                                if (xmlStreamDecode2.containsKey("9020") && (intValue3 = xmlStreamDecode2.get("9020").intValue()) != -1) {
                                    PreviewActivity.this.nSocketConnect = 0;
                                    if (intValue3 != PreviewActivity.this.nUpdateSolarPower) {
                                        PreviewActivity.this.isUpdateBatStatus = true;
                                        PreviewActivity.this.nUpdateSolarPower = intValue3;
                                    }
                                }
                                if (xmlStreamDecode2.containsKey("2020") && (intValue2 = xmlStreamDecode2.get("2020").intValue()) != -1) {
                                    PreviewActivity.this.nSocketConnect = 0;
                                    PreviewActivity.this.G_nDevMode = 1;
                                    PreviewActivity.this.isUpdateRecTimer = true;
                                    PreviewActivity.this.nRecTimerCountCur = intValue2;
                                }
                                if (xmlStreamDecode2.containsKey("1013") && (intValue = xmlStreamDecode2.get("1013").intValue()) != -1) {
                                    PreviewActivity.this.G_nDevMode = 0;
                                    PreviewActivity.this.isUpdatePhotoLeft = true;
                                    PreviewActivity.this.nPhotoLeft = intValue;
                                }
                            }
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();
    }

    private void system_initTimer() {
        this.pSystemTimerTask = new TimerTask() { // from class: com.ocean.gamecamerapro2.PreviewActivity.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (PreviewActivity.this.isUpdateRecStatus) {
                    PreviewActivity.this.isUpdateRecStatus = false;
                    boolean unused = PreviewActivity.isReordingUpdate = true;
                    Message message = new Message();
                    message.what = 0;
                    PreviewActivity.this.pSystemTimerHandler.sendMessage(message);
                }
                if (PreviewActivity.this.isUpdateRecTimer && PreviewActivity.this.nRecTimerCountCur != PreviewActivity.this.nRecTimerCount) {
                    PreviewActivity.this.nRecTimerCount = PreviewActivity.this.nRecTimerCountCur;
                    Message message2 = new Message();
                    message2.what = 1;
                    PreviewActivity.this.pSystemTimerHandler.sendMessage(message2);
                }
                if (PreviewActivity.this.isUpdateBatStatus) {
                    PreviewActivity.this.isUpdateBatStatus = false;
                    Message message3 = new Message();
                    message3.what = 2;
                    PreviewActivity.this.pSystemTimerHandler.sendMessage(message3);
                }
                if (PreviewActivity.this.isUpdatePhotoLeft) {
                    PreviewActivity.this.isUpdatePhotoLeft = false;
                    Message message4 = new Message();
                    message4.what = 3;
                    PreviewActivity.this.pSystemTimerHandler.sendMessage(message4);
                }
                if (PreviewActivity.this.isSocketConnect) {
                    PreviewActivity.access$1908(PreviewActivity.this);
                    if (PreviewActivity.this.nSocketConnect > 20) {
                        PreviewActivity.this.nSocketConnect = 0;
                        PreviewActivity.handlerCamReq.sendEmptyMessage(1);
                    }
                }
                if (MyApplication._instance.pDeviceDetailObj != null) {
                    int i = MyApplication._instance.pDeviceDetailObj.tagStatus;
                    BLEDeviceObject bLEDeviceObject = MyApplication._instance.pDeviceDetailObj;
                    if (i == 2) {
                        PreviewActivity.this.pSystemTimerHandler.sendEmptyMessage(5);
                    } else {
                        PreviewActivity.this.pSystemTimerHandler.sendEmptyMessage(6);
                    }
                }
            }
        };
        this.pSystemTimerHandler = new Handler() { // from class: com.ocean.gamecamerapro2.PreviewActivity.4
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 0) {
                    PreviewActivity.this.pSystemTimerHandler.sendEmptyMessageDelayed(4, 50L);
                    if (PreviewActivity.Camera_isRecording) {
                        PreviewActivity.this.nRecTimerCount = PreviewActivity.this.nRecTimerCountCur = 1;
                        PreviewActivity.this.pSystemTimerHandler.sendEmptyMessageDelayed(1, 150L);
                    }
                } else if (message.what == 1) {
                    PreviewActivity.this.ui_updateRecordTimer(true);
                } else if (message.what == 2) {
                    PreviewActivity.this.ui_updateBattery();
                } else if (message.what == 3) {
                    PreviewActivity.this.ui_updatePhotoLeft();
                } else if (message.what == 4) {
                    PreviewActivity.this.vlcOpenStream();
                } else if (message.what == 10) {
                } else {
                    if (message.what == 20) {
                        PreviewActivity.this.cameraRequest.getCameraRecStatus();
                    } else if (message.what == 30) {
                        PreviewActivity.this.txtPlayerInfo.setText("3020 feedback yes");
                    } else if (message.what == PreviewActivity.MSG_TEST_RECORDING1) {
                        PreviewActivity.this.txtPlayerInfo.setText("3020 feedback error");
                    } else if (message.what == 32) {
                        PreviewActivity.this.txtPlayerInfo.setText("(2001)switch in 2001)");
                    } else if (message.what == 33) {
                        PreviewActivity.this.txtPlayerInfo.setText("(2001)switch in 3020)");
                    } else if (message.what == 5) {
                        int i = MyApplication._instance.pDeviceDetailObj.tagRssi;
                        if (i < -95) {
                            PreviewActivity.this.imgRssiP.setImageResource(R.drawable.img_bt05);
                            PreviewActivity.this.imgRssiL.setImageResource(R.drawable.img_bt05);
                        } else {
                            PreviewActivity.this.imgRssiP.setImageResource(R.drawable.img_bt06);
                            PreviewActivity.this.imgRssiL.setImageResource(R.drawable.img_bt06);
                        }
                        PreviewActivity.this.txtRssiL.setText(String.valueOf(i));
                        PreviewActivity.this.txtRssiP.setText(String.valueOf(i));
                        if (PreviewActivity.this.imgRssiP.getVisibility() == 8) {
                            PreviewActivity.this.imgRssiP.setVisibility(0);
                        }
                        if (PreviewActivity.this.imgRssiL.getVisibility() == 8) {
                            PreviewActivity.this.imgRssiL.setVisibility(0);
                        }
                    } else if (message.what == 6) {
                        if (PreviewActivity.this.imgRssiP.getVisibility() == 0) {
                            PreviewActivity.this.imgRssiP.setVisibility(8);
                        }
                        if (PreviewActivity.this.imgRssiL.getVisibility() == 0) {
                            PreviewActivity.this.imgRssiL.setVisibility(8);
                        }
                    } else if (message.what == 34) {
                        Toast.makeText(PreviewActivity.this, PreviewActivity.this.getString(R.string.SDfull), 0).show();
                    }
                }
            }
        };
        this.pSystemTimer = new Timer();
        this.pSystemTimer.schedule(this.pSystemTimerTask, 1000L, 1000L);
    }

    private void ui_updatePreviewView() {
        this.btnVideoModeP.setImageResource(R.drawable.video00);
        this.btnVideoModeL.setImageResource(R.drawable.video00);
        this.btnPhotoModeP.setImageResource(R.drawable.photo00);
        this.btnPhotoModeL.setImageResource(R.drawable.photo00);
        this.infoVideoTimeP.setText("");
        this.infoVideoTimeL.setText("");
        switch (this.G_nDevMode) {
            case 0:
                this.btnPhotoModeP.setImageResource(R.drawable.photo01);
                this.btnPhotoModeL.setImageResource(R.drawable.photo01);
                this.btnStartP.setImageResource(R.drawable.photo_start);
                this.btnStartL.setImageResource(R.drawable.photo_start_h);
                return;
            case 1:
                this.btnVideoModeP.setImageResource(R.drawable.video01);
                this.btnVideoModeL.setImageResource(R.drawable.video01);
                if (!Camera_isRecording) {
                    this.btnStartP.setImageResource(R.drawable.video_start);
                    this.btnStartL.setImageResource(R.drawable.video_start_h);
                    return;
                }
                this.infoVideoTimeP.setText("");
                this.infoVideoTimeL.setText("");
                this.btnStartP.setImageResource(R.drawable.video_start_pressed);
                this.btnStartL.setImageResource(R.drawable.video_start_pressed_h);
                return;
            case 2:
            case 3:
            case 4:
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ui_updateRecordTimer(boolean z) {
        if (!this.mediaPlayer.isPlaying()) {
            vlcPlayMedia();
        }
        if (z) {
            this.logBo = !this.logBo;
            String format = this.logBo ? String.format("● %02d:%02d", Integer.valueOf(this.nRecTimerCount / 60), Integer.valueOf(this.nRecTimerCount % 60)) : String.format("%02d:%02d", Integer.valueOf(this.nRecTimerCount / 60), Integer.valueOf(this.nRecTimerCount % 60));
            this.infoVideoTimeP.setTextColor(SupportMenu.CATEGORY_MASK);
            this.infoVideoTimeL.setTextColor(SupportMenu.CATEGORY_MASK);
            this.infoVideoTimeP.setText(format);
            this.infoVideoTimeL.setText(format);
        } else {
            this.infoVideoTimeP.setText("");
            this.infoVideoTimeL.setText("");
        }
        this.btnStartP.setImageResource(R.drawable.video_start_pressed);
        this.btnStartL.setImageResource(R.drawable.video_start_pressed_h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ui_updateBattery() {
        if (this.G_nBatteryStatus >= 200 && this.G_nBatteryStatus <= 206) {
            this.G_nBatteryStatus -= org.videolan.libvlc.media.MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK;
            this.txtBatteryP.setAlpha(0.0f);
            this.txtBatteryL.setAlpha(0.0f);
            if (this.G_nBatteryStatus == 0) {
                this.imgBatteryP.setImageResource(R.drawable.battery03);
                this.imgBatteryL.setImageResource(R.drawable.battery03);
            } else if (this.G_nBatteryStatus == 1 || this.G_nBatteryStatus == 2) {
                this.imgBatteryP.setImageResource(R.drawable.battery02);
                this.imgBatteryL.setImageResource(R.drawable.battery02);
            } else if (this.G_nBatteryStatus == 3) {
                this.imgBatteryP.setImageResource(R.drawable.battery01);
                this.imgBatteryL.setImageResource(R.drawable.battery01);
            } else if (this.G_nBatteryStatus == 4 || this.G_nBatteryStatus == 5) {
                this.imgBatteryP.setImageResource(R.drawable.battery00);
                this.imgBatteryL.setImageResource(R.drawable.battery00);
            } else if (this.G_nBatteryStatus == 6) {
                this.txtBatteryP.setText(getString(R.string.L_charging));
                this.txtBatteryL.setText(getString(R.string.L_charging));
                this.txtBatteryP.setAlpha(1.0f);
                this.txtBatteryL.setAlpha(1.0f);
                this.imgBatteryP.setImageResource(R.drawable.battery05);
                this.imgBatteryL.setImageResource(R.drawable.battery05);
            }
        } else if (this.G_nBatteryStatus >= 0 && this.G_nBatteryStatus <= 101) {
            this.txtBatteryP.setAlpha(1.0f);
            this.txtBatteryL.setAlpha(1.0f);
            if (this.G_nBatteryStatus >= 101) {
                this.imgBatteryP.setImageResource(R.drawable.battery05);
                this.imgBatteryL.setImageResource(R.drawable.battery05);
                this.txtBatteryP.setText("");
                this.txtBatteryL.setText("");
            } else if (this.G_nBatteryStatus <= 10) {
                this.imgBatteryP.setImageResource(R.drawable.battery00);
                this.imgBatteryL.setImageResource(R.drawable.battery00);
                this.txtBatteryP.setTextColor(SupportMenu.CATEGORY_MASK);
                this.txtBatteryL.setTextColor(SupportMenu.CATEGORY_MASK);
                this.txtBatteryP.setText(Integer.toString(this.G_nBatteryStatus) + "%");
                this.txtBatteryL.setText(Integer.toString(this.G_nBatteryStatus) + "%");
                if (!this.isLowBatteryHint) {
                    this.isLowBatteryHint = true;
                    ui_showPrompt(getString(R.string.L_LowBattery));
                }
            } else {
                this.imgBatteryP.setImageResource(R.drawable.battery03);
                this.imgBatteryL.setImageResource(R.drawable.battery03);
                this.txtBatteryP.setTextColor(-1);
                this.txtBatteryL.setTextColor(-1);
                this.txtBatteryP.setText(Integer.toString(this.G_nBatteryStatus) + "%");
                this.txtBatteryL.setText(Integer.toString(this.G_nBatteryStatus) + "%");
            }
        } else if (this.G_nBatteryStatus >= 300 && this.G_nBatteryStatus <= 401) {
            this.txtBatteryP.setAlpha(1.0f);
            this.txtBatteryL.setAlpha(1.0f);
            if (this.G_nBatteryStatus >= 401) {
                this.imgBatteryP.setImageResource(R.drawable.battery02);
                this.imgBatteryL.setImageResource(R.drawable.battery02);
                this.txtBatteryP.setText("");
                this.txtBatteryL.setText("");
            } else {
                this.imgBatteryP.setImageResource(R.drawable.battery04);
                this.imgBatteryL.setImageResource(R.drawable.battery04);
                this.txtBatteryP.setText(Integer.toString(this.G_nBatteryStatus - 300) + "%");
                this.txtBatteryL.setText(Integer.toString(this.G_nBatteryStatus - 300) + "%");
            }
        }
        if (this.nUpdateSolarPower == 1) {
            this.imgSolarP.setVisibility(0);
            this.imgSolarL.setVisibility(0);
            return;
        }
        this.imgSolarP.setVisibility(8);
        this.imgSolarL.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ui_updateLoading(boolean z) {
        if (z) {
            if (this.dlgLoading == null) {
                this.dlgLoading = MyLoadingDialog.createDialog(this);
            }
            this.dlgLoading.show();
        } else if (this.dlgLoading != null) {
            this.dlgLoading.dismiss();
        }
    }

    private void ui_updateWiFiSpeed() {
        try {
            int totalRxBytes = ((int) TrafficStats.getTotalRxBytes()) / 1024;
            lastDataSizeLog = (totalRxBytes - lastDataSizeLog) / 3;
            if (lastDataSizeLog < 0 || lastDataSizeLog > 2500) {
                lastDataSizeLog = org.videolan.libvlc.media.MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK;
            }
            String format = String.format("%dKb/s", Integer.valueOf(lastDataSizeLog));
            this.infoWiFiSpeedP.setText(format);
            this.infoWiFiSpeedL.setText(format);
            lastDataSizeLog = totalRxBytes;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void ui_updateCameraDPI() {
        if (this.G_nDevMode == 1) {
            if (this.item_2002 != null && this.value_2002 != null && this.item_2002.size() == this.value_2002.size() && this.value_2002.contains(Integer.toString(this.video_dpi))) {
                int indexOf = this.value_2002.indexOf(Integer.toString(this.video_dpi));
                this.infoCamP.setText(this.item_2002.get(indexOf));
                this.infoCamL.setText(this.item_2002.get(indexOf));
            } else {
                this.infoCamP.setText(" ");
                this.infoCamL.setText(" ");
            }
            if (!G_is4K2KShow && this.G_strProjectID.equalsIgnoreCase("RD7000_V01") && this.video_dpi == 0 && this.item_2002.get(this.video_dpi).contains("4K")) {
                new AlertDialog.Builder(this).setMessage(getString(R.string.L_4K2K_hint)).setPositiveButton(getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.PreviewActivity.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                }).show();
                G_is4K2KShow = true;
            }
        } else if (this.G_nDevMode == 0) {
            if (this.item_1002 != null && this.value_1002 != null && this.item_1002.size() == this.value_1002.size() && this.value_1002.contains(Integer.toString(this.pic_dpi))) {
                int indexOf2 = this.value_1002.indexOf(Integer.toString(this.pic_dpi));
                this.infoCamP.setText(this.item_1002.get(indexOf2));
                this.infoCamL.setText(this.item_1002.get(indexOf2));
                return;
            }
            this.infoCamP.setText(" ");
            this.infoCamL.setText(" ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ui_updatePhotoLeft() {
        if (this.G_nDevMode != 0) {
            return;
        }
        String valueOf = String.valueOf(this.nPhotoLeft);
        this.infoVideoTimeP.setTextColor(-1);
        this.infoVideoTimeL.setTextColor(-1);
        this.infoVideoTimeP.setText(valueOf);
        this.infoVideoTimeL.setText(valueOf);
    }

    public void ui_showPrompt(String str) {
        new AlertDialog.Builder(this).setMessage(str).setCancelable(false).setIcon(17301659).setPositiveButton(getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.PreviewActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }
}
