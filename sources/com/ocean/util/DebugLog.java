package com.ocean.util;

import android.util.Log;
import com.ocean.gamecamerapro2.MyApplication;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes.dex */
public class DebugLog {
    private static final String MSG_FORMAT = "%s: %s - %s";
    private static final String TIMESTAMP_FORMAT = "yyyy-MM-dd-HH-mm-ss";
    private static BufferedWriter sBufferedWriter;
    private static int sCurrentPriority;
    private static int sFileSizeLimit;
    private static String sLogFilePath;
    private static File sTheLogFile;

    private static void createLogDirectory() {
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

    public static void open(String str, int i, int i2) {
        sLogFilePath = str + "Debug_" + getCurrentTimeStamp() + ".txt";
        sCurrentPriority = i;
        sFileSizeLimit = i2;
        File file = new File(MyApplication._instance.strDownloadPath);
        try {
            if (!file.exists() || !file.isDirectory()) {
                file.mkdir();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        sTheLogFile = new File(sLogFilePath);
        if (!sTheLogFile.exists()) {
            try {
                sTheLogFile.createNewFile();
            } catch (IOException e2) {
                Log.e("DebugLog", Log.getStackTraceString(e2));
            }
        }
        checkFileSize();
        try {
            sBufferedWriter = new BufferedWriter(new FileWriter(sTheLogFile, true));
        } catch (IOException e3) {
            Log.e("DebugLog", Log.getStackTraceString(e3));
        }
    }

    public static void setCurrentPriority(int i) {
        sCurrentPriority = i;
    }

    public static void close() {
        try {
            if (sBufferedWriter != null) {
                sBufferedWriter.newLine();
                sBufferedWriter.flush();
                sBufferedWriter.close();
            }
        } catch (IOException e) {
            Log.e("DebugLog", Log.getStackTraceString(e));
        }
    }

    public static void delete() {
        close();
        if (sTheLogFile != null) {
            sTheLogFile.delete();
        }
    }

    public static int v(String str, String str2) {
        writeToFile(2, str, str2);
        return Log.v(str, str2);
    }

    public static int v(String str, String str2, Throwable th) {
        writeToFile(2, str, str2, th);
        return Log.v(str, str2, th);
    }

    public static int d(String str, String str2) {
        writeToFile(3, str, str2);
        return Log.d(str, str2);
    }

    public static int d(String str, String str2, Throwable th) {
        writeToFile(3, str, str2, th);
        return Log.d(str, str2, th);
    }

    public static int i(String str, String str2) {
        writeToFile(4, str, str2);
        return Log.i(str, str2);
    }

    public static int i(String str, String str2, Throwable th) {
        writeToFile(4, str, str2, th);
        return Log.i(str, str2, th);
    }

    public static int w(String str, String str2) {
        writeToFile(5, str, str2);
        return Log.w(str, str2);
    }

    public static int w(String str, String str2, Throwable th) {
        writeToFile(5, str, str2, th);
        return Log.w(str, str2, th);
    }

    public static int w(String str, Throwable th) {
        writeToFile(5, str, "", th);
        return Log.w(str, th);
    }

    public static int e(String str, String str2) {
        writeToFile(6, str, str2);
        return Log.e(str, str2);
    }

    public static int e(String str, String str2, Throwable th) {
        writeToFile(6, str, str2, th);
        return Log.e(str, str2, th);
    }

    public static String getStackTraceString(Throwable th) {
        return Log.getStackTraceString(th);
    }

    private static void writeToFile(int i, String str, String str2) {
        writeToFile(i, str, str2, null);
    }

    private static void writeToFile(int i, String str, String str2, Throwable th) {
        if (i >= sCurrentPriority && sBufferedWriter != null) {
            try {
                if (checkFileSize()) {
                    sBufferedWriter = new BufferedWriter(new FileWriter(sTheLogFile, true));
                }
                sBufferedWriter.write(formatMsg(str, str2));
                sBufferedWriter.newLine();
                if (th != null) {
                    sBufferedWriter.write(Log.getStackTraceString(th));
                    sBufferedWriter.newLine();
                }
                sBufferedWriter.flush();
            } catch (IOException e) {
                Log.e("DebugLog", Log.getStackTraceString(e));
            }
        }
        if (sBufferedWriter == null) {
            Log.e("DebugLog", "You have to call DebugLog.open(...) before starting to log");
        }
    }

    private static String formatMsg(String str, String str2) {
        return String.format(MSG_FORMAT, getCurrentTimeStamp(), str, str2);
    }

    private static String getCurrentTimeStamp() {
        try {
            return new SimpleDateFormat(TIMESTAMP_FORMAT, Locale.getDefault()).format(new Date());
        } catch (Exception e) {
            Log.e("DebugLog", Log.getStackTraceString(e));
            return null;
        }
    }

    private static boolean checkFileSize() {
        try {
            if (sTheLogFile.length() > sFileSizeLimit) {
                File file = new File(sLogFilePath + ".old");
                if (file.exists()) {
                    file.delete();
                }
                sTheLogFile.renameTo(file);
                sTheLogFile = new File(sLogFilePath);
                sTheLogFile.createNewFile();
                return true;
            }
            return false;
        } catch (IOException e) {
            Log.e("DebugLog", Log.getStackTraceString(e));
            return false;
        }
    }
}
