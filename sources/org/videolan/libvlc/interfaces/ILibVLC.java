package org.videolan.libvlc.interfaces;

import android.content.Context;
/* loaded from: classes.dex */
public interface ILibVLC extends IVLCObject<Event> {
    Context getAppContext();

    /* loaded from: classes.dex */
    public static class Event extends AbstractVLCEvent {
        protected Event(int i) {
            super(i);
        }
    }
}
