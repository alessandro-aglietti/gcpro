package org.videolan.libvlc;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.File;
import java.io.IOException;
import org.videolan.libvlc.AWindow;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import org.videolan.libvlc.interfaces.ILibVLC;
import org.videolan.libvlc.interfaces.IMedia;
import org.videolan.libvlc.interfaces.IVLCVout;
import org.videolan.libvlc.util.AndroidUtil;
import org.videolan.libvlc.util.DisplayManager;
import org.videolan.libvlc.util.VLCUtil;
import org.videolan.libvlc.util.VLCVideoLayout;
/* loaded from: classes.dex */
public class MediaPlayer extends VLCObject<Event> {
    public static final int SURFACE_SCALES_COUNT = ScaleType.values().length;
    private AssetFileDescriptor mAfd;
    private final AudioDeviceCallback mAudioDeviceCallback;
    private boolean mAudioDigitalOutputEnabled;
    private String mAudioOutput;
    private String mAudioOutputDevice;
    private String mAudioPlugOutputDevice;
    private final BroadcastReceiver mAudioPlugReceiver;
    private boolean mAudioPlugRegistered;
    private boolean mAudioReset;
    private boolean mCanDoPassthrough;
    Handler mHandlerMainThread;
    private boolean mListenAudioPlug;
    private IMedia mMedia;
    private boolean mPlayRequested;
    private boolean mPlaying;
    private RendererItem mRenderer;
    private VideoHelper mVideoHelper;
    private int mVoutCount;
    private final AWindow mWindow;

    /* loaded from: classes.dex */
    public interface EventListener extends AbstractVLCEvent.Listener<Event> {
    }

    /* loaded from: classes.dex */
    public static class Navigate {
        public static final int Activate = 0;
        public static final int Down = 2;
        public static final int Left = 3;
        public static final int Right = 4;
        public static final int Up = 1;
    }

    /* loaded from: classes.dex */
    public static class Position {
        public static final int Bottom = 6;
        public static final int BottomLeft = 7;
        public static final int BottomRight = 8;
        public static final int Center = 0;
        public static final int Disable = -1;
        public static final int Left = 1;
        public static final int Right = 2;
        public static final int Top = 3;
        public static final int TopLeft = 4;
        public static final int TopRight = 5;
    }

    /* loaded from: classes.dex */
    public enum ScaleType {
        SURFACE_BEST_FIT,
        SURFACE_FIT_SCREEN,
        SURFACE_FILL,
        SURFACE_16_9,
        SURFACE_4_3,
        SURFACE_ORIGINAL
    }

    private boolean isEncoded(int i) {
        if (i != 14) {
            switch (i) {
                case 5:
                case 6:
                case 7:
                case 8:
                    return true;
                default:
                    return false;
            }
        }
        return true;
    }

    private native boolean nativeAddSlave(int i, String str, boolean z);

    private native String nativeGetAspectRatio();

    private native long nativeGetAudioDelay();

    private native int nativeGetAudioTrack();

    private native TrackDescription[] nativeGetAudioTracks();

    private native int nativeGetAudioTracksCount();

    private native Chapter[] nativeGetChapters(int i);

    private native float nativeGetScale();

    private native long nativeGetSpuDelay();

    private native int nativeGetSpuTrack();

    private native TrackDescription[] nativeGetSpuTracks();

    private native int nativeGetSpuTracksCount();

    private native Title[] nativeGetTitles();

    private native int nativeGetVideoTrack();

    private native TrackDescription[] nativeGetVideoTracks();

    private native int nativeGetVideoTracksCount();

    private native void nativeNewFromLibVlc(ILibVLC iLibVLC, AWindow aWindow);

    private native void nativeNewFromMedia(IMedia iMedia, AWindow aWindow);

    private native void nativePlay();

    private native boolean nativeRecord(String str);

    private native void nativeRelease();

    private native void nativeSetAspectRatio(String str);

    private native boolean nativeSetAudioDelay(long j);

    private native boolean nativeSetAudioOutput(String str);

    private native boolean nativeSetAudioOutputDevice(String str);

    private native boolean nativeSetAudioTrack(int i);

    private native boolean nativeSetEqualizer(Equalizer equalizer);

    private native void nativeSetMedia(IMedia iMedia);

    private native int nativeSetRenderer(RendererItem rendererItem);

    private native void nativeSetScale(float f);

    private native boolean nativeSetSpuDelay(long j);

    private native boolean nativeSetSpuTrack(int i);

    private native void nativeSetVideoTitleDisplay(int i, int i2);

    private native boolean nativeSetVideoTrack(int i);

    private native void nativeStop();

    private native boolean nativeUpdateViewpoint(float f, float f2, float f3, float f4, boolean z);

    public native int getChapter();

    public native long getLength();

    public native int getPlayerState();

    public native float getPosition();

    public native float getRate();

    public native long getTime();

    public native int getTitle();

    public native int getVolume();

    public native boolean isPlaying();

    public native boolean isSeekable();

    public native void nativeSetPosition(float f, boolean z);

    public native long nativeSetTime(long j, boolean z);

    public native void navigate(int i);

    public native int nextChapter();

    public native void pause();

    public native int previousChapter();

    public native void setChapter(int i);

    public native void setRate(float f);

    public native void setTitle(int i);

    public native int setVolume(int i);

    @Override // org.videolan.libvlc.VLCObject
    public /* bridge */ /* synthetic */ long getInstance() {
        return super.getInstance();
    }

    @Override // org.videolan.libvlc.VLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public /* bridge */ /* synthetic */ ILibVLC getLibVLC() {
        return super.getLibVLC();
    }

    @Override // org.videolan.libvlc.VLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public /* bridge */ /* synthetic */ boolean isReleased() {
        return super.isReleased();
    }

    /* loaded from: classes.dex */
    public static class Event extends AbstractVLCEvent {
        public static final int Buffering = 259;
        public static final int ESAdded = 276;
        public static final int ESDeleted = 277;
        public static final int ESSelected = 278;
        public static final int EncounteredError = 266;
        public static final int EndReached = 265;
        public static final int LengthChanged = 273;
        public static final int MediaChanged = 256;
        public static final int Opening = 258;
        public static final int PausableChanged = 270;
        public static final int Paused = 261;
        public static final int Playing = 260;
        public static final int PositionChanged = 268;
        public static final int RecordChanged = 286;
        public static final int SeekableChanged = 269;
        public static final int Stopped = 262;
        public static final int TimeChanged = 267;
        public static final int Vout = 274;

        protected Event(int i) {
            super(i);
        }

        protected Event(int i, long j) {
            super(i, j);
        }

        protected Event(int i, long j, long j2) {
            super(i, j, j2);
        }

        protected Event(int i, float f) {
            super(i, f);
        }

        protected Event(int i, long j, @Nullable String str) {
            super(i, j, str);
        }

        public long getTimeChanged() {
            return this.arg1;
        }

        public long getLengthChanged() {
            return this.arg1;
        }

        public float getPositionChanged() {
            return this.argf1;
        }

        public int getVoutCount() {
            return (int) this.arg1;
        }

        public int getEsChangedType() {
            return (int) this.arg1;
        }

        public int getEsChangedID() {
            return (int) this.arg2;
        }

        public boolean getPausable() {
            return this.arg1 != 0;
        }

        public boolean getSeekable() {
            return this.arg1 != 0;
        }

        public float getBuffering() {
            return this.argf1;
        }

        public boolean getRecording() {
            return this.arg1 != 0;
        }

        @Nullable
        public String getRecordPath() {
            return this.args1;
        }
    }

    /* loaded from: classes.dex */
    public static class Title {
        public final long duration;
        private final int flags;
        public final String name;

        /* loaded from: classes.dex */
        private static class Flags {
            public static final int INTERACTIVE = 2;
            public static final int MENU = 1;

            private Flags() {
            }
        }

        public Title(long j, String str, int i) {
            this.duration = j;
            this.name = str;
            this.flags = i;
        }

        public boolean isMenu() {
            return (this.flags & 1) != 0;
        }

        public boolean isInteractive() {
            return (this.flags & 2) != 0;
        }
    }

    private static Title createTitleFromNative(long j, String str, int i) {
        return new Title(j, str, i);
    }

    /* loaded from: classes.dex */
    public static class Chapter {
        public final long duration;
        public final String name;
        public final long timeOffset;

        private Chapter(long j, long j2, String str) {
            this.timeOffset = j;
            this.duration = j2;
            this.name = str;
        }
    }

    private static Chapter createChapterFromNative(long j, long j2, String str) {
        return new Chapter(j, j2, str);
    }

    /* loaded from: classes.dex */
    public static class TrackDescription {
        public final int id;
        public final String name;

        private TrackDescription(int i, String str) {
            this.id = i;
            this.name = str;
        }
    }

    private static TrackDescription createTrackDescriptionFromNative(int i, String str) {
        return new TrackDescription(i, str);
    }

    /* loaded from: classes.dex */
    public static class Equalizer {
        private long mInstance;

        private native float nativeGetAmp(int i);

        private static native int nativeGetBandCount();

        private static native float nativeGetBandFrequency(int i);

        private native float nativeGetPreAmp();

        private static native int nativeGetPresetCount();

        private static native String nativeGetPresetName(int i);

        private native void nativeNew();

        private native void nativeNewFromPreset(int i);

        private native void nativeRelease();

        private native boolean nativeSetAmp(int i, float f);

        private native boolean nativeSetPreAmp(float f);

        private Equalizer() {
            nativeNew();
        }

        private Equalizer(int i) {
            nativeNewFromPreset(i);
        }

        protected void finalize() throws Throwable {
            try {
                nativeRelease();
            } finally {
                super.finalize();
            }
        }

        public static Equalizer create() {
            return new Equalizer();
        }

        public static Equalizer createFromPreset(int i) {
            return new Equalizer(i);
        }

        public static int getPresetCount() {
            return nativeGetPresetCount();
        }

        public static String getPresetName(int i) {
            return nativeGetPresetName(i);
        }

        public static int getBandCount() {
            return nativeGetBandCount();
        }

        public static float getBandFrequency(int i) {
            return nativeGetBandFrequency(i);
        }

        public float getPreAmp() {
            return nativeGetPreAmp();
        }

        public boolean setPreAmp(float f) {
            return nativeSetPreAmp(f);
        }

        public float getAmp(int i) {
            return nativeGetAmp(i);
        }

        public boolean setAmp(int i, float f) {
            return nativeSetAmp(i, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updateAudioOutputDevice(long j, String str) {
        this.mCanDoPassthrough = j != 0;
        if (this.mAudioDigitalOutputEnabled && this.mCanDoPassthrough) {
            str = "encoded:" + j;
        }
        if (!str.equals(this.mAudioPlugOutputDevice)) {
            this.mAudioPlugOutputDevice = str;
            setAudioOutputDeviceInternal(this.mAudioPlugOutputDevice, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getEncodingFlags(int[] iArr) {
        long j = 0;
        if (iArr == null) {
            return 0L;
        }
        for (int i : iArr) {
            if (isEncoded(i)) {
                j |= 1 << i;
            }
        }
        return j;
    }

    @TargetApi(21)
    private BroadcastReceiver createAudioPlugReceiver() {
        return new BroadcastReceiver() { // from class: org.videolan.libvlc.MediaPlayer.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (action != null && action.equalsIgnoreCase("android.media.action.HDMI_AUDIO_PLUG")) {
                    MediaPlayer.this.updateAudioOutputDevice(!(intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1) ? 0L : MediaPlayer.this.getEncodingFlags(intent.getIntArrayExtra("android.media.extra.ENCODINGS")), "stereo");
                }
            }
        };
    }

    @TargetApi(21)
    private void registerAudioPlugV21(boolean z) {
        if (z) {
            Intent registerReceiver = this.mILibVLC.getAppContext().registerReceiver(this.mAudioPlugReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
            if (registerReceiver != null) {
                this.mAudioPlugReceiver.onReceive(this.mILibVLC.getAppContext(), registerReceiver);
                return;
            }
            return;
        }
        this.mILibVLC.getAppContext().unregisterReceiver(this.mAudioPlugReceiver);
    }

    @TargetApi(23)
    private AudioDeviceCallback createAudioDeviceCallback() {
        return new AudioDeviceCallback() { // from class: org.videolan.libvlc.MediaPlayer.3
            private SparseArray<Long> mEncodedDevices = new SparseArray<>();

            private void onAudioDevicesChanged() {
                long j = 0;
                for (int i = 0; i < this.mEncodedDevices.size(); i++) {
                    j |= this.mEncodedDevices.valueAt(i).longValue();
                }
                MediaPlayer.this.updateAudioOutputDevice(j, j == 0 ? "stereo" : "pcm");
            }

            @Override // android.media.AudioDeviceCallback
            @RequiresApi(23)
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (audioDeviceInfo.isSink()) {
                        long encodingFlags = MediaPlayer.this.getEncodingFlags(audioDeviceInfo.getEncodings());
                        if (encodingFlags != 0) {
                            this.mEncodedDevices.put(audioDeviceInfo.getId(), Long.valueOf(encodingFlags));
                        }
                    }
                }
                onAudioDevicesChanged();
            }

            @Override // android.media.AudioDeviceCallback
            @RequiresApi(23)
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (audioDeviceInfo.isSink()) {
                        this.mEncodedDevices.remove(audioDeviceInfo.getId());
                    }
                }
                onAudioDevicesChanged();
            }
        };
    }

    @TargetApi(23)
    private void registerAudioPlugV23(boolean z) {
        AudioManager audioManager = (AudioManager) this.mILibVLC.getAppContext().getSystemService(AudioManager.class);
        if (z) {
            this.mAudioDeviceCallback.onAudioDevicesAdded(audioManager.getDevices(2));
            audioManager.registerAudioDeviceCallback(this.mAudioDeviceCallback, null);
            return;
        }
        audioManager.unregisterAudioDeviceCallback(this.mAudioDeviceCallback);
    }

    private void registerAudioPlug(boolean z) {
        if (z == this.mAudioPlugRegistered) {
            return;
        }
        if (this.mAudioDeviceCallback != null) {
            registerAudioPlugV23(z);
        } else if (this.mAudioPlugReceiver != null) {
            registerAudioPlugV21(z);
        }
        this.mAudioPlugRegistered = z;
    }

    public MediaPlayer(ILibVLC iLibVLC) {
        super(iLibVLC);
        this.mMedia = null;
        this.mRenderer = null;
        this.mAfd = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = true;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        this.mVideoHelper = null;
        this.mWindow = new AWindow(new AWindow.SurfaceCallback() { // from class: org.videolan.libvlc.MediaPlayer.1
            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesCreated(AWindow aWindow) {
                boolean z;
                boolean z2;
                synchronized (MediaPlayer.this) {
                    z = false;
                    if (MediaPlayer.this.mPlaying || !MediaPlayer.this.mPlayRequested) {
                        z2 = MediaPlayer.this.mVoutCount == 0;
                    } else {
                        z2 = false;
                        z = true;
                    }
                }
                if (z) {
                    MediaPlayer.this.play();
                } else if (z2) {
                    MediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesDestroyed(AWindow aWindow) {
                boolean z;
                synchronized (MediaPlayer.this) {
                    z = MediaPlayer.this.mVoutCount > 0;
                }
                if (z) {
                    MediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        });
        this.mAudioPlugReceiver = (!AndroidUtil.isLolliPopOrLater || AndroidUtil.isMarshMallowOrLater) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.isMarshMallowOrLater ? createAudioDeviceCallback() : null;
        this.mHandlerMainThread = new Handler(Looper.getMainLooper());
        nativeNewFromLibVlc(iLibVLC, this.mWindow);
    }

    public MediaPlayer(@NonNull IMedia iMedia) {
        super(iMedia);
        this.mMedia = null;
        this.mRenderer = null;
        this.mAfd = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = true;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        this.mVideoHelper = null;
        this.mWindow = new AWindow(new AWindow.SurfaceCallback() { // from class: org.videolan.libvlc.MediaPlayer.1
            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesCreated(AWindow aWindow) {
                boolean z;
                boolean z2;
                synchronized (MediaPlayer.this) {
                    z = false;
                    if (MediaPlayer.this.mPlaying || !MediaPlayer.this.mPlayRequested) {
                        z2 = MediaPlayer.this.mVoutCount == 0;
                    } else {
                        z2 = false;
                        z = true;
                    }
                }
                if (z) {
                    MediaPlayer.this.play();
                } else if (z2) {
                    MediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesDestroyed(AWindow aWindow) {
                boolean z;
                synchronized (MediaPlayer.this) {
                    z = MediaPlayer.this.mVoutCount > 0;
                }
                if (z) {
                    MediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        });
        this.mAudioPlugReceiver = (!AndroidUtil.isLolliPopOrLater || AndroidUtil.isMarshMallowOrLater) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.isMarshMallowOrLater ? createAudioDeviceCallback() : null;
        this.mHandlerMainThread = new Handler(Looper.getMainLooper());
        if (iMedia == null || iMedia.isReleased()) {
            throw new IllegalArgumentException("Media is null or released");
        }
        this.mMedia = iMedia;
        this.mMedia.retain();
        nativeNewFromMedia(this.mMedia, this.mWindow);
    }

    @NonNull
    public IVLCVout getVLCVout() {
        return this.mWindow;
    }

    public void attachViews(@NonNull VLCVideoLayout vLCVideoLayout, @Nullable DisplayManager displayManager, boolean z, boolean z2) {
        this.mVideoHelper = new VideoHelper(this, vLCVideoLayout, displayManager, z, z2);
        this.mVideoHelper.attachViews();
    }

    public void detachViews() {
        if (this.mVideoHelper != null) {
            this.mVideoHelper.release();
            this.mVideoHelper = null;
        }
    }

    public void updateVideoSurfaces() {
        if (this.mVideoHelper != null) {
            this.mVideoHelper.updateVideoSurfaces();
        }
    }

    public void setVideoScale(@NonNull ScaleType scaleType) {
        if (this.mVideoHelper != null) {
            this.mVideoHelper.setVideoScale(scaleType);
        }
    }

    @NonNull
    public ScaleType getVideoScale() {
        return this.mVideoHelper != null ? this.mVideoHelper.getVideoScale() : ScaleType.SURFACE_BEST_FIT;
    }

    public void setMedia(@Nullable IMedia iMedia) {
        if (iMedia != null) {
            if (iMedia.isReleased()) {
                throw new IllegalArgumentException("Media is released");
            }
            iMedia.setDefaultMediaPlayerOptions();
        }
        nativeSetMedia(iMedia);
        synchronized (this) {
            if (this.mMedia != null) {
                this.mMedia.release();
            }
            if (iMedia != null) {
                iMedia.retain();
            }
            this.mMedia = iMedia;
        }
    }

    public int setRenderer(@Nullable RendererItem rendererItem) {
        if (this.mRenderer != null) {
            this.mRenderer.release();
        }
        if (rendererItem != null) {
            rendererItem.retain();
        }
        this.mRenderer = rendererItem;
        return nativeSetRenderer(rendererItem);
    }

    public synchronized boolean hasMedia() {
        return this.mMedia != null;
    }

    @Nullable
    public synchronized IMedia getMedia() {
        if (this.mMedia != null) {
            this.mMedia.retain();
        }
        return this.mMedia;
    }

    public void play() {
        synchronized (this) {
            if (!this.mPlaying) {
                if (this.mAudioReset) {
                    if (this.mAudioOutput != null) {
                        nativeSetAudioOutput(this.mAudioOutput);
                    }
                    if (this.mAudioOutputDevice != null) {
                        nativeSetAudioOutputDevice(this.mAudioOutputDevice);
                    }
                    this.mAudioReset = false;
                }
                if (this.mListenAudioPlug) {
                    registerAudioPlug(true);
                }
                this.mPlayRequested = true;
                if (this.mWindow.areSurfacesWaiting()) {
                    return;
                }
            }
            this.mPlaying = true;
            nativePlay();
        }
    }

    public void playAsset(@NonNull Context context, @NonNull String str) throws IOException {
        this.mAfd = context.getAssets().openFd(str);
        play(this.mAfd);
    }

    public void play(@NonNull AssetFileDescriptor assetFileDescriptor) {
        play(new Media(this.mILibVLC, assetFileDescriptor));
    }

    public void play(@NonNull String str) {
        play(new Media(this.mILibVLC, str));
    }

    public void play(@NonNull Uri uri) {
        play(new Media(this.mILibVLC, uri));
    }

    public void play(@NonNull IMedia iMedia) {
        setMedia(iMedia);
        iMedia.release();
        play();
    }

    public void stop() {
        synchronized (this) {
            this.mPlayRequested = false;
            this.mPlaying = false;
            this.mAudioReset = true;
        }
        nativeStop();
        if (this.mAfd != null) {
            try {
                this.mAfd.close();
            } catch (IOException unused) {
            }
        }
    }

    public void setVideoTitleDisplay(int i, int i2) {
        nativeSetVideoTitleDisplay(i, i2);
    }

    public float getScale() {
        return nativeGetScale();
    }

    public void setScale(float f) {
        nativeSetScale(f);
    }

    public String getAspectRatio() {
        return nativeGetAspectRatio();
    }

    public void setAspectRatio(String str) {
        nativeSetAspectRatio(str);
    }

    private boolean isAudioTrack() {
        return this.mAudioOutput != null && this.mAudioOutput.equals("android_audiotrack");
    }

    public boolean updateViewpoint(float f, float f2, float f3, float f4, boolean z) {
        return nativeUpdateViewpoint(f, f2, f3, f4, z);
    }

    public synchronized boolean setAudioOutput(String str) {
        boolean nativeSetAudioOutput;
        this.mAudioOutput = str;
        this.mListenAudioPlug = isAudioTrack();
        if (!this.mListenAudioPlug) {
            registerAudioPlug(false);
        }
        nativeSetAudioOutput = nativeSetAudioOutput(str);
        if (!nativeSetAudioOutput) {
            this.mAudioOutput = null;
            this.mListenAudioPlug = false;
        }
        if (this.mListenAudioPlug) {
            registerAudioPlug(true);
        }
        return nativeSetAudioOutput;
    }

    public synchronized boolean setAudioDigitalOutputEnabled(boolean z) {
        if (z == this.mAudioDigitalOutputEnabled) {
            return true;
        }
        if (this.mListenAudioPlug && isAudioTrack()) {
            registerAudioPlug(false);
            this.mAudioDigitalOutputEnabled = z;
            registerAudioPlug(true);
            return true;
        }
        return false;
    }

    public synchronized boolean forceAudioDigitalEncodings(int[] iArr) {
        if (isAudioTrack()) {
            if (iArr.length == 0) {
                setAudioOutputDeviceInternal(null, true);
            } else {
                String str = "encoded:" + getEncodingFlags(iArr);
                if (!str.equals(this.mAudioPlugOutputDevice)) {
                    this.mAudioPlugOutputDevice = str;
                    setAudioOutputDeviceInternal(this.mAudioPlugOutputDevice, true);
                }
            }
            return true;
        }
        return false;
    }

    private synchronized boolean setAudioOutputDeviceInternal(String str, boolean z) {
        boolean nativeSetAudioOutputDevice;
        this.mAudioOutputDevice = str;
        if (z) {
            this.mListenAudioPlug = this.mAudioOutputDevice == null && isAudioTrack();
            if (!this.mListenAudioPlug) {
                registerAudioPlug(false);
            }
        }
        nativeSetAudioOutputDevice = nativeSetAudioOutputDevice(str);
        if (!nativeSetAudioOutputDevice) {
            this.mAudioOutputDevice = null;
            this.mListenAudioPlug = false;
        }
        if (this.mListenAudioPlug) {
            registerAudioPlug(true);
        }
        return nativeSetAudioOutputDevice;
    }

    public boolean setAudioOutputDevice(String str) {
        return setAudioOutputDeviceInternal(str, true);
    }

    public Title[] getTitles() {
        return nativeGetTitles();
    }

    public Chapter[] getChapters(int i) {
        return nativeGetChapters(i);
    }

    public int getVideoTracksCount() {
        return nativeGetVideoTracksCount();
    }

    public TrackDescription[] getVideoTracks() {
        return nativeGetVideoTracks();
    }

    public int getVideoTrack() {
        return nativeGetVideoTrack();
    }

    public boolean setVideoTrack(int i) {
        if (i == -1 || (this.mWindow.areViewsAttached() && !this.mWindow.areSurfacesWaiting())) {
            return nativeSetVideoTrack(i);
        }
        return false;
    }

    public void setVideoTrackEnabled(boolean z) {
        TrackDescription[] videoTracks;
        if (!z) {
            setVideoTrack(-1);
        } else if (!isReleased() && hasMedia() && getVideoTrack() == -1 && (videoTracks = getVideoTracks()) != null) {
            for (TrackDescription trackDescription : videoTracks) {
                if (trackDescription.id != -1) {
                    setVideoTrack(trackDescription.id);
                    return;
                }
            }
        }
    }

    public IMedia.VideoTrack getCurrentVideoTrack() {
        if (getVideoTrack() == -1) {
            return null;
        }
        int trackCount = this.mMedia.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            IMedia.Track track = this.mMedia.getTrack(i);
            if (track.type == 1) {
                return (IMedia.VideoTrack) track;
            }
        }
        return null;
    }

    public int getAudioTracksCount() {
        return nativeGetAudioTracksCount();
    }

    public TrackDescription[] getAudioTracks() {
        return nativeGetAudioTracks();
    }

    public int getAudioTrack() {
        return nativeGetAudioTrack();
    }

    public boolean setAudioTrack(int i) {
        return nativeSetAudioTrack(i);
    }

    public long getAudioDelay() {
        return nativeGetAudioDelay();
    }

    public boolean setAudioDelay(long j) {
        return nativeSetAudioDelay(j);
    }

    public int getSpuTracksCount() {
        return nativeGetSpuTracksCount();
    }

    public TrackDescription[] getSpuTracks() {
        return nativeGetSpuTracks();
    }

    public int getSpuTrack() {
        return nativeGetSpuTrack();
    }

    public boolean setSpuTrack(int i) {
        return nativeSetSpuTrack(i);
    }

    public long getSpuDelay() {
        return nativeGetSpuDelay();
    }

    public boolean setSpuDelay(long j) {
        return nativeSetSpuDelay(j);
    }

    public boolean setEqualizer(Equalizer equalizer) {
        return nativeSetEqualizer(equalizer);
    }

    public boolean addSlave(int i, Uri uri, boolean z) {
        return nativeAddSlave(i, VLCUtil.encodeVLCUri(uri), z);
    }

    public boolean record(String str) {
        return nativeRecord(str);
    }

    public boolean addSlave(int i, String str, boolean z) {
        return addSlave(i, Uri.fromFile(new File(str)), z);
    }

    public long setTime(long j, boolean z) {
        return nativeSetTime(j, z);
    }

    public long setTime(long j) {
        return nativeSetTime(j, false);
    }

    public void setPosition(float f, boolean z) {
        nativeSetPosition(f, z);
    }

    public void setPosition(float f) {
        nativeSetPosition(f, false);
    }

    public synchronized void setEventListener(EventListener eventListener) {
        super.setEventListener((AbstractVLCEvent.Listener) eventListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.videolan.libvlc.VLCObject
    public synchronized Event onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        if (i != 256) {
            if (i != 286) {
                switch (i) {
                    case 258:
                    case 259:
                        break;
                    case 260:
                    case 261:
                        return new Event(i);
                    default:
                        switch (i) {
                            case Event.EndReached /* 265 */:
                            case Event.EncounteredError /* 266 */:
                                break;
                            case Event.TimeChanged /* 267 */:
                                return new Event(i, j);
                            case Event.PositionChanged /* 268 */:
                                return new Event(i, f);
                            case Event.SeekableChanged /* 269 */:
                            case Event.PausableChanged /* 270 */:
                                return new Event(i, j);
                            default:
                                switch (i) {
                                    case Event.LengthChanged /* 273 */:
                                        return new Event(i, j);
                                    case Event.Vout /* 274 */:
                                        this.mVoutCount = (int) j;
                                        notify();
                                        this.mHandlerMainThread.post(new Runnable() { // from class: org.videolan.libvlc.MediaPlayer.4
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                MediaPlayer.this.updateVideoSurfaces();
                                            }
                                        });
                                        return new Event(i, j);
                                    default:
                                        switch (i) {
                                            case Event.ESAdded /* 276 */:
                                            case Event.ESDeleted /* 277 */:
                                            case Event.ESSelected /* 278 */:
                                                return new Event(i, j, j2);
                                            default:
                                                return null;
                                        }
                                }
                        }
                    case 262:
                        this.mVoutCount = 0;
                        notify();
                        break;
                }
                return new Event(i, f);
            }
            return new Event(i, j, str);
        }
        this.mVoutCount = 0;
        notify();
        return new Event(i, f);
    }

    @Override // org.videolan.libvlc.VLCObject
    protected void onReleaseNative() {
        detachViews();
        this.mWindow.detachViews();
        registerAudioPlug(false);
        if (this.mMedia != null) {
            this.mMedia.release();
        }
        if (this.mRenderer != null) {
            this.mRenderer.release();
        }
        this.mVoutCount = 0;
        nativeRelease();
    }

    public boolean canDoPassthrough() {
        return this.mCanDoPassthrough;
    }
}
