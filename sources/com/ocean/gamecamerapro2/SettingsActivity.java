package com.ocean.gamecamerapro2;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.ViewCompat;
import com.ocean.ble.BLEDeviceObject;
import com.ocean.cmdrequest.CameraRequest;
import com.ocean.wheel.StrericWheelAdapter;
import com.ocean.wheel.WheelView;
import com.ocean.widget.MyLoadingDialog;
import com.ocean.widget.PinnedSectionListView;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class SettingsActivity extends Activity implements View.OnClickListener, CameraRequest.OnCameraRequestListener {
    public static final int ITEM = 0;
    private static final int MSG_BACK_TO_SETTINGS = 9;
    private static final int MSG_GET_SETTINGS_SUCC = 8;
    private static final int MSG_KEEP_CAM_ALVIE = 20;
    private static final int MSG_LOADING_SHOW_N = 22;
    private static final int MSG_LOADING_SHOW_Y = 21;
    private static final int MSG_SET_CMD_FAIL = 7;
    private static final int MSG_SET_CMD_FAIL2 = 10;
    private static final int MSG_SET_CMD_SUCCESS = 20;
    private static final int MSG_SHOW_CMD_SELECTION = 3;
    private static final int MSG_SHOW_RESTART = 2;
    private static final int MSG_SHOW_WAIT_N = 1;
    public static final int SECTION = 1;
    public static SettingsActivity _instance;
    private PinnedAdapter aptViewSettings;
    private Button btnCancelWiFi;
    private CameraRequest cameraRequest;
    private ImageView imgBack2Preview;
    private RelativeLayout layoutBottomBar;
    private LinearLayout layoutItemPar;
    private RelativeLayout layoutTopBar;
    private String[] listSettingsCmd;
    private PinnedSectionListView listViewSettings;
    private TextView txtProgressBar;
    private ProgressBar waitSettingsLoad;
    private WheelView wheelHou;
    private WheelView wheelMin;
    private WheelView wheelSec;
    private Handler mHandler_Connect = null;
    public int firstradiobutton = 0;
    private String strSettingName = null;
    private int G_nDevMode = -1;
    private float G_fSDFreeSpace = 0.0f;
    private int nBatteryStatus = 0;
    public String G_strMcuName = null;
    public String G_strProjectID = null;
    public String G_strProjectVer = null;
    public String G_strBuildTime = null;
    public String G_strOTG = null;
    public String G_strCameraName = null;
    private HashMap<String, ParamSettings> G_paramSettings = new HashMap<>();
    private String[] listSettingsCmdRD2021 = {"9001", "1002", "9007", "2002", "9008", "2007", "9002", "9003", "9005", "9012", "9004", "9006", "9013", "9014", "9015", "9016", "9009", "2008", "9010", "9017", "3010", "3011"};
    private String[] listSettingsCmdRD7000 = {"9001", "1002", "9007", "2002", "9008", "2007", "9002", "9003", "2003", "9005", "9012", "9004", "9006", "9013", "9014", "9015", "9016", "9009", "2008", "9010", "9017", "3010", "3011"};
    private String[] listSettingsCmdRD5009PRO = {"9001", "9025", "9024", "9007", "9022", "9023", "9008", "2007", "9002", "9003", "9005", "9012", "9004", "9006", "9013", "9014", "9015", "9016", "9009", "2008", "9010", "9017", "3010", "3011"};
    private int nCurCmdPos = 0;
    private AdapterView.OnItemClickListener handlerItemClick = new AdapterView.OnItemClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (SettingsActivity.this.txtProgressBar == null || SettingsActivity.this.txtProgressBar.getVisibility() != 0) {
                if (SettingsActivity.this.layoutItemPar.getVisibility() == 0) {
                    SettingsActivity.this.layoutItemPar.setVisibility(8);
                    return;
                }
                PinnedAdapter.ViewHolder viewHolder = (PinnedAdapter.ViewHolder) view.getTag();
                if (!viewHolder.isCanSelected || viewHolder.type == 1) {
                    return;
                }
                SettingsActivity.this.nCurCmdPos = i;
                if (SettingsActivity.this.nCurCmdPos < SettingsActivity.this.listSettingsCmd.length) {
                    ParamSettings paramSettings = (ParamSettings) SettingsActivity.this.G_paramSettings.get(SettingsActivity.this.listSettingsCmd[SettingsActivity.this.nCurCmdPos]);
                    int parseInt = Integer.parseInt(paramSettings.ParamCmdID);
                    if (parseInt == 9010) {
                        SettingsActivity.this.system_setCamName(paramSettings.ParamName, paramSettings.ParamCmdID, SettingsActivity.this.G_strCameraName);
                    } else if (parseInt == 3011) {
                        SettingsActivity.this.system_setCmd(paramSettings.ParamName, paramSettings.ParamCmdID);
                    } else if (parseInt == 3010) {
                        SettingsActivity.this.system_setCmd(paramSettings.ParamName, paramSettings.ParamCmdID);
                    } else if (parseInt == 9008) {
                        SettingsActivity.this.wheel_set9008(i);
                    } else if (parseInt == 9002) {
                        SettingsActivity.this.wheel_set9002(i);
                    } else if (parseInt == 9004) {
                        SettingsActivity.this.wheel_set9004(i);
                    } else if (parseInt == 9013 || parseInt == 9014 || parseInt == 9015 || parseInt == 9016) {
                        SettingsActivity.this.wheel_set901x(i);
                    } else {
                        SettingsActivity.this.handleShowCmdParamers();
                    }
                    SettingsActivity.this.aptViewSettings.notifyDataSetChanged();
                }
            }
        }
    };
    private RadioGroup.OnCheckedChangeListener pickerRadioItems = new RadioGroup.OnCheckedChangeListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.4
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            if (SettingsActivity.this.txtProgressBar == null || SettingsActivity.this.txtProgressBar.getVisibility() != 0) {
                ParamSettings paramSettings = (ParamSettings) SettingsActivity.this.G_paramSettings.get(SettingsActivity.this.listSettingsCmd[SettingsActivity.this.nCurCmdPos]);
                if (i == paramSettings.ParamValue.size()) {
                    SettingsActivity.this.layoutItemPar.removeAllViews();
                    SettingsActivity.this.layoutItemPar.setVisibility(8);
                } else if (i >= 0 || i < paramSettings.ParamValue.size()) {
                    if (SettingsActivity.this.firstradiobutton != 0) {
                        SettingsActivity.this.mHandler_Connect.sendEmptyMessage(21);
                        SettingsActivity.this.nKeepCamAlvieCount = 0;
                        SettingsActivity.this.cameraRequest.sendCmd(-2, paramSettings.ParamCmdID, paramSettings.ParamValue.get(i));
                        return;
                    }
                    SettingsActivity.this.firstradiobutton = 1;
                }
            }
        }
    };
    private String[] houContent = null;
    private String[] minContent = null;
    private String[] secContent = null;
    private int nPickSec = 0;
    private int nPickMin = 0;
    private MyLoadingDialog dlgLoading = null;
    private Timer pSystemTimer = null;
    private TimerTask pSystemTimerTask = null;
    private Handler pSystemTimerHandler = null;
    private boolean isKeepCamAlive = true;
    private int nKeepCamAlvieCount = 0;

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetBatteryFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd3031Fail() {
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
    public void camDidGetModeSucc(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModelIDFail() {
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
    public void camDidRecordFail(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidRecordSucc(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateSucc() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeFail(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetTimeFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetTimeSucc() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSnapshotFail(int i) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSnapshotSucc(int i) {
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
    }

    static /* synthetic */ int access$008(SettingsActivity settingsActivity) {
        int i = settingsActivity.nKeepCamAlvieCount;
        settingsActivity.nKeepCamAlvieCount = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ParamSettings {
        public String ParamCmdID;
        public ArrayList<String> ParamItem;
        public String ParamName;
        public String ParamSelect;
        public String ParamType;
        public String ParamUrl;
        public ArrayList<String> ParamValue;

        private ParamSettings() {
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.activity_setting);
        _instance = this;
        SharedPreferences sharedPreferences = getSharedPreferences(getString(R.string.app_name), 0);
        this.G_strMcuName = sharedPreferences.getString("Mcu Name", "error");
        this.G_strProjectID = sharedPreferences.getString("Project ID", "error");
        this.G_strProjectVer = sharedPreferences.getString("Project Ver", "error");
        this.G_strBuildTime = sharedPreferences.getString("Build Time", "error");
        this.G_strOTG = sharedPreferences.getString("OTG", "error");
        this.G_nDevMode = sharedPreferences.getInt("Camera Mode", 1);
        this.G_fSDFreeSpace = sharedPreferences.getFloat("SD Free Space", 0.0f);
        if (this.G_strProjectID.equalsIgnoreCase("RD7000_V01")) {
            this.G_strProjectID = "RD7000";
        }
        if (this.G_strProjectID.equalsIgnoreCase("RD7000")) {
            this.listSettingsCmd = (String[]) this.listSettingsCmdRD7000.clone();
        } else if (this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
            this.listSettingsCmd = (String[]) this.listSettingsCmdRD5009PRO.clone();
        } else {
            this.listSettingsCmd = (String[]) this.listSettingsCmdRD2021.clone();
        }
        initCameraRequest();
        initSettingsMiddleView();
        initSettingsTopBar();
        initSettingsBottomBar();
        initSettingsListView();
        CreatMessageHander();
        system_initTimer();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isKeepCamAlive = true;
        this.nKeepCamAlvieCount = 0;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        Log.e("ncyc", "setting - onDestroy");
        super.onDestroy();
        this.isKeepCamAlive = false;
        if (this.mHandler_Connect != null) {
            this.mHandler_Connect.removeCallbacksAndMessages(null);
        }
        if (this.G_paramSettings != null) {
            this.G_paramSettings.clear();
            this.G_paramSettings = null;
        }
        _instance = null;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.txtProgressBar == null || this.txtProgressBar.getVisibility() != 0) {
            if (i == 4) {
                doBack();
                return true;
            }
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    public void system_setCmd(String str, final String str2) {
        new AlertDialog.Builder(this).setTitle(str).setNegativeButton(R.string.no, (DialogInterface.OnClickListener) null).setPositiveButton(getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SettingsActivity.this.nKeepCamAlvieCount = 0;
                SettingsActivity.this.cameraRequest.sendCmd(-1, str2, "1");
            }
        }).show();
    }

    public void handleShowCmdParamers() {
        sendMessage(3);
    }

    public String getWiFiName() {
        NetworkInfo networkInfo = ((ConnectivityManager) getSystemService("connectivity")).getNetworkInfo(1);
        if (networkInfo == null || !networkInfo.isConnected()) {
            return "No Cameras Connected";
        }
        getApplicationContext();
        WifiInfo connectionInfo = ((WifiManager) getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo == null || connectionInfo.getSSID() == null) {
            return "No Cameras Connected";
        }
        String ssid = connectionInfo.getSSID();
        return ssid.substring(1, ssid.length() - 1);
    }

    private void initSettingsListView() {
        this.aptViewSettings = new PinnedAdapter(this);
        this.listViewSettings = (PinnedSectionListView) findViewById(R.id.listView);
        this.listViewSettings.setAdapter((ListAdapter) this.aptViewSettings);
        this.listViewSettings.setOnItemClickListener(this.handlerItemClick);
        this.listViewSettings.setShadowVisible(false);
        registerForContextMenu(this.listViewSettings);
    }

    /* loaded from: classes.dex */
    public class PinnedAdapter extends BaseAdapter implements PinnedSectionListView.PinnedSectionListAdapter {
        public ViewHolder holder;
        private LayoutInflater inflater;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        @Override // com.ocean.widget.PinnedSectionListView.PinnedSectionListAdapter
        public boolean isItemViewTypePinned(int i) {
            return i == 1;
        }

        public PinnedAdapter(Context context) {
            this.inflater = LayoutInflater.from(context);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (SettingsActivity.this.G_paramSettings.size() != 0) {
                return SettingsActivity.this.G_strProjectID.equalsIgnoreCase("RD7000") ? SettingsActivity.this.G_paramSettings.size() + 2 : SettingsActivity.this.G_paramSettings.size() + 1;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2;
            this.holder = null;
            if (view == null) {
                this.holder = new ViewHolder();
                view2 = this.inflater.inflate(R.layout.item_setting_list, (ViewGroup) null);
                view2.setTag(this.holder);
                this.holder.txtCmdName = (TextView) view2.findViewById(R.id.txt_cmd_name);
                this.holder.txtCmdStatus = (TextView) view2.findViewById(R.id.txt_cmd_status);
                this.holder.imgArrowRight = (ImageView) view2.findViewById(R.id.img_arrow_r);
            } else {
                this.holder = (ViewHolder) view.getTag();
                view2 = view;
            }
            this.holder.txtCmdName.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            this.holder.txtCmdStatus.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            this.holder.imgArrowRight.setVisibility(0);
            this.holder.isCanSelected = true;
            if (i != SettingsActivity.this.G_paramSettings.size()) {
                if (i != SettingsActivity.this.G_paramSettings.size() + 1 || !SettingsActivity.this.G_strProjectID.equalsIgnoreCase("RD7000")) {
                    ParamSettings paramSettings = (ParamSettings) SettingsActivity.this.G_paramSettings.get(SettingsActivity.this.listSettingsCmd[i]);
                    String str = paramSettings.ParamName;
                    ArrayList<String> arrayList = paramSettings.ParamItem;
                    ArrayList<String> arrayList2 = paramSettings.ParamValue;
                    int parseInt = Integer.parseInt(paramSettings.ParamCmdID);
                    int parseInt2 = Integer.parseInt(paramSettings.ParamSelect);
                    if (str.equalsIgnoreCase("title")) {
                        this.holder.txtCmdName.setText(arrayList.get(0));
                        this.holder.type = 1;
                    } else {
                        this.holder.txtCmdName.setText(str);
                        this.holder.type = 0;
                        if (parseInt == 9002) {
                            int parseInt3 = Integer.parseInt(((ParamSettings) SettingsActivity.this.G_paramSettings.get("9001")).ParamSelect);
                            if (parseInt3 == 0 && parseInt2 < 5) {
                                paramSettings.ParamSelect = "5";
                            } else if (parseInt3 > 0 && parseInt2 < 10) {
                                paramSettings.ParamSelect = "10";
                            }
                            parseInt2 = Integer.parseInt(paramSettings.ParamSelect);
                        }
                        if (parseInt == 9008 || parseInt == 9002 || parseInt == 9004) {
                            int i2 = parseInt2 / 3600;
                            int i3 = (parseInt2 % 3600) / 60;
                            int i4 = parseInt2 % 60;
                            if (parseInt == 9004) {
                                paramSettings.ParamItem.set(0, String.format("%02d:%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
                            } else if (parseInt == 9008 || parseInt == 9002) {
                                paramSettings.ParamItem.set(0, String.format("%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i4)));
                            }
                            this.holder.txtCmdStatus.setText(paramSettings.ParamItem.get(0));
                        } else if (parseInt == 9013 || parseInt == 9014 || parseInt == 9015 || parseInt == 9016) {
                            paramSettings.ParamItem.set(0, String.format("%02d:%02d", Integer.valueOf(parseInt2 / 60), Integer.valueOf(parseInt2 % 60)));
                            this.holder.txtCmdStatus.setText(paramSettings.ParamItem.get(0));
                        } else if (parseInt == 9010) {
                            this.holder.txtCmdStatus.setText(SettingsActivity.this.G_strCameraName);
                        } else if (parseInt == 3010 || parseInt == 3011) {
                            this.holder.txtCmdStatus.setText("");
                            this.holder.imgArrowRight.setVisibility(4);
                        } else if (paramSettings.ParamSelect != null && arrayList2 != null) {
                            int indexOf = arrayList2.indexOf(paramSettings.ParamSelect);
                            if (indexOf >= 0 && indexOf < arrayList.size()) {
                                this.holder.txtCmdStatus.setText(paramSettings.ParamItem.get(indexOf));
                            } else {
                                this.holder.txtCmdStatus.setText("error");
                            }
                        }
                        if (parseInt == 9002 || parseInt == 9003) {
                            if (Integer.parseInt(((ParamSettings) SettingsActivity.this.G_paramSettings.get("9012")).ParamSelect) == 1) {
                                this.holder.isCanSelected = false;
                            }
                        } else if (parseInt == 9004) {
                            if (Integer.parseInt(((ParamSettings) SettingsActivity.this.G_paramSettings.get("9012")).ParamSelect) == 0) {
                                this.holder.isCanSelected = false;
                            }
                        } else if ((parseInt == 9013 || parseInt == 9014 || parseInt == 9015 || parseInt == 9016) && Integer.parseInt(((ParamSettings) SettingsActivity.this.G_paramSettings.get("9006")).ParamSelect) == 0) {
                            this.holder.isCanSelected = false;
                        }
                    }
                } else {
                    String str2 = "";
                    if (SettingsActivity.this.nBatteryStatus >= 101) {
                        this.holder.isCanSelected = false;
                    } else {
                        str2 = Integer.toString(SettingsActivity.this.nBatteryStatus) + "%";
                    }
                    this.holder.txtCmdName.setText(SettingsActivity.this.getString(R.string.L_setting_3019_0));
                    this.holder.txtCmdStatus.setText(str2);
                    this.holder.imgArrowRight.setVisibility(4);
                }
            } else {
                DecimalFormat decimalFormat = new DecimalFormat("##0.0");
                this.holder.txtCmdName.setText(SettingsActivity.this.getString(R.string.L_setting_3017_0));
                this.holder.txtCmdStatus.setText(decimalFormat.format(SettingsActivity.this.G_fSDFreeSpace) + "G");
                this.holder.imgArrowRight.setVisibility(4);
            }
            if (this.holder.isCanSelected) {
                this.holder.txtCmdName.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                this.holder.txtCmdStatus.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            } else {
                this.holder.txtCmdName.setTextColor(-7829368);
                this.holder.txtCmdStatus.setTextColor(-7829368);
            }
            if (this.holder.type == 0) {
                view2.setBackgroundColor(-1);
                this.holder.txtCmdName.setGravity(3);
                this.holder.txtCmdName.setTextSize(17.0f);
                this.holder.txtCmdStatus.setVisibility(0);
            } else {
                view2.setBackgroundColor(-986896);
                this.holder.txtCmdName.setTextColor(-7566196);
                this.holder.txtCmdName.setGravity(17);
                this.holder.txtCmdName.setTextSize(14.0f);
                this.holder.txtCmdStatus.setVisibility(4);
            }
            return view2;
        }

        /* loaded from: classes.dex */
        public class ViewHolder {
            ImageView imgArrowRight;
            boolean isCanSelected;
            TextView txtCmdName;
            TextView txtCmdStatus;
            int type;

            public ViewHolder() {
            }
        }
    }

    public void CreatMessageHander() {
        this.mHandler_Connect = new Handler() { // from class: com.ocean.gamecamerapro2.SettingsActivity.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                switch (i) {
                    case 1:
                        SettingsActivity.this.dlgLoading.dismiss();
                        SettingsActivity.this.txtProgressBar.setVisibility(4);
                        SettingsActivity.this.layoutItemPar.setVisibility(8);
                        return;
                    case 2:
                        Toast.makeText(SettingsActivity._instance, SettingsActivity.this.getString(R.string.restart_exe), 0).show();
                        return;
                    case 3:
                        SettingsActivity.this.setSelectionView();
                        return;
                    default:
                        switch (i) {
                            case 7:
                                SettingsActivity.this.txtProgressBar.setVisibility(0);
                                SettingsActivity.this.txtProgressBar.setText(SettingsActivity.this.getString(R.string.failure));
                                return;
                            case 8:
                                SettingsActivity.this.aptViewSettings.notifyDataSetChanged();
                                return;
                            case 9:
                                SettingsActivity.this.dlgLoading.dismiss();
                                SettingsActivity.this.txtProgressBar.setVisibility(4);
                                SettingsActivity.this.layoutItemPar.setVisibility(8);
                                return;
                            case 10:
                                SettingsActivity.this.dlgLoading.dismiss();
                                SettingsActivity.this.txtProgressBar.setVisibility(4);
                                SettingsActivity.this.layoutItemPar.setVisibility(8);
                                SettingsActivity.this.finish();
                                MyApplication._instance.nAppMode = 1;
                                return;
                            default:
                                switch (i) {
                                    case 20:
                                        SettingsActivity.this.getItemsStatus();
                                        SettingsActivity.this.txtProgressBar.setVisibility(0);
                                        SettingsActivity.this.txtProgressBar.setText(SettingsActivity.this.getString(R.string.success));
                                        return;
                                    case 21:
                                        SettingsActivity.this.dlgLoading.show();
                                        return;
                                    case 22:
                                        SettingsActivity.this.dlgLoading.dismiss();
                                        return;
                                    default:
                                        return;
                                }
                        }
                }
            }
        };
    }

    public void sendMessage(int i) {
        Message message = new Message();
        message.what = i;
        message.obj = null;
        if (this.mHandler_Connect != null) {
            this.mHandler_Connect.sendMessage(message);
        }
    }

    public void sendMessage(int i, int i2) {
        Message message = new Message();
        message.what = i;
        message.arg1 = i2;
        if (this.mHandler_Connect != null) {
            this.mHandler_Connect.sendMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelectionView() {
        this.layoutItemPar.removeAllViews();
        this.layoutItemPar.setVisibility(0);
        this.firstradiobutton = 0;
        Context applicationContext = getApplicationContext();
        RadioGroup radioGroup = new RadioGroup(this);
        radioGroup.setOnCheckedChangeListener(this.pickerRadioItems);
        ParamSettings paramSettings = this.G_paramSettings.get(this.listSettingsCmd[this.nCurCmdPos]);
        int size = paramSettings.ParamItem.size();
        for (int i = 0; i < size; i++) {
            RadioButton radioButton = (RadioButton) LayoutInflater.from(applicationContext).inflate(R.layout.radiobutton_xml, (ViewGroup) null);
            radioButton.setText(paramSettings.ParamItem.get(i));
            radioButton.setId(i);
            radioButton.setPadding(2, 2, 40, 2);
            radioButton.setBackgroundResource(R.drawable.setting_item_mid);
            if (i == paramSettings.ParamValue.indexOf(paramSettings.ParamSelect)) {
                radioButton.setChecked(true);
            } else {
                radioButton.setChecked(false);
            }
            radioGroup.addView(radioButton);
        }
        if (Integer.parseInt(paramSettings.ParamCmdID) != 3010 && Integer.parseInt(paramSettings.ParamCmdID) != 3011) {
            RadioButton radioButton2 = (RadioButton) LayoutInflater.from(applicationContext).inflate(R.layout.radiobutton_down_xml, (ViewGroup) null);
            radioButton2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            radioButton2.setId(size);
            radioButton2.setPadding(2, 2, 2, 2);
            radioButton2.setBackgroundResource(R.drawable.setting_item_down);
            radioButton2.setChecked(false);
            radioGroup.addView(radioButton2);
        }
        this.layoutItemPar.addView(radioGroup);
    }

    private void initSettingsCmdItems() {
        if (this.G_paramSettings.size() != 0) {
            this.G_paramSettings.clear();
        }
        if (!this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
            setSettingsCmd9001();
            setSettingsCmd1002();
            setSettingsCmd9007();
            setSettingsCmd2002();
            setSettingsCmd9008();
            setSettingsCmd9002();
            setSettingsCmd9003();
            if (this.G_strProjectID.equalsIgnoreCase("RD7000")) {
                setSettingsCmd2003();
            }
            setSettingsCmd9005();
            setSettingsCmd9012();
            setSettingsCmd9004();
            setSettingsCmd9006();
            setSettingsCmd9013();
            setSettingsCmd9014();
            setSettingsCmd9015();
            setSettingsCmd9016();
            setSettingsCmd2007();
            setSettingsCmd9009();
            setSettingsCmd2008();
            setSettingsCmd9010();
            setSettingsCmd9017();
            setSettingsCmd3010();
            setSettingsCmd3011();
            return;
        }
        setSettingsCmd9001();
        setSettingsCmd9025();
        setSettingsCmd9024();
        setSettingsCmd9007();
        setSettingsCmd9022();
        setSettingsCmd9023();
        setSettingsCmd9008();
        setSettingsCmd9002();
        setSettingsCmd9003();
        setSettingsCmd9005();
        setSettingsCmd9012();
        setSettingsCmd9004();
        setSettingsCmd9006();
        setSettingsCmd9013();
        setSettingsCmd9014();
        setSettingsCmd9015();
        setSettingsCmd9016();
        setSettingsCmd2007();
        setSettingsCmd9009();
        setSettingsCmd2008();
        setSettingsCmd9010();
        setSettingsCmd9017();
        setSettingsCmd3010();
        setSettingsCmd3011();
    }

    public void getItemsStatus() {
        this.nKeepCamAlvieCount = 0;
        this.cameraRequest.getCameraSettings();
    }

    private void setSettingsCmd9001() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9001";
        paramSettings.ParamName = getString(R.string.L_setting_9001_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9001&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.5
            {
                add(SettingsActivity.this.getString(R.string.L_setting_9001_1));
                add(SettingsActivity.this.getString(R.string.L_setting_9001_2));
                add(SettingsActivity.this.getString(R.string.L_setting_9001_3));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.6
            {
                add("0");
                add("1");
                add("2");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd1002() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "1002";
        paramSettings.ParamName = getString(R.string.L_setting_1002_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=1002&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9007() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9007";
        paramSettings.ParamName = getString(R.string.L_setting_9007_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9007&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.7
            {
                add(SettingsActivity.this.getString(R.string.L_setting_9007_1));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_2));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_3));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_4));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_5));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_6));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_7));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_8));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_9));
                add(SettingsActivity.this.getString(R.string.L_setting_9007_10));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.8
            {
                add("0");
                add("1");
                add("2");
                add("3");
                add("4");
                add("5");
                add("6");
                add("7");
                add("8");
                add("9");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd2002() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "2002";
        paramSettings.ParamName = getString(R.string.L_setting_2002_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=2002&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9008() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9008";
        paramSettings.ParamName = getString(R.string.L_setting_9008_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9008&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.9
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.10
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9002() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9002";
        paramSettings.ParamName = getString(R.string.L_setting_9002_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9002&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.11
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.12
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9003() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9003";
        paramSettings.ParamName = getString(R.string.L_setting_9003_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9003&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.13
            {
                add(SettingsActivity.this.getString(R.string.L_setting_9003_1));
                add(SettingsActivity.this.getString(R.string.L_setting_9003_2));
                add(SettingsActivity.this.getString(R.string.L_setting_9003_3));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.14
            {
                add("0");
                add("1");
                add("2");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd2003() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "2003";
        paramSettings.ParamName = getString(R.string.L_setting_2003_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=2003&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.15
            {
                add(SettingsActivity.this.getString(R.string.L_setting_off));
                add(SettingsActivity.this.getString(R.string.L_setting_on));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.16
            {
                add("0");
                add("1");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9005() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9005";
        paramSettings.ParamName = getString(R.string.L_setting_9005_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9005&par=";
        paramSettings.ParamType = "video";
        if (this.G_strProjectID.equalsIgnoreCase("RD7000") || this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
            paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.17
                {
                    add(SettingsActivity.this.getString(R.string.L_setting_9005_1));
                    add(SettingsActivity.this.getString(R.string.L_setting_9005_5));
                    add(SettingsActivity.this.getString(R.string.L_setting_9005_6));
                    add(SettingsActivity.this.getString(R.string.L_setting_9005_4));
                }
            };
            paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.18
                {
                    add("0");
                    add("1");
                    add("2");
                    add("3");
                }
            };
        } else {
            paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.19
                {
                    add(SettingsActivity.this.getString(R.string.L_setting_9005_1));
                    add(SettingsActivity.this.getString(R.string.L_setting_9005_3));
                    add(SettingsActivity.this.getString(R.string.L_setting_9005_4));
                }
            };
            paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.20
                {
                    add("0");
                    add("1");
                    add("2");
                }
            };
        }
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9012() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9012";
        paramSettings.ParamName = getString(R.string.L_setting_9012_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9012&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.21
            {
                add(SettingsActivity.this.getString(R.string.L_setting_off));
                add(SettingsActivity.this.getString(R.string.L_setting_on));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.22
            {
                add("0");
                add("1");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9004() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9004";
        paramSettings.ParamName = getString(R.string.L_setting_9004_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9004&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.23
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.24
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9006() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9006";
        paramSettings.ParamName = getString(R.string.L_setting_9006_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9006&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.25
            {
                add(SettingsActivity.this.getString(R.string.L_setting_off));
                add(SettingsActivity.this.getString(R.string.L_setting_on));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.26
            {
                add("0");
                add("1");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9013() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9013";
        paramSettings.ParamName = getString(R.string.L_setting_9013_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9013&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.27
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.28
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9014() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9014";
        paramSettings.ParamName = getString(R.string.L_setting_9014_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9014&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.29
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.30
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9015() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9015";
        paramSettings.ParamName = getString(R.string.L_setting_9015_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9015&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.31
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.32
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9016() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9016";
        paramSettings.ParamName = getString(R.string.L_setting_9016_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9016&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.33
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.34
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd2007() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "2007";
        paramSettings.ParamName = getString(R.string.L_setting_2007_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=2007&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.35
            {
                add(SettingsActivity.this.getString(R.string.L_setting_off));
                add(SettingsActivity.this.getString(R.string.L_setting_on));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.36
            {
                add("0");
                add("1");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9009() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9009";
        paramSettings.ParamName = getString(R.string.L_setting_9009_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9009&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.37
            {
                add(SettingsActivity.this.getString(R.string.L_setting_9009_1));
                add(SettingsActivity.this.getString(R.string.L_setting_9009_2));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.38
            {
                add("0");
                add("1");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd2008() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "2008";
        paramSettings.ParamName = getString(R.string.L_setting_2008_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=2008&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.39
            {
                add(SettingsActivity.this.getString(R.string.L_setting_off));
                add(SettingsActivity.this.getString(R.string.L_setting_on));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.40
            {
                add("0");
                add("1");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9010() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9010";
        paramSettings.ParamName = getString(R.string.L_setting_9010_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9010&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.41
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.42
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9017() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9017";
        paramSettings.ParamName = getString(R.string.L_setting_9017_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9017&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.43
            {
                add(SettingsActivity.this.getString(R.string.L_setting_9017_1));
                add(SettingsActivity.this.getString(R.string.L_setting_9017_2));
                add(SettingsActivity.this.getString(R.string.L_setting_9017_3));
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.44
            {
                add("0");
                add("1");
                add("2");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd3010() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "3010";
        paramSettings.ParamName = getString(R.string.L_setting_3010_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=3010&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.45
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.46
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd3011() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "3011";
        paramSettings.ParamName = getString(R.string.L_setting_3011_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=3011&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.47
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.48
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd3017() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "3017";
        paramSettings.ParamName = getString(R.string.L_setting_3017_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=3017";
        paramSettings.ParamType = "video";
        paramSettings.ParamItem = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.49
            {
                add("");
            }
        };
        paramSettings.ParamValue = new ArrayList<String>() { // from class: com.ocean.gamecamerapro2.SettingsActivity.50
            {
                add("0");
            }
        };
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9025() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9025";
        paramSettings.ParamName = getString(R.string.L_setting_9025_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9025&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9024() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9024";
        paramSettings.ParamName = getString(R.string.L_setting_9024_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9024&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9022() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9022";
        paramSettings.ParamName = getString(R.string.L_setting_9022_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9022&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void setSettingsCmd9023() {
        ParamSettings paramSettings = new ParamSettings();
        paramSettings.ParamCmdID = "9023";
        paramSettings.ParamName = getString(R.string.L_setting_9023_0);
        paramSettings.ParamUrl = "http://192.168.8.120/?custom=1&cmd=9023&par=";
        paramSettings.ParamType = "video";
        paramSettings.ParamSelect = "255";
        this.G_paramSettings.put(paramSettings.ParamCmdID, paramSettings);
    }

    private void wheel_initMMSS(int i) {
        if (i == 0) {
            this.minContent = new String[4];
            for (int i2 = 0; i2 < this.minContent.length; i2++) {
                String[] strArr = this.minContent;
                strArr[i2] = String.valueOf(i2) + " " + getString(R.string.L_Min);
            }
        } else {
            this.minContent = new String[60];
            for (int i3 = 0; i3 < this.minContent.length; i3++) {
                String[] strArr2 = this.minContent;
                strArr2[i3] = String.valueOf(i3) + " " + getString(R.string.L_Min);
            }
        }
        this.secContent = new String[60];
        for (int i4 = 0; i4 < this.secContent.length; i4++) {
            String[] strArr3 = this.secContent;
            strArr3[i4] = String.valueOf(i4) + " " + getString(R.string.L_Sec);
        }
    }

    private void wheel_initHHMMSS() {
        this.houContent = new String[24];
        for (int i = 0; i < this.houContent.length; i++) {
            String[] strArr = this.houContent;
            strArr[i] = String.valueOf(i) + " " + getString(R.string.L_Hou);
        }
        this.minContent = new String[60];
        for (int i2 = 0; i2 < this.minContent.length; i2++) {
            String[] strArr2 = this.minContent;
            strArr2[i2] = String.valueOf(i2) + " " + getString(R.string.L_Min);
        }
        this.secContent = new String[60];
        for (int i3 = 0; i3 < this.secContent.length; i3++) {
            String[] strArr3 = this.secContent;
            strArr3[i3] = String.valueOf(i3) + " " + getString(R.string.L_Sec);
        }
    }

    private void wheel_initHHMM() {
        this.houContent = new String[24];
        for (int i = 0; i < this.houContent.length; i++) {
            String[] strArr = this.houContent;
            strArr[i] = String.valueOf(i) + " " + getString(R.string.L_Hou);
        }
        this.minContent = new String[60];
        for (int i2 = 0; i2 < this.minContent.length; i2++) {
            String[] strArr2 = this.minContent;
            strArr2[i2] = String.valueOf(i2) + " " + getString(R.string.L_Min);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wheel_set9008(int i) {
        wheel_initMMSS(0);
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.layout_wheel_mmss, (ViewGroup) null);
        this.wheelMin = (WheelView) inflate.findViewById(R.id.minutewheel);
        this.wheelSec = (WheelView) inflate.findViewById(R.id.secondwheel);
        this.wheelMin.setAdapter(new StrericWheelAdapter(this.minContent));
        this.wheelSec.setAdapter(new StrericWheelAdapter(this.secContent));
        this.wheelMin.setCurrentItem(0);
        this.wheelSec.setCurrentItem(0);
        this.wheelMin.setCyclic(true);
        this.wheelSec.setCyclic(true);
        this.wheelMin.setInterpolator(new AnticipateOvershootInterpolator());
        this.wheelSec.setInterpolator(new AnticipateOvershootInterpolator());
        final ParamSettings paramSettings = this.G_paramSettings.get("9008");
        if (i != -1) {
            int parseInt = Integer.parseInt(paramSettings.ParamSelect);
            this.wheelMin.setCurrentItem(parseInt / 60);
            this.wheelSec.setCurrentItem(parseInt % 60);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(inflate);
        builder.setTitle(paramSettings.ParamName);
        builder.setPositiveButton(getString(R.string.label_ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.51
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                String str;
                SettingsActivity.this.nPickSec = (SettingsActivity.this.wheelMin.getCurrentItem() * 60) + SettingsActivity.this.wheelSec.getCurrentItem();
                if (SettingsActivity.this.nPickSec < 5) {
                    SettingsActivity.this.nPickSec = 5;
                    str = SettingsActivity.this.getString(R.string.L_Minimum) + " = " + String.valueOf(SettingsActivity.this.nPickSec) + " " + SettingsActivity.this.getString(R.string.L_Sec);
                } else if (SettingsActivity.this.nPickSec > 180) {
                    SettingsActivity.this.nPickSec = 180;
                    str = SettingsActivity.this.getString(R.string.L_Maximum) + " = " + String.valueOf(SettingsActivity.this.nPickSec) + " " + SettingsActivity.this.getString(R.string.L_Sec);
                } else {
                    str = null;
                }
                if (str != null) {
                    new AlertDialog.Builder(SettingsActivity.this).setTitle((CharSequence) null).setIcon((Drawable) null).setMessage(str).setPositiveButton(SettingsActivity.this.getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.51.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i3) {
                        }
                    }).show();
                }
                SettingsActivity.this.nKeepCamAlvieCount = 0;
                SettingsActivity.this.cameraRequest.sendCmd(-1, paramSettings.ParamCmdID, String.valueOf(SettingsActivity.this.nPickSec));
                dialogInterface.cancel();
            }
        });
        builder.setNegativeButton(getString(R.string.label_cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.52
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wheel_set9002(int i) {
        wheel_initMMSS(1);
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.layout_wheel_mmss, (ViewGroup) null);
        this.wheelMin = (WheelView) inflate.findViewById(R.id.minutewheel);
        this.wheelSec = (WheelView) inflate.findViewById(R.id.secondwheel);
        this.wheelMin.setAdapter(new StrericWheelAdapter(this.minContent));
        this.wheelSec.setAdapter(new StrericWheelAdapter(this.secContent));
        this.wheelMin.setCurrentItem(0);
        this.wheelSec.setCurrentItem(0);
        this.wheelMin.setCyclic(true);
        this.wheelSec.setCyclic(true);
        this.wheelMin.setInterpolator(new AnticipateOvershootInterpolator());
        this.wheelSec.setInterpolator(new AnticipateOvershootInterpolator());
        final ParamSettings paramSettings = this.G_paramSettings.get("9002");
        if (i != -1) {
            int parseInt = Integer.parseInt(paramSettings.ParamSelect);
            this.wheelMin.setCurrentItem(parseInt / 60);
            this.wheelSec.setCurrentItem(parseInt % 60);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(inflate);
        builder.setTitle(paramSettings.ParamName);
        builder.setPositiveButton(getString(R.string.label_ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.53
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                String str;
                SettingsActivity.this.nPickSec = (SettingsActivity.this.wheelMin.getCurrentItem() * 60) + SettingsActivity.this.wheelSec.getCurrentItem();
                if (!((ParamSettings) SettingsActivity.this.G_paramSettings.get("9001")).ParamSelect.equalsIgnoreCase("0") || SettingsActivity.this.nPickSec >= 5) {
                    if (((ParamSettings) SettingsActivity.this.G_paramSettings.get("9001")).ParamSelect.equalsIgnoreCase("0") || SettingsActivity.this.nPickSec >= 10) {
                        str = null;
                    } else {
                        SettingsActivity.this.nPickSec = 10;
                        str = SettingsActivity.this.getString(R.string.L_Minimum) + " = " + String.valueOf(SettingsActivity.this.nPickSec) + " " + SettingsActivity.this.getString(R.string.L_Sec);
                    }
                } else {
                    SettingsActivity.this.nPickSec = 5;
                    str = SettingsActivity.this.getString(R.string.L_Minimum) + " = " + String.valueOf(SettingsActivity.this.nPickSec) + " " + SettingsActivity.this.getString(R.string.L_Sec);
                }
                if (str != null) {
                    new AlertDialog.Builder(SettingsActivity.this).setTitle((CharSequence) null).setIcon((Drawable) null).setMessage(str).setPositiveButton(SettingsActivity.this.getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.53.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i3) {
                        }
                    }).show();
                }
                SettingsActivity.this.nKeepCamAlvieCount = 0;
                SettingsActivity.this.cameraRequest.sendCmd(-1, paramSettings.ParamCmdID, String.valueOf(SettingsActivity.this.nPickSec));
                dialogInterface.cancel();
            }
        });
        builder.setNegativeButton(getString(R.string.label_cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.54
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wheel_set9004(int i) {
        wheel_initHHMMSS();
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.layout_wheel_hhmmss, (ViewGroup) null);
        this.wheelHou = (WheelView) inflate.findViewById(R.id.hourwheel);
        this.wheelMin = (WheelView) inflate.findViewById(R.id.minutewheel);
        this.wheelSec = (WheelView) inflate.findViewById(R.id.secondwheel);
        this.wheelHou.setAdapter(new StrericWheelAdapter(this.houContent));
        this.wheelMin.setAdapter(new StrericWheelAdapter(this.minContent));
        this.wheelSec.setAdapter(new StrericWheelAdapter(this.secContent));
        this.wheelHou.setCurrentItem(0);
        this.wheelMin.setCurrentItem(0);
        this.wheelSec.setCurrentItem(0);
        this.wheelHou.setCyclic(true);
        this.wheelMin.setCyclic(true);
        this.wheelSec.setCyclic(true);
        this.wheelHou.setInterpolator(new AnticipateOvershootInterpolator());
        this.wheelMin.setInterpolator(new AnticipateOvershootInterpolator());
        this.wheelSec.setInterpolator(new AnticipateOvershootInterpolator());
        final ParamSettings paramSettings = this.G_paramSettings.get("9004");
        if (i != -1) {
            int parseInt = Integer.parseInt(paramSettings.ParamSelect);
            this.wheelHou.setCurrentItem(parseInt / 3600);
            this.wheelMin.setCurrentItem((parseInt % 3600) / 60);
            this.wheelSec.setCurrentItem(parseInt % 60);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(inflate);
        builder.setTitle(paramSettings.ParamName);
        builder.setPositiveButton(getString(R.string.label_ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.55
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                String str;
                SettingsActivity.this.nPickSec = (SettingsActivity.this.wheelHou.getCurrentItem() * 3600) + (SettingsActivity.this.wheelMin.getCurrentItem() * 60) + SettingsActivity.this.wheelSec.getCurrentItem();
                if (SettingsActivity.this.nPickSec < 5) {
                    SettingsActivity.this.nPickSec = 5;
                    str = SettingsActivity.this.getString(R.string.L_Minimum) + " = " + String.valueOf(SettingsActivity.this.nPickSec) + " " + SettingsActivity.this.getString(R.string.L_Sec);
                } else {
                    str = null;
                }
                if (str != null) {
                    new AlertDialog.Builder(SettingsActivity.this).setTitle((CharSequence) null).setIcon((Drawable) null).setMessage(str).setPositiveButton(SettingsActivity.this.getResources().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.55.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i3) {
                        }
                    }).show();
                }
                SettingsActivity.this.nKeepCamAlvieCount = 0;
                SettingsActivity.this.cameraRequest.sendCmd(-1, paramSettings.ParamCmdID, String.valueOf(SettingsActivity.this.nPickSec));
                dialogInterface.cancel();
            }
        });
        builder.setNegativeButton(getString(R.string.label_cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.56
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wheel_set901x(int i) {
        wheel_initHHMM();
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.layout_wheel_hhmm, (ViewGroup) null);
        this.wheelHou = (WheelView) inflate.findViewById(R.id.hourwheel);
        this.wheelMin = (WheelView) inflate.findViewById(R.id.minutewheel);
        this.wheelHou.setAdapter(new StrericWheelAdapter(this.houContent));
        this.wheelMin.setAdapter(new StrericWheelAdapter(this.minContent));
        this.wheelHou.setCurrentItem(0);
        this.wheelMin.setCurrentItem(0);
        this.wheelHou.setCyclic(true);
        this.wheelMin.setCyclic(true);
        this.wheelHou.setInterpolator(new AnticipateOvershootInterpolator());
        this.wheelMin.setInterpolator(new AnticipateOvershootInterpolator());
        final ParamSettings paramSettings = this.G_paramSettings.get(this.listSettingsCmd[i]);
        if (i != -1) {
            int parseInt = Integer.parseInt(paramSettings.ParamSelect);
            this.wheelHou.setCurrentItem(parseInt / 60);
            this.wheelMin.setCurrentItem(parseInt % 60);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(inflate);
        builder.setTitle(paramSettings.ParamName);
        builder.setPositiveButton(getString(R.string.label_ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.57
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                SettingsActivity.this.nPickMin = (SettingsActivity.this.wheelHou.getCurrentItem() * 60) + SettingsActivity.this.wheelMin.getCurrentItem();
                SettingsActivity.this.nKeepCamAlvieCount = 0;
                SettingsActivity.this.cameraRequest.sendCmd(-1, paramSettings.ParamCmdID, String.valueOf(SettingsActivity.this.nPickMin));
                dialogInterface.cancel();
            }
        });
        builder.setNegativeButton(getString(R.string.label_cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.58
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void system_setCamName(String str, final String str2, String str3) {
        View inflate = LayoutInflater.from(this).inflate(R.layout.input_dialog_layout, (ViewGroup) null);
        final EditText editText = (EditText) inflate.findViewById(R.id.dialog_edit);
        editText.setFocusable(true);
        editText.setText(str3);
        ((TextView) inflate.findViewById(R.id.dialog_text)).setText(R.string.input_hint);
        new AlertDialog.Builder(this).setTitle(str).setIcon(R.drawable.dialog_logo).setView(inflate).setPositiveButton(getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.60
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String obj = editText.getText().toString();
                if (SettingsActivity.this.checkInput(obj)) {
                    SettingsActivity.this.strSettingName = obj;
                    SettingsActivity.this.nKeepCamAlvieCount = 0;
                    SettingsActivity.this.cameraRequest.sendCmd(-3, str2, SettingsActivity.this.strSettingName);
                } else {
                    Toast.makeText(SettingsActivity._instance, (int) R.string.failure, 0).show();
                }
                SettingsActivity.this.hideSoftKeyboard();
            }
        }).setNegativeButton(getString(R.string.no), new DialogInterface.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.59
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SettingsActivity.this.hideSoftKeyboard();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkInput(String str) {
        return Pattern.compile("^[A-Za-z0-9]{0,12}$").matcher(str).matches() && str.length() <= 12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSoftKeyboard() {
        View peekDecorView = getWindow().peekDecorView();
        if (peekDecorView == null || peekDecorView.getWindowToken() == null) {
            return;
        }
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.isEnabled()) {
            view.getId();
        }
    }

    private void initCameraRequest() {
        this.cameraRequest = new CameraRequest(this);
        this.cameraRequest.setOnCameraRequestListener(this);
        this.nKeepCamAlvieCount = 0;
        this.cameraRequest.getCameraModelID();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeSucc(int i) {
        if (i == this.G_nDevMode) {
            startActivity(new Intent(this, PreviewActivity.class));
            finish();
            MyApplication._instance.nAppMode = 1;
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModelIDSucc(HashMap<String, String> hashMap) {
        initSettingsCmdItems();
        this.cameraRequest.getSDFreeSpace();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModeFail() {
        Toast.makeText(this, getString(R.string.disconnect), 0).show();
        finish();
        MyApplication._instance.nAppMode = 1;
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSendCmdSucc(int i, int i2) {
        if (i == -1) {
            if (i2 == 3010) {
                this.nKeepCamAlvieCount = 0;
                this.cameraRequest.getSDFreeSpace();
            }
            if (i2 == 3011) {
                this.nKeepCamAlvieCount = 0;
                this.cameraRequest.getCameraCmd3031();
            }
            sendMessage(20);
            this.mHandler_Connect.sendEmptyMessageDelayed(1, 1000L);
        } else if (i == -2) {
            this.cameraRequest.getCameraSettings();
            this.mHandler_Connect.sendEmptyMessageDelayed(9, 1000L);
        } else if (i != -3) {
            if (i == -4 && i2 == 9018) {
                Toast.makeText(this, "Off WiFi Succ", 0).show();
            }
        } else {
            sendMessage(20);
            this.mHandler_Connect.sendEmptyMessageDelayed(1, 1000L);
            if (i2 == 9010) {
                this.G_strCameraName = this.strSettingName;
                getSharedPreferences(getString(R.string.app_name), 0).edit().putString("Camera Name", this.G_strCameraName).commit();
            }
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSendCmdFail(int i, int i2) {
        if (i == -1) {
            this.mHandler_Connect.sendEmptyMessage(22);
            this.mHandler_Connect.sendEmptyMessage(7);
            this.mHandler_Connect.sendEmptyMessageDelayed(10, 3000L);
        } else if (i == -2) {
            this.mHandler_Connect.sendEmptyMessage(22);
            this.mHandler_Connect.sendEmptyMessage(7);
            this.mHandler_Connect.sendEmptyMessageDelayed(9, 3000L);
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSettingsSucc(HashMap<String, Integer> hashMap) {
        for (int i = 0; i < this.listSettingsCmd.length; i++) {
            ParamSettings paramSettings = this.G_paramSettings.get(this.listSettingsCmd[i]);
            String num = hashMap.get(this.listSettingsCmd[i]).toString();
            if (paramSettings != null && num != null) {
                paramSettings.ParamSelect = num;
            }
        }
        this.aptViewSettings.notifyDataSetChanged();
        this.waitSettingsLoad.setVisibility(8);
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSettingsFail(HashMap<String, Integer> hashMap) {
        camRequestError("camDidGetSettingsFail");
        doBack();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetSDFreeSpaceSucc(int i) {
        this.G_fSDFreeSpace = i / 1024.0f;
        this.G_fSDFreeSpace /= 1024.0f;
        this.nKeepCamAlvieCount = 0;
        if (this.G_strProjectID.equalsIgnoreCase("RD7000")) {
            this.cameraRequest.getCameraBattery();
        } else {
            this.cameraRequest.getCameraCmd3031();
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetCmd3031Succ(HashMap<String, ArrayList<ArrayList<String>>> hashMap) {
        if (!this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
            ArrayList<ArrayList<String>> arrayList = hashMap.get("1002");
            ArrayList<ArrayList<String>> arrayList2 = hashMap.get("2002");
            ParamSettings paramSettings = this.G_paramSettings.get("1002");
            paramSettings.ParamItem = arrayList.get(0);
            paramSettings.ParamValue = arrayList.get(1);
            ParamSettings paramSettings2 = this.G_paramSettings.get("2002");
            paramSettings2.ParamItem = arrayList2.get(0);
            paramSettings2.ParamValue = arrayList2.get(1);
        } else {
            ArrayList<ArrayList<String>> arrayList3 = hashMap.get("9025");
            ArrayList<ArrayList<String>> arrayList4 = hashMap.get("9024");
            ArrayList<ArrayList<String>> arrayList5 = hashMap.get("9022");
            ArrayList<ArrayList<String>> arrayList6 = hashMap.get("9023");
            ParamSettings paramSettings3 = this.G_paramSettings.get("9025");
            paramSettings3.ParamItem = arrayList3.get(0);
            paramSettings3.ParamValue = arrayList3.get(1);
            ParamSettings paramSettings4 = this.G_paramSettings.get("9024");
            paramSettings4.ParamItem = arrayList4.get(0);
            paramSettings4.ParamValue = arrayList4.get(1);
            ParamSettings paramSettings5 = this.G_paramSettings.get("9022");
            paramSettings5.ParamItem = arrayList5.get(0);
            paramSettings5.ParamValue = arrayList5.get(1);
            ParamSettings paramSettings6 = this.G_paramSettings.get("9023");
            paramSettings6.ParamItem = arrayList6.get(0);
            paramSettings6.ParamValue = arrayList6.get(1);
        }
        ArrayList<ArrayList<String>> arrayList7 = hashMap.get("9010");
        ArrayList<String> arrayList8 = arrayList7.get(0);
        ParamSettings paramSettings7 = this.G_paramSettings.get("9010");
        paramSettings7.ParamItem.set(0, arrayList8.get(0));
        paramSettings7.ParamValue.set(0, arrayList7.get(1).get(0));
        this.G_strCameraName = arrayList8.get(0);
        this.cameraRequest.getCameraSettings();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetBatterySucc(int i) {
        this.nBatteryStatus = i;
        this.nKeepCamAlvieCount = 0;
        this.cameraRequest.getCameraCmd3031();
    }

    private void camRequestError(String str) {
        Toast.makeText(this, str, 0).show();
    }

    private void initSettingsBottomBar() {
        this.layoutBottomBar = (RelativeLayout) findViewById(R.id.layout_setting_bottom_bar);
        this.btnCancelWiFi = (Button) findViewById(R.id.btn_wifi_off);
        this.btnCancelWiFi.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.61
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SettingsActivity.this.nKeepCamAlvieCount = 0;
                SettingsActivity.this.cameraRequest.sendCmd(-4, "9018", null);
                if (MyApplication._instance.pDeviceDetailObj != null) {
                    int i = MyApplication._instance.pDeviceDetailObj.tagStatus;
                    BLEDeviceObject bLEDeviceObject = MyApplication._instance.pDeviceDetailObj;
                    if (i == 2) {
                        MyApplication._instance.isManualDisconnect = true;
                        MyApplication._instance.pDeviceDetailObj.tagGatt.disconnect();
                    }
                }
                SettingsActivity.this.finish();
                MyApplication._instance.nAppMode = 1;
            }
        });
    }

    private void initSettingsTopBar() {
        this.layoutTopBar = (RelativeLayout) findViewById(R.id.layout_setting_top_bar);
        this.imgBack2Preview = (ImageView) findViewById(R.id.return_button);
        this.imgBack2Preview.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.gamecamerapro2.SettingsActivity.62
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SettingsActivity.this.txtProgressBar == null || SettingsActivity.this.txtProgressBar.getVisibility() != 0) {
                    if (SettingsActivity.this.layoutItemPar.getVisibility() == 0) {
                        SettingsActivity.this.layoutItemPar.setVisibility(8);
                    } else {
                        SettingsActivity.this.doBack();
                    }
                }
            }
        });
        this.waitSettingsLoad = (ProgressBar) findViewById(R.id.settings_load);
        this.waitSettingsLoad.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doBack() {
        if (this.layoutItemPar.getVisibility() == 0) {
            this.layoutItemPar.setVisibility(8);
            return;
        }
        this.nKeepCamAlvieCount = 0;
        this.cameraRequest.setCameraMode(this.G_nDevMode);
    }

    private void initSettingsMiddleView() {
        this.dlgLoading = MyLoadingDialog.createDialog(this);
        this.txtProgressBar = (TextView) findViewById(R.id.loading);
        this.layoutItemPar = (LinearLayout) findViewById(R.id.layout_item_paramers);
    }

    private void system_initTimer() {
        this.pSystemTimerTask = new TimerTask() { // from class: com.ocean.gamecamerapro2.SettingsActivity.63
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (SettingsActivity.this.isKeepCamAlive) {
                    SettingsActivity.access$008(SettingsActivity.this);
                    if (SettingsActivity.this.nKeepCamAlvieCount > 20) {
                        SettingsActivity.this.nKeepCamAlvieCount = 0;
                        SettingsActivity.this.pSystemTimerHandler.sendEmptyMessage(20);
                    }
                }
            }
        };
        this.pSystemTimerHandler = new Handler() { // from class: com.ocean.gamecamerapro2.SettingsActivity.64
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 20) {
                    SettingsActivity.this.cameraRequest.getCameraMode();
                }
            }
        };
        this.pSystemTimer = new Timer();
        this.pSystemTimer.schedule(this.pSystemTimerTask, 1000L, 1000L);
    }
}
