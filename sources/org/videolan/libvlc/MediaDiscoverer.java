package org.videolan.libvlc;

import androidx.annotation.Nullable;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import org.videolan.libvlc.interfaces.ILibVLC;
/* loaded from: classes.dex */
public class MediaDiscoverer extends VLCObject<Event> {
    private static final String TAG = "LibVLC/MediaDiscoverer";
    private MediaList mMediaList;

    /* loaded from: classes.dex */
    public interface EventListener extends AbstractVLCEvent.Listener<Event> {
    }

    private static native Description[] nativeList(ILibVLC iLibVLC, int i);

    private native void nativeNew(ILibVLC iLibVLC, String str);

    private native void nativeRelease();

    private native boolean nativeStart();

    private native void nativeStop();

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
        public static final int Ended = 1281;
        public static final int Started = 1280;

        protected Event(int i) {
            super(i);
        }
    }

    /* loaded from: classes.dex */
    public static class Description {
        public final int category;
        public final String longName;
        public final String name;

        /* loaded from: classes.dex */
        public static class Category {
            public static final int Devices = 0;
            public static final int Lan = 1;
            public static final int LocalDirs = 3;
            public static final int Podcasts = 2;
        }

        private Description(String str, String str2, int i) {
            this.name = str;
            this.longName = str2;
            this.category = i;
        }
    }

    private static Description createDescriptionFromNative(String str, String str2, int i) {
        return new Description(str, str2, i);
    }

    public MediaDiscoverer(ILibVLC iLibVLC, String str) {
        super(iLibVLC);
        this.mMediaList = null;
        nativeNew(iLibVLC, str);
    }

    public boolean start() {
        if (isReleased()) {
            throw new IllegalStateException("MediaDiscoverer is released");
        }
        return nativeStart();
    }

    public void stop() {
        if (isReleased()) {
            throw new IllegalStateException("MediaDiscoverer is released");
        }
        nativeStop();
    }

    public void setEventListener(EventListener eventListener) {
        super.setEventListener((AbstractVLCEvent.Listener) eventListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.videolan.libvlc.VLCObject
    public Event onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        switch (i) {
            case Event.Started /* 1280 */:
            case Event.Ended /* 1281 */:
                return new Event(i);
            default:
                return null;
        }
    }

    public MediaList getMediaList() {
        MediaList mediaList;
        synchronized (this) {
            if (this.mMediaList != null) {
                this.mMediaList.retain();
                return this.mMediaList;
            }
            MediaList mediaList2 = new MediaList(this);
            synchronized (this) {
                this.mMediaList = mediaList2;
                this.mMediaList.retain();
                mediaList = this.mMediaList;
            }
            return mediaList;
        }
    }

    @Override // org.videolan.libvlc.VLCObject
    protected void onReleaseNative() {
        if (this.mMediaList != null) {
            this.mMediaList.release();
        }
        nativeRelease();
    }

    @Nullable
    public static Description[] list(ILibVLC iLibVLC, int i) {
        return nativeList(iLibVLC, i);
    }
}
