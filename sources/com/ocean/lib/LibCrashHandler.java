package com.ocean.lib;

import java.lang.Thread;
/* loaded from: classes.dex */
public class LibCrashHandler implements Thread.UncaughtExceptionHandler {
    private static final String TAG = "Makoto/VlcCrashHandler";
    private Thread.UncaughtExceptionHandler defaultUEH = Thread.getDefaultUncaughtExceptionHandler();

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
    }
}
