package com.ocean.gamecamerapro2;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.StrictMode;
import com.liulishuo.filedownloader.FileDownloader;
import com.liulishuo.filedownloader.connection.FileDownloadUrlConnection;
import com.liulishuo.filedownloader.util.FileDownloadLog;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.ocean.ble.BLEDeviceObject;
import com.ocean.obj.CameraFile;
import java.io.File;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class MyApplication extends Application {
    public static final ThreadFactory THREAD_FACTORY = new ThreadFactory() { // from class: com.ocean.gamecamerapro2.MyApplication.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(1);
            return thread;
        }
    };
    public static MyApplication _instance = null;
    private static long go_setting_time = 0;
    private static float mAppBrightness = -1.0f;
    private static SharedPreferences mySharedPreferences;
    public BLEDeviceObject pDeviceDetailObj = null;
    public boolean isManualDisconnect = false;
    public boolean isPreviewExit = false;
    public boolean isLoginSetWiFi = false;
    public ArrayList<CameraFile> fileList = null;
    public File fileAppBasePath = null;
    public String strSDBasePath = null;
    public String strDownloadPath = null;
    public int nAppMode = 0;
    public boolean G_isRecDebugLog = true;
    public String G_strDebugInfo = "";
    private ThreadPoolExecutor mThreadPool = new ThreadPoolExecutor(0, 2, 2, TimeUnit.SECONDS, new LinkedBlockingQueue(), THREAD_FACTORY);

    public static long getGo_setting_time() {
        return go_setting_time;
    }

    public static void setGo_setting_time(long j) {
        go_setting_time = j;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        _instance = this;
        this.fileAppBasePath = getAppContext().getExternalFilesDir("");
        this.strSDBasePath = "storage/emulated/0/";
        this.strDownloadPath = this.strSDBasePath + "Download/Game Camera Pro2/";
        ImageLoader.getInstance().init(new ImageLoaderConfiguration.Builder(this).threadPriority(3).denyCacheImageMultipleSizesInMemory().diskCacheFileNameGenerator(new Md5FileNameGenerator()).diskCacheExtraOptions(1920, 1080, null).memoryCacheExtraOptions(1920, 1080).memoryCacheSize(20971520).memoryCache(new WeakMemoryCache()).diskCacheSize(26214400).tasksProcessingOrder(QueueProcessingType.LIFO).defaultDisplayImageOptions(new DisplayImageOptions.Builder().bitmapConfig(Bitmap.Config.RGB_565).imageScaleType(ImageScaleType.IN_SAMPLE_INT).cacheInMemory(true).cacheOnDisk(true).considerExifParams(true).showImageOnLoading(R.drawable.picture_n).showImageOnFail(R.drawable.picture_n).build()).build());
        mySharedPreferences = getSharedPreferences("mySP", 0);
        FileDownloadLog.NEED_LOG = true;
        FileDownloader.setupOnApplicationOnCreate(this).connectionCreator(new FileDownloadUrlConnection.Creator(new FileDownloadUrlConnection.Configuration().connectTimeout(10000).readTimeout(10000).proxy(Proxy.NO_PROXY)));
        FileDownloader.getImpl().setMaxNetworkThreadCount(3);
        if (Build.VERSION.SDK_INT >= 24) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
        }
    }

    public static SharedPreferences getSP() {
        return mySharedPreferences;
    }

    public static Context getAppContext() {
        return _instance;
    }

    public static void runBackground(Runnable runnable) {
        _instance.mThreadPool.execute(runnable);
    }

    public static boolean removeTask(Runnable runnable) {
        return _instance.mThreadPool.remove(runnable);
    }

    public static float getAppBrightnessValue() {
        return mAppBrightness;
    }

    public static void setAppBrightnessValue(float f) {
        mAppBrightness = f;
        getSP().edit().putInt("Brightness", (int) f).apply();
    }

    public void setDeviceObject(BLEDeviceObject bLEDeviceObject) {
        this.pDeviceDetailObj = bLEDeviceObject;
    }

    public BLEDeviceObject getDeviceObject() {
        return this.pDeviceDetailObj;
    }
}
