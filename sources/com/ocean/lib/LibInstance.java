package com.ocean.lib;

import android.content.Context;
/* loaded from: classes.dex */
public class LibInstance {
    public static final String TAG = "Makoto/util/LibInstance";

    public static synchronized boolean testCompatibleCPU(Context context) {
        synchronized (LibInstance.class) {
        }
        return true;
    }

    public static synchronized void updateLibVlcSettings() {
        synchronized (LibInstance.class) {
        }
    }
}
