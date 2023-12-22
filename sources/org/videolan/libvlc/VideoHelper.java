package org.videolan.libvlc;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import org.videolan.R;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IMedia;
import org.videolan.libvlc.interfaces.IVLCVout;
import org.videolan.libvlc.util.AndroidUtil;
import org.videolan.libvlc.util.DisplayManager;
import org.videolan.libvlc.util.VLCVideoLayout;
/* loaded from: classes.dex */
class VideoHelper implements IVLCVout.OnNewVideoLayoutListener {
    private static final String TAG = "LibVLC/VideoHelper";
    private DisplayManager mDisplayManager;
    private MediaPlayer mMediaPlayer;
    private FrameLayout mVideoSurfaceFrame;
    private MediaPlayer.ScaleType mCurrentScaleType = MediaPlayer.ScaleType.SURFACE_BEST_FIT;
    private int mVideoHeight = 0;
    private int mVideoWidth = 0;
    private int mVideoVisibleHeight = 0;
    private int mVideoVisibleWidth = 0;
    private int mVideoSarNum = 0;
    private int mVideoSarDen = 0;
    private SurfaceView mVideoSurface = null;
    private SurfaceView mSubtitlesSurface = null;
    private TextureView mVideoTexture = null;
    private final Handler mHandler = new Handler();
    private View.OnLayoutChangeListener mOnLayoutChangeListener = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoHelper(MediaPlayer mediaPlayer, VLCVideoLayout vLCVideoLayout, DisplayManager displayManager, boolean z, boolean z2) {
        init(mediaPlayer, vLCVideoLayout, displayManager, z, !z2);
    }

    private void init(MediaPlayer mediaPlayer, VLCVideoLayout vLCVideoLayout, DisplayManager displayManager, boolean z, boolean z2) {
        this.mMediaPlayer = mediaPlayer;
        this.mDisplayManager = displayManager;
        if (this.mDisplayManager == null || this.mDisplayManager.isPrimary()) {
            this.mVideoSurfaceFrame = (FrameLayout) vLCVideoLayout.findViewById(R.id.player_surface_frame);
            if (z2) {
                ViewStub viewStub = (ViewStub) this.mVideoSurfaceFrame.findViewById(R.id.surface_stub);
                this.mVideoSurface = (SurfaceView) (viewStub != null ? viewStub.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.surface_video));
                if (z) {
                    ViewStub viewStub2 = (ViewStub) this.mVideoSurfaceFrame.findViewById(R.id.subtitles_surface_stub);
                    this.mSubtitlesSurface = (SurfaceView) (viewStub2 != null ? viewStub2.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.surface_subtitles));
                    this.mSubtitlesSurface.setZOrderMediaOverlay(true);
                    this.mSubtitlesSurface.getHolder().setFormat(-3);
                    return;
                }
                return;
            }
            ViewStub viewStub3 = (ViewStub) this.mVideoSurfaceFrame.findViewById(R.id.texture_stub);
            this.mVideoTexture = (TextureView) (viewStub3 != null ? viewStub3.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.texture_video));
        } else if (this.mDisplayManager.getPresentation() != null) {
            this.mVideoSurfaceFrame = this.mDisplayManager.getPresentation().getSurfaceFrame();
            this.mVideoSurface = this.mDisplayManager.getPresentation().getSurfaceView();
            this.mSubtitlesSurface = this.mDisplayManager.getPresentation().getSubtitlesSurfaceView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release() {
        if (this.mMediaPlayer.getVLCVout().areViewsAttached()) {
            detachViews();
        }
        this.mMediaPlayer = null;
        this.mVideoSurfaceFrame = null;
        this.mHandler.removeCallbacks(null);
        this.mVideoSurface = null;
        this.mSubtitlesSurface = null;
        this.mVideoTexture = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachViews() {
        if (this.mVideoSurface == null && this.mVideoTexture == null) {
            return;
        }
        IVLCVout vLCVout = this.mMediaPlayer.getVLCVout();
        if (this.mVideoSurface != null) {
            vLCVout.setVideoView(this.mVideoSurface);
            if (this.mSubtitlesSurface != null) {
                vLCVout.setSubtitlesView(this.mSubtitlesSurface);
            }
        } else if (this.mVideoTexture == null) {
            return;
        } else {
            vLCVout.setVideoView(this.mVideoTexture);
        }
        vLCVout.attachViews(this);
        if (this.mOnLayoutChangeListener == null) {
            this.mOnLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: org.videolan.libvlc.VideoHelper.1
                private final Runnable runnable = new Runnable() { // from class: org.videolan.libvlc.VideoHelper.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoHelper.this.mVideoSurfaceFrame == null || VideoHelper.this.mOnLayoutChangeListener == null) {
                            return;
                        }
                        VideoHelper.this.updateVideoSurfaces();
                    }
                };

                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
                        return;
                    }
                    VideoHelper.this.mHandler.removeCallbacks(this.runnable);
                    VideoHelper.this.mHandler.post(this.runnable);
                }
            };
        }
        this.mVideoSurfaceFrame.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        this.mMediaPlayer.setVideoTrackEnabled(true);
    }

    void detachViews() {
        if (this.mOnLayoutChangeListener != null && this.mVideoSurfaceFrame != null) {
            this.mVideoSurfaceFrame.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
            this.mOnLayoutChangeListener = null;
        }
        this.mMediaPlayer.setVideoTrackEnabled(false);
        this.mMediaPlayer.getVLCVout().detachViews();
    }

    private void changeMediaPlayerLayout(int i, int i2) {
        String str;
        if (this.mMediaPlayer.isReleased()) {
            return;
        }
        switch (this.mCurrentScaleType) {
            case SURFACE_BEST_FIT:
                this.mMediaPlayer.setAspectRatio(null);
                this.mMediaPlayer.setScale(0.0f);
                return;
            case SURFACE_FIT_SCREEN:
            case SURFACE_FILL:
                IMedia.VideoTrack currentVideoTrack = this.mMediaPlayer.getCurrentVideoTrack();
                if (currentVideoTrack == null) {
                    return;
                }
                boolean z = currentVideoTrack.orientation == 5 || currentVideoTrack.orientation == 6;
                if (this.mCurrentScaleType == MediaPlayer.ScaleType.SURFACE_FIT_SCREEN) {
                    int i3 = currentVideoTrack.width;
                    int i4 = currentVideoTrack.height;
                    if (z) {
                        i4 = i3;
                        i3 = i4;
                    }
                    if (currentVideoTrack.sarNum != currentVideoTrack.sarDen) {
                        i3 = (i3 * currentVideoTrack.sarNum) / currentVideoTrack.sarDen;
                    }
                    float f = i3;
                    float f2 = i4;
                    float f3 = i;
                    float f4 = i2;
                    this.mMediaPlayer.setScale(f3 / f4 >= f / f2 ? f3 / f : f4 / f2);
                    this.mMediaPlayer.setAspectRatio(null);
                    return;
                }
                this.mMediaPlayer.setScale(0.0f);
                MediaPlayer mediaPlayer = this.mMediaPlayer;
                if (z) {
                    str = "" + i2 + ":" + i;
                } else {
                    str = "" + i + ":" + i2;
                }
                mediaPlayer.setAspectRatio(str);
                return;
            case SURFACE_16_9:
                this.mMediaPlayer.setAspectRatio("16:9");
                this.mMediaPlayer.setScale(0.0f);
                return;
            case SURFACE_4_3:
                this.mMediaPlayer.setAspectRatio("4:3");
                this.mMediaPlayer.setScale(0.0f);
                return;
            case SURFACE_ORIGINAL:
                this.mMediaPlayer.setAspectRatio(null);
                this.mMediaPlayer.setScale(1.0f);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    public void updateVideoSurfaces() {
        int width;
        int height;
        double d;
        double d2;
        if (this.mMediaPlayer == null || this.mMediaPlayer.isReleased() || !this.mMediaPlayer.getVLCVout().areViewsAttached()) {
            return;
        }
        boolean z = false;
        boolean z2 = this.mDisplayManager == null || this.mDisplayManager.isPrimary();
        Activity activity = (z2 && (this.mVideoSurfaceFrame.getContext() instanceof Activity)) ? (Activity) this.mVideoSurfaceFrame.getContext() : null;
        if (activity != null) {
            width = this.mVideoSurfaceFrame.getWidth();
            height = this.mVideoSurfaceFrame.getHeight();
        } else if (this.mDisplayManager == null || this.mDisplayManager.getPresentation() == null || this.mDisplayManager.getPresentation().getWindow() == null) {
            return;
        } else {
            width = this.mDisplayManager.getPresentation().getWindow().getDecorView().getWidth();
            height = this.mDisplayManager.getPresentation().getWindow().getDecorView().getHeight();
        }
        if (width * height == 0) {
            Log.e(TAG, "Invalid surface size");
            return;
        }
        this.mMediaPlayer.getVLCVout().setWindowSize(width, height);
        View view = this.mVideoSurface;
        if (view == null) {
            view = this.mVideoTexture;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.mVideoWidth * this.mVideoHeight == 0 || (AndroidUtil.isNougatOrLater && activity != null && activity.isInPictureInPictureMode())) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            view.setLayoutParams(layoutParams);
            if (this.mSubtitlesSurface != null) {
                this.mSubtitlesSurface.setLayoutParams(layoutParams);
            }
            ViewGroup.LayoutParams layoutParams2 = this.mVideoSurfaceFrame.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -1;
            this.mVideoSurfaceFrame.setLayoutParams(layoutParams2);
            if (this.mVideoWidth * this.mVideoHeight == 0) {
                changeMediaPlayerLayout(width, height);
                return;
            }
            return;
        }
        if (layoutParams.width == layoutParams.height && layoutParams.width == -1) {
            this.mMediaPlayer.setAspectRatio(null);
            this.mMediaPlayer.setScale(0.0f);
        }
        double d3 = width;
        double d4 = height;
        if (z2 && this.mVideoSurfaceFrame.getResources().getConfiguration().orientation == 1) {
            z = true;
        }
        if ((width > height && z) || (width < height && !z)) {
            d3 = d4;
            d4 = d3;
        }
        if (this.mVideoSarDen == this.mVideoSarNum) {
            d = this.mVideoVisibleWidth;
            double d5 = this.mVideoVisibleWidth;
            double d6 = this.mVideoVisibleHeight;
            Double.isNaN(d5);
            Double.isNaN(d6);
            d2 = d5 / d6;
        } else {
            double d7 = this.mVideoVisibleWidth;
            double d8 = this.mVideoSarNum;
            Double.isNaN(d7);
            Double.isNaN(d8);
            double d9 = d7 * d8;
            double d10 = this.mVideoSarDen;
            Double.isNaN(d10);
            d = d9 / d10;
            double d11 = this.mVideoVisibleHeight;
            Double.isNaN(d11);
            d2 = d / d11;
        }
        double d12 = d3 / d4;
        switch (this.mCurrentScaleType) {
            case SURFACE_BEST_FIT:
                if (d12 >= d2) {
                    d3 = d4 * d2;
                    break;
                } else {
                    d4 = d3 / d2;
                    break;
                }
            case SURFACE_FIT_SCREEN:
                if (d12 < d2) {
                    d3 = d4 * d2;
                    break;
                } else {
                    d4 = d3 / d2;
                    break;
                }
            case SURFACE_16_9:
                if (d12 >= 1.7777777777777777d) {
                    d3 = d4 * 1.7777777777777777d;
                    break;
                } else {
                    d4 = d3 / 1.7777777777777777d;
                    break;
                }
            case SURFACE_4_3:
                if (d12 >= 1.3333333333333333d) {
                    d3 = d4 * 1.3333333333333333d;
                    break;
                } else {
                    d4 = d3 / 1.3333333333333333d;
                    break;
                }
            case SURFACE_ORIGINAL:
                d4 = this.mVideoVisibleHeight;
                d3 = d;
                break;
        }
        double d13 = this.mVideoWidth;
        Double.isNaN(d13);
        double d14 = d3 * d13;
        double d15 = this.mVideoVisibleWidth;
        Double.isNaN(d15);
        layoutParams.width = (int) Math.ceil(d14 / d15);
        double d16 = this.mVideoHeight;
        Double.isNaN(d16);
        double d17 = d4 * d16;
        double d18 = this.mVideoVisibleHeight;
        Double.isNaN(d18);
        layoutParams.height = (int) Math.ceil(d17 / d18);
        view.setLayoutParams(layoutParams);
        if (this.mSubtitlesSurface != null) {
            this.mSubtitlesSurface.setLayoutParams(layoutParams);
        }
        view.invalidate();
        if (this.mSubtitlesSurface != null) {
            this.mSubtitlesSurface.invalidate();
        }
    }

    @Override // org.videolan.libvlc.interfaces.IVLCVout.OnNewVideoLayoutListener
    @TargetApi(17)
    public void onNewVideoLayout(IVLCVout iVLCVout, int i, int i2, int i3, int i4, int i5, int i6) {
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        this.mVideoVisibleWidth = i3;
        this.mVideoVisibleHeight = i4;
        this.mVideoSarNum = i5;
        this.mVideoSarDen = i6;
        updateVideoSurfaces();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVideoScale(MediaPlayer.ScaleType scaleType) {
        this.mCurrentScaleType = scaleType;
        updateVideoSurfaces();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaPlayer.ScaleType getVideoScale() {
        return this.mCurrentScaleType;
    }
}
