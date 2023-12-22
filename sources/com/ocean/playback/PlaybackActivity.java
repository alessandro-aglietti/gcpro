package com.ocean.playback;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.ocean.cmdrequest.CameraRequest;
import com.ocean.gamecamerapro2.MyApplication;
import com.ocean.gamecamerapro2.PreviewActivity;
import com.ocean.gamecamerapro2.R;
import com.ocean.obj.CameraFile;
import com.ocean.playback.DeviceFragment;
import com.ocean.playback.LocalFragment;
import com.ocean.playback.ViewPagerIndicator;
import com.ocean.util.LocalFilesBrower;
import com.ocean.widget.MyLoadingDialog;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class PlaybackActivity extends FragmentActivity implements CameraRequest.OnCameraRequestListener {
    private static final int MAIN_ALAERT_FILE_DOWNLOAD = 65539;
    private static final int MAIN_LOW_SD_CAPACITY = 65540;
    private static final int MAIN_RELOAD_DEVICE_TABLE = 65538;
    private static final int MAIN_RELOAD_LOCAL_TABLE = 65537;
    private static final int MSG_KEEP_CAM_ALVIE = 20;
    private static final String PHOTO_THUMB_START = "http://192.168.8.120/DCIM/PHOTO/";
    private static final String TAG = "[PlaybackActivity]:";
    private static final String THUMB_END = "?custom=1&cmd=4001";
    private static final String TYPE_MOVIE = "MOVIE";
    private static final String TYPE_PHOTO = "PHOTO";
    private static final String VIDEO_THUMB_START = "http://192.168.8.120/DCIM/MOVIE/";
    private static final int WORK_CHANGE_MODE = 65538;
    private static final int WORK_ENTER_FROM_LOGIN = 65541;
    private static final int WORK_GET_ALL_FILES = 65537;
    private static final int WORK_GET_DEVICE_FILES = 65540;
    private static final int WORK_GET_LOCAL_FILES = 65539;
    private static boolean isDebugLog = false;
    static ArrayList<CameraFile> localFileList;
    private static MyMainHandler mainHandler;
    private static MyWorkHandler workHandler;
    private CameraRequest cameraRequest;
    private DeviceFragment deviceFragment;
    private DeviceFragment devicePhoto;
    private DeviceFragment deviceVideo;
    private MyLoadingDialog dlgLoading;
    private ImageView imgBack2Preview;
    private ImageView imgDelete;
    private ImageView imgDownload;
    private ImageView imgPlay;
    private ImageView imgSelectAll;
    private ImageView imgTypeSwitch;
    private LocalFilesBrower localFilesBrower;
    private LocalFragment localFragment;
    private FragmentPagerAdapter mAdapter;
    private List<String> mDatas;
    private ViewPagerIndicator mIndicator;
    private ViewPager mViewPager;
    private HandlerThread wThread;
    static ArrayList<CameraFile> localPhotoList = new ArrayList<>();
    static ArrayList<CameraFile> localVideoList = new ArrayList<>();
    static ArrayList<CameraFile> deviceFileList = null;
    static ArrayList<CameraFile> devicePhotoList = new ArrayList<>();
    static ArrayList<CameraFile> deviceVideoList = new ArrayList<>();
    private static boolean isLocalCacheClear = false;
    private List<Fragment> mTabContents = new ArrayList();
    private boolean isDeviceImages = true;
    private int G_nDevMode = -1;
    private boolean G_isEnterFromLogin = false;
    private boolean isAppAlive = true;
    public String G_strMcuName = null;
    public String G_strProjectID = null;
    public String G_strProjectVer = null;
    public String G_strBuildTime = null;
    public String G_strOTG = null;
    private boolean isVideoFiles = false;
    private boolean isScrollingStop = true;
    private boolean isGetCamFiles = false;
    private Timer pSystemTimer = null;
    private TimerTask pSystemTimerTask = null;
    private Handler pSystemTimerHandler = null;
    private boolean isKeepCamAlive = true;
    private int nKeepCamAlvieCount = 0;

    private void getPhoto() {
    }

    private void getVideo() {
    }

    private void initBroadcast() {
    }

    private void reflashMediaStroe() {
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
    public void camDidGetModelIDSucc(HashMap<String, String> hashMap) {
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
    public void camDidSendCmdSucc(int i, int i2) {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateFail() {
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetDateSucc() {
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

    static /* synthetic */ int access$2108(PlaybackActivity playbackActivity) {
        int i = playbackActivity.nKeepCamAlvieCount;
        playbackActivity.nKeepCamAlvieCount = i + 1;
        return i;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.activity_playback);
        SharedPreferences sharedPreferences = getSharedPreferences(getString(R.string.app_name), 0);
        this.G_strMcuName = sharedPreferences.getString("Mcu Name", "error");
        this.G_strProjectID = sharedPreferences.getString("Project ID", "error");
        this.G_strProjectVer = sharedPreferences.getString("Project Ver", "error");
        this.G_strBuildTime = sharedPreferences.getString("Build Time", "error");
        this.G_strOTG = sharedPreferences.getString("OTG", "error");
        this.G_nDevMode = sharedPreferences.getInt("Camera Mode", 1);
        this.G_isEnterFromLogin = sharedPreferences.getBoolean("isEnterFromLogin", false);
        this.isVideoFiles = sharedPreferences.getBoolean("isVideoFiles", false);
        this.mDatas = Arrays.asList(getString(R.string.device_album), getString(R.string.phone_album));
        this.localFilesBrower = new LocalFilesBrower(MyApplication.getAppContext());
        if (!this.G_isEnterFromLogin) {
            if (this.G_nDevMode == 0) {
                this.isVideoFiles = false;
            } else {
                this.isVideoFiles = true;
            }
        }
        initHandler();
        initDatas();
        initPlaybackTopBar();
        initPlaybackBottomBar();
        initPlaybackMiddleView();
        ui_updateTopBar();
        ui_updateBottomBar();
        system_initTimer();
        initCameraRequest();
        ImageLoader.getInstance().clearMemoryCache();
        ImageLoader.getInstance().clearDiskCache();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isAppAlive = true;
        this.isKeepCamAlive = true;
        this.nKeepCamAlvieCount = 0;
        if (this.deviceFragment.isDownLoading) {
            this.deviceFragment.downloadQueueSet.downloadTogether(this.deviceFragment.downloadTask);
            this.deviceFragment.downloadQueueSet.reuseAndStart();
        }
        if (this.G_isEnterFromLogin) {
            return;
        }
        this.nKeepCamAlvieCount = 0;
        this.cameraRequest.setCameraMode(2);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.isAppAlive = false;
        this.isKeepCamAlive = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.isAppAlive = false;
        this.isKeepCamAlive = false;
        workHandler.removeCallbacksAndMessages(null);
        workHandler = null;
        mainHandler.removeCallbacksAndMessages(null);
        mainHandler = null;
        if (this.dlgLoading != null) {
            this.dlgLoading.dismiss();
        }
        this.dlgLoading = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.deviceFragment.isDownLoading) {
                if (mainHandler != null) {
                    mainHandler.sendEmptyMessage(65539);
                    return false;
                }
                return false;
            }
            btnBack2Preview();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    private void myTest() {
        if (workHandler != null) {
            workHandler.sendEmptyMessage(65537);
        }
        if (this.deviceFragment != null) {
            this.deviceFragment.startLoadingView(getString(R.string.L_Getting_FileList));
        }
    }

    private void initDatas() {
        this.deviceFragment = DeviceFragment.newInstance(this.mDatas.get(0));
        this.deviceFragment.setReflashListener(new DeviceFragment.ReflashListListener() { // from class: com.ocean.playback.PlaybackActivity.1
            @Override // com.ocean.playback.DeviceFragment.ReflashListListener
            public void Reflash() {
            }
        });
        this.deviceFragment.setOnScrollStopListener(new DeviceFragment.OnScrollStopListener() { // from class: com.ocean.playback.PlaybackActivity.2
            @Override // com.ocean.playback.DeviceFragment.OnScrollStopListener
            public void didStopScrolling(boolean z) {
                PlaybackActivity.this.isScrollingStop = z;
            }
        });
        this.deviceFragment.setOnCamDeleteFileListener(new DeviceFragment.OnCamDeleteFileListener() { // from class: com.ocean.playback.PlaybackActivity.3
            @Override // com.ocean.playback.DeviceFragment.OnCamDeleteFileListener
            public void camDidDeleteAllSucc() {
                if (PlaybackActivity.deviceFileList != null) {
                    PlaybackActivity.deviceFileList.clear();
                }
            }

            @Override // com.ocean.playback.DeviceFragment.OnCamDeleteFileListener
            public void camDidDeleteFileSucc(int i) {
                if (PlaybackActivity.deviceFileList != null) {
                    PlaybackActivity.deviceFileList.remove(i);
                }
            }
        });
        this.deviceFragment.setOnCamDownloadFileListener(new DeviceFragment.OnCamDownloadFileListener() { // from class: com.ocean.playback.PlaybackActivity.4
            @Override // com.ocean.playback.DeviceFragment.OnCamDownloadFileListener
            public void camDidDownloadFileSucc(CameraFile cameraFile) {
                File file = new File(MyApplication._instance.strDownloadPath + cameraFile.getFileTime() + "_" + cameraFile.getFileName());
                Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                intent.setData(Uri.fromFile(file));
                PlaybackActivity.this.sendBroadcast(intent);
            }

            @Override // com.ocean.playback.DeviceFragment.OnCamDownloadFileListener
            public void camDidDownloadFinished() {
                PlaybackActivity.this.local_GetFiles();
            }

            @Override // com.ocean.playback.DeviceFragment.OnCamDownloadFileListener
            public void camDidDownloadError() {
                PlaybackActivity.this.device_reloadTable();
                PlaybackActivity.this.camDidSetModeFail(-100);
            }
        });
        this.deviceFragment.setOnCamFilePlayListener(new DeviceFragment.OnCamFilePlayListener() { // from class: com.ocean.playback.PlaybackActivity.5
            @Override // com.ocean.playback.DeviceFragment.OnCamFilePlayListener
            public void camDidFilePlaySucc(int i) {
                String fileDownloadPath = PlaybackActivity.this.deviceFragment.fileList.get(i).getFileDownloadPath();
                SharedPreferences sharedPreferences = PlaybackActivity.this.getSharedPreferences(PlaybackActivity.this.getString(R.string.app_name), 0);
                sharedPreferences.edit().putString("Preview Url", fileDownloadPath).commit();
                sharedPreferences.edit().putBoolean("isVideoFiles", PlaybackActivity.this.isVideoFiles).commit();
                sharedPreferences.edit().putInt("Preview Index", i).commit();
                PlaybackActivity.this.startActivity(new Intent(PlaybackActivity.this, CamFilePreviewActivity.class));
                PlaybackActivity.this.isGetCamFiles = false;
            }
        });
        this.localFragment = LocalFragment.newInstance(this.mDatas.get(1));
        this.localFragment.setOnScrollStopListener(new LocalFragment.OnScrollStopListener() { // from class: com.ocean.playback.PlaybackActivity.6
            @Override // com.ocean.playback.LocalFragment.OnScrollStopListener
            public void didStopScrolling(boolean z) {
                PlaybackActivity.this.isScrollingStop = z;
            }
        });
        this.localFragment.setOnDeleteFileListener(new LocalFragment.OnDeleteFileListener() { // from class: com.ocean.playback.PlaybackActivity.7
            @Override // com.ocean.playback.LocalFragment.OnDeleteFileListener
            public void localDidDeleteFile(CameraFile cameraFile) {
            }
        });
        this.mTabContents.add(this.deviceFragment);
        this.mTabContents.add(this.localFragment);
        this.mAdapter = new FragmentPagerAdapter(getSupportFragmentManager()) { // from class: com.ocean.playback.PlaybackActivity.8
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return PlaybackActivity.this.mTabContents.size();
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            public Fragment getItem(int i) {
                return (Fragment) PlaybackActivity.this.mTabContents.get(i);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void btnBack2Preview() {
        if (this.deviceFragment.isDownLoading) {
            return;
        }
        getSharedPreferences(getString(R.string.app_name), 0).edit().putBoolean("isVideoFiles", false).commit();
        if (this.G_nDevMode == -1) {
            finish();
            MyApplication._instance.nAppMode = 1;
            return;
        }
        try {
            MyLoadingDialog myLoadingDialog = this.dlgLoading;
            this.dlgLoading = MyLoadingDialog.createDialog(this);
            this.dlgLoading.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.G_nDevMode == -1 || this.cameraRequest == null) {
            return;
        }
        this.nKeepCamAlvieCount = 0;
        this.cameraRequest.setCameraMode(this.G_nDevMode);
    }

    private void initHandler() {
        mainHandler = new MyMainHandler(this);
        this.wThread = new HandlerThread("MyAlbumWorkThread");
        this.wThread.start();
        workHandler = new MyWorkHandler(this.wThread.getLooper(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MyMainHandler extends Handler {
        private WeakReference<PlaybackActivity> mOwner;

        public MyMainHandler(PlaybackActivity playbackActivity) {
            this.mOwner = new WeakReference<>(playbackActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            final PlaybackActivity playbackActivity = this.mOwner.get();
            switch (message.what) {
                case 65537:
                    if (playbackActivity.localFragment != null) {
                        playbackActivity.localFragment.setAlbumData(PlaybackActivity.localFileList, PlaybackActivity.isLocalCacheClear);
                        playbackActivity.localFragment.scroll2Top();
                        boolean unused = PlaybackActivity.isLocalCacheClear = false;
                        return;
                    }
                    return;
                case 65538:
                    if (playbackActivity.deviceFragment != null) {
                        playbackActivity.deviceFragment.setAlbumData(PlaybackActivity.deviceFileList);
                        playbackActivity.deviceFragment.scroll2Top();
                        return;
                    }
                    return;
                case 65539:
                    new AlertDialog.Builder(playbackActivity).setTitle(playbackActivity.getString(R.string.L_warning)).setMessage(playbackActivity.getString(R.string.L_Download_Thumb)).setPositiveButton(playbackActivity.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.MyMainHandler.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            playbackActivity.deviceFragment.doPauseDownload();
                        }
                    }).setNegativeButton(playbackActivity.getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.MyMainHandler.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    }).show();
                    return;
                case InputDeviceCompat.SOURCE_TRACKBALL /* 65540 */:
                    Toast.makeText(playbackActivity, playbackActivity.getString(R.string.L_LOW_SDCAP), 0).show();
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MyWorkHandler extends Handler {
        private WeakReference<PlaybackActivity> mOwner;

        public MyWorkHandler(Looper looper, PlaybackActivity playbackActivity) {
            super(looper);
            this.mOwner = new WeakReference<>(playbackActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            PlaybackActivity playbackActivity = this.mOwner.get();
            switch (message.what) {
                case 65537:
                    PlaybackActivity.devicePhotoList.clear();
                    PlaybackActivity.deviceVideoList.clear();
                    playbackActivity.local_GetFiles();
                    playbackActivity.device_GetFilesNew();
                    return;
                case 65538:
                default:
                    return;
                case 65539:
                    playbackActivity.isScrollingStop = true;
                    playbackActivity.local_GetFiles();
                    return;
                case InputDeviceCompat.SOURCE_TRACKBALL /* 65540 */:
                    playbackActivity.isScrollingStop = true;
                    playbackActivity.device_GetFilesNew();
                    return;
                case PlaybackActivity.WORK_ENTER_FROM_LOGIN /* 65541 */:
                    new AlertDialog.Builder(playbackActivity).setTitle(playbackActivity.getString(R.string.L_warning)).setMessage(playbackActivity.getString(R.string.disconnect)).setPositiveButton(playbackActivity.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.MyWorkHandler.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    }).show();
                    return;
            }
        }
    }

    public void getCameraFileList(String str) {
        CameraRequest cameraRequest = this.cameraRequest;
        String httpRequest = cameraRequest.setHttpRequest("http://192.168.8.120/DCIM/" + str);
        if (httpRequest == null) {
            return;
        }
        while (true) {
            int indexOf = httpRequest.indexOf("<tr><td>");
            int length = httpRequest.length();
            if (indexOf <= 0 || indexOf + 8 >= length) {
                return;
            }
            String substring = httpRequest.substring(indexOf, length);
            int indexOf2 = substring.indexOf("<b>") + 3;
            int indexOf3 = substring.indexOf("</b>");
            CameraFile cameraFile = new CameraFile();
            if (indexOf2 >= substring.length() || indexOf3 >= substring.length()) {
                return;
            }
            if (indexOf2 > 0 || indexOf3 > 0) {
                cameraFile.setFileName(substring.substring(indexOf2, indexOf3));
                if (TYPE_MOVIE.equals(str)) {
                    deviceVideoList.add(cameraFile);
                    cameraFile.setFileDownloadPath(VIDEO_THUMB_START + cameraFile.getFileName());
                    cameraFile.setFilePath(VIDEO_THUMB_START + cameraFile.getFileName() + THUMB_END);
                } else {
                    devicePhotoList.add(cameraFile);
                    cameraFile.setFileDownloadPath(PHOTO_THUMB_START + cameraFile.getFileName());
                    if (cameraFile.getFileName().contains("A.JPG")) {
                        cameraFile.setFilePath(PHOTO_THUMB_START + cameraFile.getFileName());
                    } else {
                        cameraFile.setFilePath(PHOTO_THUMB_START + cameraFile.getFileName() + THUMB_END);
                    }
                }
            }
            String substring2 = substring.substring(substring.indexOf("<td align=right> ") + 17, substring.length());
            cameraFile.setFileCatch(substring2.substring(0, substring2.indexOf("<td align=right>")));
            httpRequest = substring2.substring(substring2.indexOf("<td align=right>") + 16, substring2.length());
            cameraFile.setFileTime(httpRequest.substring(0, httpRequest.indexOf("\n<td align=right>")));
        }
    }

    private void initCameraRequest() {
        if (this.G_isEnterFromLogin) {
            return;
        }
        this.cameraRequest = new CameraRequest(this);
        this.cameraRequest.setOnCameraRequestListener(this);
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeSucc(int i) {
        if (i != 2) {
            startActivity(new Intent(this, PreviewActivity.class));
            finish();
            MyApplication._instance.nAppMode = 1;
            return;
        }
        myTest();
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeFail(int i) {
        if (i == -23) {
            camRequestError(getString(R.string.nosd));
        } else {
            camRequestError("Failed to set modes");
        }
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetModeFail() {
        Toast.makeText(this, getString(R.string.disconnect), 0).show();
        finish();
        MyApplication._instance.nAppMode = 1;
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidGetFileListSucc(ArrayList<HashMap<String, String>> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            HashMap<String, String> hashMap = arrayList.get(i);
            String str = hashMap.get("Name");
            hashMap.get("Path");
            String str2 = hashMap.get("Size");
            String replace = hashMap.get("Time").replace("/", "").replace(":", "").replace(" ", "");
            String str3 = hashMap.get("TimeCode");
            CameraFile cameraFile = new CameraFile();
            if (str.contains(".jpg") || str.contains(".JPG")) {
                cameraFile.setFileName(str);
                cameraFile.setFileTime(replace);
                cameraFile.setFileTimeCode(str3);
                cameraFile.setFileSize(str2);
                cameraFile.setFileDownloadPath(PHOTO_THUMB_START + str);
                if (cameraFile.getFileName().contains("A.JPG")) {
                    cameraFile.setFilePath(PHOTO_THUMB_START + str);
                } else {
                    cameraFile.setFilePath(PHOTO_THUMB_START + str + THUMB_END);
                }
                devicePhotoList.add(cameraFile);
            } else if (str.contains(".mp4") || str.contains(".MP4")) {
                cameraFile.setFileName(str);
                cameraFile.setFileTime(replace);
                cameraFile.setFileTimeCode(str3);
                cameraFile.setFileSize(str2);
                cameraFile.setFileDownloadPath(VIDEO_THUMB_START + str);
                cameraFile.setFilePath(VIDEO_THUMB_START + str + THUMB_END);
                deviceVideoList.add(cameraFile);
            }
        }
        this.isGetCamFiles = true;
        device_SetFiles();
    }

    private void camRequestError(String str) {
        Toast.makeText(this, str, 0).show();
        if (this.dlgLoading != null) {
            this.dlgLoading.dismiss();
        }
    }

    private void initPlaybackTopBar() {
        this.imgPlay = (ImageView) findViewById(R.id.bt_play);
        this.imgPlay.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.imgDownload = (ImageView) findViewById(R.id.bt_download);
        this.imgDownload.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PlaybackActivity.this.isDeviceImages) {
                    long sd_getCapacityLeft = PlaybackActivity.this.sd_getCapacityLeft();
                    if ((sd_getCapacityLeft >= 10 || PlaybackActivity.this.isVideoFiles) && (sd_getCapacityLeft >= 200 || !PlaybackActivity.this.isVideoFiles)) {
                        PlaybackActivity.this.deviceFragment.doDownloadClick();
                        boolean unused = PlaybackActivity.isLocalCacheClear = true;
                    } else if (PlaybackActivity.mainHandler != null) {
                        PlaybackActivity.mainHandler.sendEmptyMessage(InputDeviceCompat.SOURCE_TRACKBALL);
                    }
                }
            }
        });
        this.imgDelete = (ImageView) findViewById(R.id.bt_delete);
        this.imgDelete.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PlaybackActivity.this.isDeviceImages) {
                    PlaybackActivity.this.deviceFragment.doDeleteClick();
                } else {
                    PlaybackActivity.this.localFragment.doDeleteClick();
                }
            }
        });
        this.imgSelectAll = (ImageView) findViewById(R.id.bt_all);
        this.imgSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PlaybackActivity.this.isDeviceImages) {
                    PlaybackActivity.this.deviceFragment.doAllClick();
                } else {
                    PlaybackActivity.this.localFragment.doAllClick();
                }
            }
        });
        this.imgBack2Preview = (ImageView) findViewById(R.id.back_button);
        this.imgBack2Preview.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlaybackActivity.this.btnBack2Preview();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ui_updateTopBar() {
        if (this.isDeviceImages) {
            this.imgDownload.setVisibility(0);
        } else {
            this.imgDownload.setVisibility(8);
        }
    }

    private void initPlaybackBottomBar() {
        this.imgTypeSwitch = (ImageView) findViewById(R.id.img_type_switch);
        this.imgTypeSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.PlaybackActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!PlaybackActivity.this.isScrollingStop) {
                    if (PlaybackActivity.mainHandler != null) {
                        PlaybackActivity.mainHandler.sendEmptyMessage(65539);
                    }
                } else if (PlaybackActivity.this.deviceFragment.isDownLoading) {
                    if (PlaybackActivity.mainHandler != null) {
                        PlaybackActivity.mainHandler.sendEmptyMessage(65539);
                    }
                } else if (!PlaybackActivity.this.isGetCamFiles && !PlaybackActivity.this.G_isEnterFromLogin) {
                    if (PlaybackActivity.mainHandler != null) {
                        PlaybackActivity.mainHandler.sendEmptyMessage(65539);
                    }
                } else {
                    PlaybackActivity.this.isVideoFiles = !PlaybackActivity.this.isVideoFiles;
                    PlaybackActivity.this.ui_updateBottomBar();
                    if (PlaybackActivity.this.isDeviceImages) {
                        if (PlaybackActivity.workHandler != null) {
                            PlaybackActivity.this.deviceFragment.startLoadingView(PlaybackActivity.this.getString(R.string.L_Getting_FileList));
                            PlaybackActivity.workHandler.sendEmptyMessage(InputDeviceCompat.SOURCE_TRACKBALL);
                        }
                    } else if (PlaybackActivity.workHandler != null) {
                        PlaybackActivity.workHandler.sendEmptyMessage(65539);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ui_updateBottomBar() {
        if (this.isVideoFiles) {
            this.imgTypeSwitch.setImageResource(R.drawable.switch_right);
        } else {
            this.imgTypeSwitch.setImageResource(R.drawable.switch_left);
        }
    }

    private void initPlaybackMiddleView() {
        MyLoadingDialog myLoadingDialog = this.dlgLoading;
        this.dlgLoading = MyLoadingDialog.createDialog(this);
        this.mViewPager = (ViewPager) findViewById(R.id.id_vp);
        this.mIndicator = (ViewPagerIndicator) findViewById(R.id.id_indicator);
        this.mIndicator.setTabItemTitles(this.mDatas);
        this.mViewPager.setAdapter(this.mAdapter);
        if (this.G_isEnterFromLogin) {
            this.isDeviceImages = false;
            this.mIndicator.setViewPager(this.mViewPager, 1);
            if (workHandler != null) {
                workHandler.sendEmptyMessageDelayed(65539, 500L);
            }
        } else {
            this.isDeviceImages = true;
            this.mIndicator.setViewPager(this.mViewPager, 0);
        }
        this.mIndicator.setOnMyPagerChangeListener(new ViewPagerIndicator.MyPagerChangeListener() { // from class: com.ocean.playback.PlaybackActivity.15
            @Override // com.ocean.playback.ViewPagerIndicator.MyPagerChangeListener
            public void onPageChange(int i) {
                if (!PlaybackActivity.this.G_isEnterFromLogin || i != 0) {
                    if (i == 0) {
                        PlaybackActivity.this.isDeviceImages = true;
                    } else {
                        PlaybackActivity.this.isDeviceImages = false;
                    }
                    PlaybackActivity.this.ui_updateTopBar();
                    if (PlaybackActivity.this.isDeviceImages) {
                        if (PlaybackActivity.workHandler != null) {
                            PlaybackActivity.this.deviceFragment.startLoadingView(PlaybackActivity.this.getString(R.string.L_Getting_FileList));
                            PlaybackActivity.workHandler.sendEmptyMessage(InputDeviceCompat.SOURCE_TRACKBALL);
                        }
                    } else if (PlaybackActivity.workHandler != null) {
                        PlaybackActivity.workHandler.sendEmptyMessage(65539);
                    }
                } else if (PlaybackActivity.workHandler != null) {
                    PlaybackActivity.workHandler.sendEmptyMessage(PlaybackActivity.WORK_ENTER_FROM_LOGIN);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void device_GetFilesNew() {
        if (this.G_isEnterFromLogin) {
            return;
        }
        if (!this.isGetCamFiles) {
            this.nKeepCamAlvieCount = 0;
            this.cameraRequest.getCameraFileList();
            return;
        }
        device_SetFiles();
    }

    private void device_GetFiles() {
        deviceFileList.clear();
        if (this.isVideoFiles) {
            getCameraFileList(TYPE_MOVIE);
        } else {
            getCameraFileList(TYPE_PHOTO);
        }
        Collections.sort(deviceFileList);
        Collections.reverse(deviceFileList);
        Iterator<CameraFile> it = deviceFileList.iterator();
        while (it.hasNext()) {
            it.next();
        }
        device_reloadTable();
    }

    private void device_SetFiles() {
        if (!this.isVideoFiles) {
            deviceFileList = devicePhotoList;
        } else {
            deviceFileList = deviceVideoList;
        }
        Collections.sort(deviceFileList);
        Collections.reverse(deviceFileList);
        if (!this.isVideoFiles) {
            for (int i = 0; i < devicePhotoList.size(); i++) {
                if (local_ContainPhotoFile(devicePhotoList.get(i).getFileTime() + "_" + devicePhotoList.get(i).getFileName())) {
                    devicePhotoList.get(i).setDownloadProgress(100);
                } else if (devicePhotoList.get(i).getDownloadProgress() == 100) {
                    devicePhotoList.get(i).setDownloadProgress(0);
                }
            }
        } else {
            for (int i2 = 0; i2 < deviceVideoList.size(); i2++) {
                if (local_ContainVideoFile(deviceVideoList.get(i2).getFileTime() + "_" + deviceVideoList.get(i2).getFileName())) {
                    deviceVideoList.get(i2).setDownloadProgress(100);
                } else if (deviceVideoList.get(i2).getDownloadProgress() == 100) {
                    deviceVideoList.get(i2).setDownloadProgress(0);
                }
            }
        }
        device_reloadTable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void device_reloadTable() {
        if (mainHandler != null) {
            mainHandler.sendEmptyMessage(65538);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void local_GetFiles() {
        localPhotoList.clear();
        localVideoList.clear();
        new Thread(new Runnable() { // from class: com.ocean.playback.PlaybackActivity.16
            @Override // java.lang.Runnable
            public void run() {
                PlaybackActivity.this.localFilesBrower.getLocalFiles(null, PlaybackActivity.TYPE_MOVIE, PlaybackActivity.localVideoList);
                PlaybackActivity.this.localFilesBrower.getLocalFiles(null, PlaybackActivity.TYPE_PHOTO, PlaybackActivity.localPhotoList);
                if (!PlaybackActivity.this.isVideoFiles) {
                    PlaybackActivity.localFileList = PlaybackActivity.localPhotoList;
                } else {
                    PlaybackActivity.localFileList = PlaybackActivity.localVideoList;
                }
                PlaybackActivity.this.local_reloadTable();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void local_reloadTable() {
        if (this.isDeviceImages || mainHandler == null) {
            return;
        }
        mainHandler.sendEmptyMessage(65537);
    }

    private boolean local_ContainPhotoFile(String str) {
        if (localPhotoList == null || localPhotoList.size() == 0) {
            return false;
        }
        for (int i = 0; i < localPhotoList.size(); i++) {
            if (localPhotoList.get(i).getFileName().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean local_ContainVideoFile(String str) {
        if (localVideoList == null || localVideoList.size() == 0) {
            return false;
        }
        for (int i = 0; i < localVideoList.size(); i++) {
            if (localVideoList.get(i).getFileName().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private void system_initTimer() {
        this.pSystemTimerTask = new TimerTask() { // from class: com.ocean.playback.PlaybackActivity.17
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (!PlaybackActivity.this.isKeepCamAlive || PlaybackActivity.this.G_isEnterFromLogin) {
                    return;
                }
                PlaybackActivity.access$2108(PlaybackActivity.this);
                if (PlaybackActivity.this.nKeepCamAlvieCount > 20) {
                    PlaybackActivity.this.nKeepCamAlvieCount = 0;
                    PlaybackActivity.this.pSystemTimerHandler.sendEmptyMessage(20);
                }
            }
        };
        this.pSystemTimerHandler = new Handler() { // from class: com.ocean.playback.PlaybackActivity.18
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 20 || PlaybackActivity.this.deviceFragment.isDownLoading) {
                    return;
                }
                PlaybackActivity.this.cameraRequest.getCameraMode();
            }
        };
        this.pSystemTimer = new Timer();
        this.pSystemTimer.schedule(this.pSystemTimerTask, 1000L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long sd_getCapacityLeft() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            StatFs statFs = new StatFs(MyApplication._instance.strSDBasePath);
            long blockCountLong = statFs.getBlockCountLong();
            long blockSizeLong = statFs.getBlockSizeLong();
            long availableBlocksLong = statFs.getAvailableBlocksLong();
            statFs.getFreeBlocksLong();
            long j = ((blockCountLong * blockSizeLong) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
            return ((availableBlocksLong * blockSizeLong) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        return 0L;
    }
}
