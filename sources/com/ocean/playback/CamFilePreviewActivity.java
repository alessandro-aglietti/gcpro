package com.ocean.playback;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.ocean.cmdrequest.CameraRequest;
import com.ocean.gamecamerapro2.MyApplication;
import com.ocean.gamecamerapro2.R;
import com.ocean.obj.CameraFile;
import com.ocean.widget.AlertDialog;
import com.ocean.widget.RotateLoading;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IVLCVout;
/* loaded from: classes.dex */
public class CamFilePreviewActivity extends Activity implements SurfaceHolder.Callback, IVLCVout.OnNewVideoLayoutListener, CameraRequest.OnCameraRequestListener, View.OnTouchListener {
    private static final int CMD_DELETE_FILE = 65537;
    private static final int MAIN_DEL_FILE = 1;
    private static final int MSG_DELAY_OPEN_STREAM = 4;
    private static final int MSG_KEEP_CAM_ALVIE = 20;
    private static final String PHOTO_THUMB_START = "http://192.168.8.120/DCIM/PHOTO/";
    private static final String TAG = "[CamFilePreview]:";
    private static final String VIDEO_THUMB_START = "http://192.168.8.120/DCIM/MOVIE/";
    private Button btnPhotoNext;
    private Button btnPhotoPrev;
    private Button btnVideoNext;
    private Button btnVideoPlay;
    private Button btnVideoPrev;
    private CameraRequest cameraRequest;
    private MyDeleteHandler delHandler;
    private MyMainHandler delMainHandler;
    private HandlerThread delThread;
    private SurfaceHolder holderSurface;
    private ImageView imgBack2Playback;
    private ImageView imgDelete;
    private RelativeLayout layoutLoading;
    private RelativeLayout layoutVideoTime;
    private float mCurPosX;
    private float mCurPosY;
    private float mPosX;
    private float mPosY;
    private long nAllTime;
    private int nCamFilePos;
    private int nCamFileSize;
    private long nCurTime;
    private long nOldTime;
    private int nVideoH;
    private int nVideoW;
    private ImageView photoCamFile;
    private ProgressBar processVideo;
    private String strCamFileUrl;
    private TextView txtLoading;
    private TextView txtVideoAllTime;
    private TextView txtVideoCurTime;
    private SurfaceView videoCamFile;
    private RotateLoading waitDialog;
    private ArrayList<CameraFile> fileList = null;
    private Timer pSystemTimer = null;
    private TimerTask pSystemTimerTask = null;
    private Handler pSystemTimerHandler = null;
    private boolean isKeepCamAlive = true;
    private int nKeepCamAlvieCount = 0;
    private LibVLC libVLC = null;
    private MediaPlayer mediaPlayer = null;
    private IVLCVout outVLC = null;
    private ArrayList<String> options = new ArrayList<>();

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
    public void camDidSetModeSucc(int i) {
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

    static /* synthetic */ int access$708(CamFilePreviewActivity camFilePreviewActivity) {
        int i = camFilePreviewActivity.nKeepCamAlvieCount;
        camFilePreviewActivity.nKeepCamAlvieCount = i + 1;
        return i;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.activity_camfilepreview);
        SharedPreferences sharedPreferences = getSharedPreferences(getString(R.string.app_name), 0);
        this.fileList = MyApplication._instance.fileList;
        this.nCamFileSize = this.fileList.size();
        this.nCamFilePos = sharedPreferences.getInt("Preview Index", 0);
        this.strCamFileUrl = this.fileList.get(this.nCamFilePos).getFileDownloadPath();
        this.delThread = new HandlerThread(TAG);
        this.delThread.start();
        this.delHandler = new MyDeleteHandler(this.delThread.getLooper(), this);
        this.delMainHandler = new MyMainHandler(this);
        initVideoView();
        initCameraRequest();
        system_initTimer();
        initPlaybackTopBar();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isKeepCamAlive = true;
        this.nKeepCamAlvieCount = 0;
        playCamFile();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.isKeepCamAlive = false;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.isKeepCamAlive = false;
        try {
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
            this.outVLC.detachViews();
            this.outVLC = null;
            this.holderSurface = null;
            this.videoCamFile = null;
            this.libVLC.release();
            this.libVLC = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            btnBack2Playback();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void btnBack2Playback() {
        if (this.mediaPlayer != null && this.mediaPlayer.isPlaying()) {
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        finish();
    }

    private void initCameraRequest() {
        this.cameraRequest = new CameraRequest(this);
        this.cameraRequest.setOnCameraRequestListener(this);
        this.nKeepCamAlvieCount = 0;
    }

    @Override // com.ocean.cmdrequest.CameraRequest.OnCameraRequestListener
    public void camDidSetModeFail(int i) {
        camRequestError("Failed to set modes");
    }

    private void camRequestError(String str) {
        Toast.makeText(this, str, 0).show();
    }

    private void initPlaybackTopBar() {
        this.layoutLoading = (RelativeLayout) findViewById(R.id.layout_loading);
        this.waitDialog = (RotateLoading) findViewById(R.id.wait_loading);
        this.txtLoading = (TextView) findViewById(R.id.txt_loading);
        this.photoCamFile = (ImageView) findViewById(R.id.photo_cam_file);
        this.btnPhotoPrev = (Button) findViewById(R.id.photo_cam_prev);
        this.btnPhotoPrev.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CamFilePreviewActivity.this.photoViewPrev();
            }
        });
        this.btnPhotoNext = (Button) findViewById(R.id.photo_cam_next);
        this.btnPhotoNext.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CamFilePreviewActivity.this.photoViewNext();
            }
        });
        this.imgBack2Playback = (ImageView) findViewById(R.id.back_button);
        this.imgBack2Playback.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CamFilePreviewActivity.this.btnBack2Playback();
            }
        });
        this.imgDelete = (ImageView) findViewById(R.id.delete_button);
        this.imgDelete.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CamFilePreviewActivity.this.btnDeleteFile();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void photoViewNext() {
        if (this.fileList.size() == 0) {
            Toast.makeText(this, getString(R.string.nofile), 0).show();
            return;
        }
        this.nCamFilePos++;
        if (this.nCamFilePos >= this.nCamFileSize) {
            this.nCamFilePos = 0;
        }
        this.strCamFileUrl = this.fileList.get(this.nCamFilePos).getFileDownloadPath();
        playCamFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void photoViewPrev() {
        if (this.fileList.size() == 0) {
            Toast.makeText(this, getString(R.string.nofile), 0).show();
            return;
        }
        this.nCamFilePos--;
        if (this.nCamFilePos < 0) {
            this.nCamFilePos = this.nCamFileSize - 1;
        }
        this.strCamFileUrl = this.fileList.get(this.nCamFilePos).getFileDownloadPath();
        playCamFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void btnDeleteFile() {
        if (this.fileList.size() == 0) {
            Toast.makeText(this, getString(R.string.nofile), 0).show();
        } else {
            new AlertDialog(this).builder().setTitle(getString(R.string.my_dialog_title)).setMsg(getString(R.string.delete_dialog)).setCancelable(false).setNegativeButton(getString(R.string.no), new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                }
            }).setPositiveButton(getString(R.string.yes), new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CamFilePreviewActivity.this.vlcStopMedia();
                    CamFilePreviewActivity.this.delHandler.sendEmptyMessage(CamFilePreviewActivity.CMD_DELETE_FILE);
                }
            }).show();
        }
    }

    private void system_initTimer() {
        this.pSystemTimerTask = new TimerTask() { // from class: com.ocean.playback.CamFilePreviewActivity.7
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (CamFilePreviewActivity.this.isKeepCamAlive) {
                    CamFilePreviewActivity.access$708(CamFilePreviewActivity.this);
                    if (CamFilePreviewActivity.this.nKeepCamAlvieCount > 20) {
                        CamFilePreviewActivity.this.nKeepCamAlvieCount = 0;
                        CamFilePreviewActivity.this.pSystemTimerHandler.sendEmptyMessage(20);
                    }
                }
            }
        };
        this.pSystemTimerHandler = new Handler() { // from class: com.ocean.playback.CamFilePreviewActivity.8
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 20) {
                    CamFilePreviewActivity.this.cameraRequest.getCameraMode();
                } else if (message.what == 4) {
                    CamFilePreviewActivity.this.vlcOpenStream();
                }
            }
        };
        this.pSystemTimer = new Timer();
        this.pSystemTimer.schedule(this.pSystemTimerTask, 1000L, 1000L);
    }

    private void initVideoView() {
        try {
            vlcInit();
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(getApplicationContext(), "Error creating player!", 1).show();
        }
    }

    private void vlcInit() {
        this.videoCamFile = (SurfaceView) findViewById(R.id.video_cam_file);
        this.videoCamFile.setKeepScreenOn(true);
        this.videoCamFile.setVisibility(0);
        this.holderSurface = this.videoCamFile.getHolder();
        this.holderSurface.addCallback(this);
        this.options.add("--aout=opensles");
        this.options.add("--audio-time-stretch");
        this.options.add("-vvv");
        this.libVLC = new LibVLC(getApplication(), this.options);
        if (this.mediaPlayer != null && this.mediaPlayer.isPlaying()) {
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        this.mediaPlayer = new MediaPlayer(this.libVLC);
        this.outVLC = this.mediaPlayer.getVLCVout();
        this.mediaPlayer.setEventListener(new MediaPlayer.EventListener() { // from class: com.ocean.playback.CamFilePreviewActivity.9
            @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent.Listener
            public void onEvent(MediaPlayer.Event event) {
                if (event.type == 259) {
                    CamFilePreviewActivity.this.txtLoading.setText(String.format("%d%%", Integer.valueOf((int) event.getBuffering())));
                    if (CamFilePreviewActivity.this.waitDialog != null && !CamFilePreviewActivity.this.waitDialog.isStart()) {
                        CamFilePreviewActivity.this.waitDialog.start();
                        CamFilePreviewActivity.this.waitDialog.setVisibility(0);
                        CamFilePreviewActivity.this.layoutLoading.setVisibility(0);
                    }
                }
                if (event.type == 267) {
                    if (CamFilePreviewActivity.this.waitDialog != null && CamFilePreviewActivity.this.waitDialog.isStart()) {
                        CamFilePreviewActivity.this.waitDialog.stop();
                        CamFilePreviewActivity.this.waitDialog.setVisibility(8);
                        CamFilePreviewActivity.this.layoutLoading.setVisibility(8);
                    }
                    try {
                        long timeChanged = event.getTimeChanged();
                        if (timeChanged > CamFilePreviewActivity.this.nCurTime) {
                            CamFilePreviewActivity.this.nCurTime = timeChanged;
                            Log.e(CamFilePreviewActivity.TAG, "play: " + ((int) (CamFilePreviewActivity.this.nCurTime / 1000)) + " / total: " + ((int) (CamFilePreviewActivity.this.nAllTime / 1000)));
                            CamFilePreviewActivity.this.processVideo.setProgress((int) CamFilePreviewActivity.this.nCurTime);
                            CamFilePreviewActivity.this.txtVideoCurTime.setText(CamFilePreviewActivity.this.formatVideoTime(CamFilePreviewActivity.this.nCurTime));
                        }
                    } catch (Exception e) {
                        Log.e(CamFilePreviewActivity.TAG, e.toString());
                    }
                }
                if (event.type == 262 && CamFilePreviewActivity.this.mediaPlayer.getPlayerState() == 6) {
                    CamFilePreviewActivity.this.nCurTime = 0L;
                    CamFilePreviewActivity.this.processVideo.setProgress(0);
                    CamFilePreviewActivity.this.txtVideoCurTime.setText(CamFilePreviewActivity.this.formatVideoTime(CamFilePreviewActivity.this.nCurTime));
                    CamFilePreviewActivity.this.mediaPlayer.setTime(0L);
                    CamFilePreviewActivity.this.mediaPlayer.stop();
                    CamFilePreviewActivity.this.waitDialog.stop();
                    CamFilePreviewActivity.this.waitDialog.setVisibility(8);
                    CamFilePreviewActivity.this.layoutLoading.setVisibility(8);
                    CamFilePreviewActivity.this.btnVideoPlay.setBackgroundResource(R.drawable.btn_start);
                }
            }
        });
        this.processVideo = (ProgressBar) findViewById(R.id.video_cam_process);
        this.btnVideoPlay = (Button) findViewById(R.id.video_cam_control);
        this.btnVideoPlay.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CamFilePreviewActivity.this.fileList.size() != 0) {
                    if (CamFilePreviewActivity.this.mediaPlayer.isPlaying()) {
                        CamFilePreviewActivity.this.btnVideoPlay.setBackgroundResource(R.drawable.btn_start);
                        CamFilePreviewActivity.this.mediaPlayer.pause();
                        if (CamFilePreviewActivity.this.waitDialog != null) {
                            CamFilePreviewActivity.this.waitDialog.stop();
                            CamFilePreviewActivity.this.waitDialog.setVisibility(8);
                            CamFilePreviewActivity.this.layoutLoading.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    CamFilePreviewActivity.this.btnVideoPlay.setBackgroundResource(R.drawable.btn_pause);
                    CamFilePreviewActivity.this.mediaPlayer.play();
                    if (CamFilePreviewActivity.this.waitDialog != null) {
                        CamFilePreviewActivity.this.waitDialog.start();
                        CamFilePreviewActivity.this.waitDialog.setVisibility(0);
                        CamFilePreviewActivity.this.layoutLoading.setVisibility(0);
                        return;
                    }
                    return;
                }
                Toast.makeText(CamFilePreviewActivity.this, CamFilePreviewActivity.this.getString(R.string.nofile), 0).show();
            }
        });
        this.btnVideoPrev = (Button) findViewById(R.id.video_cam_prev);
        this.btnVideoPrev.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CamFilePreviewActivity.this.fileList.size() != 0) {
                    CamFilePreviewActivity.this.vlcPlayPrev();
                } else {
                    Toast.makeText(CamFilePreviewActivity.this, CamFilePreviewActivity.this.getString(R.string.nofile), 0).show();
                }
            }
        });
        this.btnVideoNext = (Button) findViewById(R.id.video_cam_next);
        this.btnVideoNext.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.CamFilePreviewActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CamFilePreviewActivity.this.fileList.size() != 0) {
                    CamFilePreviewActivity.this.vlcPlayNext();
                } else {
                    Toast.makeText(CamFilePreviewActivity.this, CamFilePreviewActivity.this.getString(R.string.nofile), 0).show();
                }
            }
        });
        this.layoutVideoTime = (RelativeLayout) findViewById(R.id.layout_video_time);
        this.txtVideoCurTime = (TextView) findViewById(R.id.txt_video_cur_time);
        this.txtVideoAllTime = (TextView) findViewById(R.id.txt_video_all_time);
    }

    private void vlcSetMedia(String str) {
        Media media = new Media(this.libVLC, Uri.parse(str));
        media.setHWDecoderEnabled(true, true);
        media.addOption(":file-caching=6000");
        media.addOption(":live-caching=6000");
        media.addOption(":network-caching=6000");
        media.addOption(":sout-mux-caching=6000");
        media.addOption(":cr-average=10000");
        media.addOption(":codec=mediacodec,iomx,all");
        this.mediaPlayer.setMedia(media);
        media.release();
    }

    private void vlcPlayMedia() {
        this.mediaPlayer.setRate(0.8f);
        this.mediaPlayer.play();
    }

    private void vlcPauseMedia() {
        this.mediaPlayer.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vlcStopMedia() {
        this.mediaPlayer.stop();
        this.videoCamFile.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vlcOpenStream() {
        this.videoCamFile.setVisibility(0);
        vlcPlayMedia();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vlcPlayNext() {
        vlcStopMedia();
        this.nCamFilePos++;
        if (this.nCamFilePos >= this.nCamFileSize) {
            this.nCamFilePos = 0;
        }
        this.strCamFileUrl = this.fileList.get(this.nCamFilePos).getFileDownloadPath();
        playCamFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vlcPlayPrev() {
        vlcStopMedia();
        this.nCamFilePos--;
        if (this.nCamFilePos < 0) {
            this.nCamFilePos = this.nCamFileSize - 1;
        }
        this.strCamFileUrl = this.fileList.get(this.nCamFilePos).getFileDownloadPath();
        playCamFile();
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
        if (iVLCVout == this.outVLC) {
            this.nAllTime = this.mediaPlayer.getLength();
            this.nCurTime = 0L;
            this.txtVideoCurTime.setText(formatVideoTime(this.nCurTime));
            this.txtVideoAllTime.setText(formatVideoTime(this.nAllTime));
            this.processVideo.setMax((int) this.nAllTime);
        }
    }

    private void setSize(int i, int i2) {
        this.nVideoW = i;
        this.nVideoH = i2;
        if (this.nVideoW * this.nVideoH <= 1 || this.holderSurface == null || this.videoCamFile == null) {
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
        ViewGroup.LayoutParams layoutParams = this.videoCamFile.getLayoutParams();
        layoutParams.width = width;
        layoutParams.height = height;
        this.videoCamFile.setLayoutParams(layoutParams);
        this.videoCamFile.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatVideoTime(long j) {
        long j2 = j - ((j / 3600000) * 3600000);
        long j3 = j2 / 60000;
        return String.format("%02d:%02d", Long.valueOf(j3), Long.valueOf((j2 - (60000 * j3)) / 1000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playCamFile() {
        if (this.strCamFileUrl.contains("MOV") || this.strCamFileUrl.contains("mov") || this.strCamFileUrl.contains("MP4") || this.strCamFileUrl.contains("mp4")) {
            this.videoCamFile.setVisibility(0);
            this.layoutVideoTime.setVisibility(0);
            this.btnVideoPlay.setBackgroundResource(R.drawable.btn_pause);
            this.btnVideoPlay.setVisibility(0);
            this.btnVideoNext.setVisibility(0);
            this.btnVideoPrev.setVisibility(0);
            this.photoCamFile.setVisibility(8);
            this.btnPhotoPrev.setVisibility(8);
            this.btnPhotoNext.setVisibility(8);
            if (!this.fileList.get(this.nCamFilePos).getThumbDownloaded()) {
                this.videoCamFile.setVisibility(4);
                this.waitDialog.stop();
                this.waitDialog.setVisibility(8);
                this.layoutLoading.setVisibility(8);
                Toast.makeText(this, getString(R.string.L_FILE_ERROR), 1).show();
                return;
            }
            this.waitDialog.start();
            this.waitDialog.setVisibility(0);
            this.layoutLoading.setVisibility(0);
            vlcSetMedia(this.strCamFileUrl);
            this.pSystemTimerHandler.sendEmptyMessageDelayed(4, 50L);
            return;
        }
        this.videoCamFile.setVisibility(8);
        this.layoutVideoTime.setVisibility(8);
        this.btnVideoPlay.setVisibility(8);
        this.btnVideoNext.setVisibility(8);
        this.btnVideoPrev.setVisibility(8);
        this.photoCamFile.setVisibility(0);
        this.btnPhotoPrev.setVisibility(0);
        this.btnPhotoNext.setVisibility(0);
        ImageLoader.getInstance().loadImage(this.strCamFileUrl, new ImageLoadingListener() { // from class: com.ocean.playback.CamFilePreviewActivity.13
            @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public void onLoadingStarted(String str, View view) {
                CamFilePreviewActivity.this.waitDialog.start();
                CamFilePreviewActivity.this.waitDialog.setVisibility(0);
                CamFilePreviewActivity.this.layoutLoading.setVisibility(0);
            }

            @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public void onLoadingFailed(String str, View view, FailReason failReason) {
                if (CamFilePreviewActivity.this.waitDialog != null) {
                    CamFilePreviewActivity.this.waitDialog.stop();
                    CamFilePreviewActivity.this.waitDialog.setVisibility(8);
                    CamFilePreviewActivity.this.layoutLoading.setVisibility(8);
                }
            }

            @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public void onLoadingComplete(String str, View view, Bitmap bitmap) {
                if (CamFilePreviewActivity.this.waitDialog != null) {
                    CamFilePreviewActivity.this.waitDialog.stop();
                    CamFilePreviewActivity.this.waitDialog.setVisibility(8);
                    CamFilePreviewActivity.this.layoutLoading.setVisibility(8);
                }
                CamFilePreviewActivity.this.photoCamFile.setImageBitmap(bitmap);
            }

            @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public void onLoadingCancelled(String str, View view) {
                if (CamFilePreviewActivity.this.waitDialog != null) {
                    CamFilePreviewActivity.this.waitDialog.stop();
                    CamFilePreviewActivity.this.waitDialog.setVisibility(8);
                    CamFilePreviewActivity.this.layoutLoading.setVisibility(8);
                }
            }
        });
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.mPosX = motionEvent.getX();
                this.mPosY = motionEvent.getY();
                return true;
            case 1:
                if (this.mCurPosX - this.mPosX > 0.0f && Math.abs(this.mCurPosX - this.mPosX) > 300.0f && Math.abs(this.mCurPosY - this.mPosY) < 100.0f) {
                    vlcPlayNext();
                    return true;
                } else if (this.mCurPosX - this.mPosX >= 0.0f || Math.abs(this.mCurPosX - this.mPosX) <= 300.0f || Math.abs(this.mCurPosY - this.mPosY) >= 100.0f) {
                    return true;
                } else {
                    vlcPlayPrev();
                    return true;
                }
            case 2:
                this.mCurPosX = motionEvent.getX();
                this.mCurPosY = motionEvent.getY();
                return true;
            default:
                return true;
        }
    }

    /* loaded from: classes.dex */
    public class MyMainHandler extends Handler {
        private WeakReference<CamFilePreviewActivity> mOwner;

        public MyMainHandler(CamFilePreviewActivity camFilePreviewActivity) {
            this.mOwner = new WeakReference<>(camFilePreviewActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CamFilePreviewActivity camFilePreviewActivity = this.mOwner.get();
            if (message.what != 1) {
                return;
            }
            camFilePreviewActivity.vlcStopMedia();
            camFilePreviewActivity.fileList.remove(camFilePreviewActivity.nCamFilePos);
            camFilePreviewActivity.nCamFileSize = camFilePreviewActivity.fileList.size();
            if (camFilePreviewActivity.nCamFileSize == 0) {
                CamFilePreviewActivity.this.nCurTime = 0L;
                CamFilePreviewActivity.this.nAllTime = 0L;
                CamFilePreviewActivity.this.processVideo.setProgress(0);
                CamFilePreviewActivity.this.vlcStopMedia();
                CamFilePreviewActivity.this.photoCamFile.setVisibility(8);
                if (CamFilePreviewActivity.this.waitDialog != null && CamFilePreviewActivity.this.waitDialog.isStart()) {
                    CamFilePreviewActivity.this.waitDialog.stop();
                    CamFilePreviewActivity.this.waitDialog.setVisibility(8);
                    CamFilePreviewActivity.this.layoutLoading.setVisibility(8);
                }
                Toast.makeText(camFilePreviewActivity, CamFilePreviewActivity.this.getString(R.string.nofile), 0).show();
                return;
            }
            if (camFilePreviewActivity.nCamFilePos >= camFilePreviewActivity.nCamFileSize) {
                camFilePreviewActivity.nCamFilePos = 0;
            }
            if (camFilePreviewActivity.nCamFileSize > 0) {
                camFilePreviewActivity.strCamFileUrl = ((CameraFile) camFilePreviewActivity.fileList.get(camFilePreviewActivity.nCamFilePos)).getFileDownloadPath();
                camFilePreviewActivity.playCamFile();
            }
        }
    }

    /* loaded from: classes.dex */
    public class MyDeleteHandler extends Handler {
        private WeakReference<CamFilePreviewActivity> mOwner;

        public MyDeleteHandler(Looper looper, CamFilePreviewActivity camFilePreviewActivity) {
            super(looper);
            this.mOwner = new WeakReference<>(camFilePreviewActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CamFilePreviewActivity camFilePreviewActivity = this.mOwner.get();
            if (message.what != CamFilePreviewActivity.CMD_DELETE_FILE) {
                return;
            }
            if (camFilePreviewActivity.fileList.size() != 0) {
                String fileName = ((CameraFile) camFilePreviewActivity.fileList.get(camFilePreviewActivity.nCamFilePos)).getFileName();
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(fileName);
                if (camFilePreviewActivity.cameraRequest.delCameraFile(arrayList)) {
                    camFilePreviewActivity.delMainHandler.sendEmptyMessage(1);
                    return;
                }
                return;
            }
            Toast.makeText(CamFilePreviewActivity.this, CamFilePreviewActivity.this.getString(R.string.nofile), 0).show();
        }
    }
}
