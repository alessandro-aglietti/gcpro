package org.videolan.libvlc;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import org.videolan.libvlc.interfaces.ILibVLC;
import org.videolan.libvlc.interfaces.IVLCObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class VLCObject<T extends AbstractVLCEvent> implements IVLCObject<T> {
    private AbstractVLCEvent.Listener<T> mEventListener;
    private Handler mHandler;
    final ILibVLC mILibVLC;
    private long mInstance;
    private int mNativeRefCount;

    private native void nativeDetachEvents();

    public native long getInstance();

    protected abstract T onEventNative(int i, long j, long j2, float f, String str);

    protected abstract void onReleaseNative();

    /* JADX INFO: Access modifiers changed from: protected */
    public VLCObject(ILibVLC iLibVLC) {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mInstance = 0L;
        this.mILibVLC = iLibVLC;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VLCObject(IVLCObject iVLCObject) {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mInstance = 0L;
        this.mILibVLC = iVLCObject.getLibVLC();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VLCObject() {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mInstance = 0L;
        this.mILibVLC = null;
    }

    @Override // org.videolan.libvlc.interfaces.IVLCObject
    public synchronized boolean isReleased() {
        return this.mNativeRefCount == 0;
    }

    @Override // org.videolan.libvlc.interfaces.IVLCObject
    public final synchronized boolean retain() {
        if (this.mNativeRefCount > 0) {
            this.mNativeRefCount++;
            return true;
        }
        return false;
    }

    @Override // org.videolan.libvlc.interfaces.IVLCObject
    public final void release() {
        int i;
        synchronized (this) {
            if (this.mNativeRefCount == 0) {
                return;
            }
            if (this.mNativeRefCount > 0) {
                i = this.mNativeRefCount - 1;
                this.mNativeRefCount = i;
            } else {
                i = -1;
            }
            if (i == 0) {
                setEventListener(null);
            }
            if (i == 0) {
                nativeDetachEvents();
                synchronized (this) {
                    onReleaseNative();
                }
            }
        }
    }

    protected synchronized void finalize() {
        if (!isReleased()) {
            throw new AssertionError("VLCObject (" + getClass().getName() + ") finalized but not natively released (" + this.mNativeRefCount + " refs)");
        }
    }

    @Override // org.videolan.libvlc.interfaces.IVLCObject
    public ILibVLC getLibVLC() {
        return this.mILibVLC;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void setEventListener(AbstractVLCEvent.Listener<T> listener) {
        setEventListener(listener, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void setEventListener(AbstractVLCEvent.Listener<T> listener, Handler handler) {
        if (this.mHandler != null) {
            this.mHandler.removeCallbacksAndMessages(null);
        }
        this.mEventListener = listener;
        if (this.mEventListener == null) {
            this.mHandler = null;
        } else if (this.mHandler == null) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            this.mHandler = handler;
        }
    }

    private synchronized void dispatchEventFromNative(int i, long j, long j2, float f, @Nullable String str) {
        if (isReleased()) {
            return;
        }
        T onEventNative = onEventNative(i, j, j2, f, str);
        if (onEventNative != null && this.mEventListener != null && this.mHandler != null) {
            this.mHandler.post(new Runnable(this.mEventListener, onEventNative) { // from class: org.videolan.libvlc.VLCObject.1EventRunnable
                private final T event;
                private final AbstractVLCEvent.Listener<T> listener;

                {
                    this.listener = r2;
                    this.event = onEventNative;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.listener.onEvent(this.event);
                    this.event.release();
                }
            });
        }
    }

    private Object getWeakReference() {
        return new WeakReference(this);
    }

    private static void dispatchEventFromWeakNative(Object obj, int i, long j, long j2, float f, @Nullable String str) {
        VLCObject vLCObject = (VLCObject) ((WeakReference) obj).get();
        if (vLCObject != null) {
            vLCObject.dispatchEventFromNative(i, j, j2, f, str);
        }
    }
}
