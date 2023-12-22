package com.ocean.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import com.ocean.gamecamerapro2.MyApplication;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class CrashLog implements Thread.UncaughtExceptionHandler {
    public static final String AGR_LOG_DIRECOTORY = "Log";
    public static final boolean DEBUG = true;
    private static CrashLog instance;
    private Context mContext;
    private Thread.UncaughtExceptionHandler mDefaultHandler;
    private Map<String, String> info = new HashMap();
    private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");

    private CrashLog() {
    }

    public static CrashLog getInstance() {
        if (instance == null) {
            instance = new CrashLog();
        }
        return instance;
    }

    public void init(Context context) {
        this.mContext = context;
        this.mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (!handleException(th) && this.mDefaultHandler != null) {
            this.mDefaultHandler.uncaughtException(thread, th);
            return;
        }
        try {
            Thread.sleep(3000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.ocean.util.CrashLog$1] */
    private boolean handleException(Throwable th) {
        if (th == null) {
            return false;
        }
        new Thread() { // from class: com.ocean.util.CrashLog.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Looper.prepare();
                Looper.loop();
            }
        }.start();
        collectDeviceInfo(this.mContext);
        saveCrashInfo2File(th);
        return true;
    }

    private void createLogDirectory() {
        File file = new File(MyApplication._instance.strDownloadPath);
        try {
            if (file.exists() && file.isDirectory()) {
                return;
            }
            file.mkdir();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void collectDeviceInfo(Context context) {
        Field[] declaredFields;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
            if (packageInfo != null) {
                this.info.put("versionName", packageInfo.versionName == null ? "null" : packageInfo.versionName);
                this.info.put("versionCode", packageInfo.versionCode + "");
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        for (Field field : Build.class.getDeclaredFields()) {
            try {
                field.setAccessible(true);
                this.info.put(field.getName(), field.get("").toString());
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
            }
        }
    }

    private String saveCrashInfo2File(Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : this.info.entrySet()) {
            stringBuffer.append(entry.getKey() + "=" + entry.getValue() + "\r\n");
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        stringBuffer.append(stringWriter.toString());
        stringBuffer.append("\r\n");
        stringBuffer.append(MyApplication._instance.G_strDebugInfo);
        createLogDirectory();
        long currentTimeMillis = System.currentTimeMillis();
        String str = "crash-" + this.format.format(new Date()) + "-" + currentTimeMillis + ".log";
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(MyApplication._instance.strDownloadPath, str));
            fileOutputStream.write(stringBuffer.toString().getBytes());
            fileOutputStream.close();
            return str;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
