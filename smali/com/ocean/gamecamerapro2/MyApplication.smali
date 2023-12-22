.class public Lcom/ocean/gamecamerapro2/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field public static _instance:Lcom/ocean/gamecamerapro2/MyApplication; = null

.field private static go_setting_time:J = 0x0L

.field private static mAppBrightness:F = -1.0f

.field private static mySharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field public G_isRecDebugLog:Z

.field public G_strDebugInfo:Ljava/lang/String;

.field public fileAppBasePath:Ljava/io/File;

.field public fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field public isLoginSetWiFi:Z

.field public isManualDisconnect:Z

.field public isPreviewExit:Z

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field public nAppMode:I

.field public pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

.field public strDownloadPath:Ljava/lang/String;

.field public strSDBasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/ocean/gamecamerapro2/MyApplication$1;

    invoke-direct {v0}, Lcom/ocean/gamecamerapro2/MyApplication$1;-><init>()V

    sput-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/MyApplication;->isManualDisconnect:Z

    .line 46
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/MyApplication;->isPreviewExit:Z

    .line 47
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/MyApplication;->isLoginSetWiFi:Z

    .line 48
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->fileList:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->fileAppBasePath:Ljava/io/File;

    .line 50
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->strSDBasePath:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->strDownloadPath:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->G_isRecDebugLog:Z

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->G_strDebugInfo:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/ocean/gamecamerapro2/MyApplication;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getAppBrightnessValue()F
    .locals 1

    .line 201
    sget v0, Lcom/ocean/gamecamerapro2/MyApplication;->mAppBrightness:F

    return v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 185
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    return-object v0
.end method

.method public static getGo_setting_time()J
    .locals 2

    .line 64
    sget-wide v0, Lcom/ocean/gamecamerapro2/MyApplication;->go_setting_time:J

    return-wide v0
.end method

.method public static getSP()Landroid/content/SharedPreferences;
    .locals 1

    .line 177
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->mySharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static removeTask(Ljava/lang/Runnable;)Z
    .locals 1

    .line 195
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MyApplication;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static runBackground(Ljava/lang/Runnable;)V
    .locals 1

    .line 190
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MyApplication;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAppBrightnessValue(F)V
    .locals 2

    .line 206
    sput p0, Lcom/ocean/gamecamerapro2/MyApplication;->mAppBrightness:F

    .line 207
    invoke-static {}, Lcom/ocean/gamecamerapro2/MyApplication;->getSP()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Brightness"

    float-to-int p0, p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setGo_setting_time(J)V
    .locals 0

    .line 68
    sput-wide p0, Lcom/ocean/gamecamerapro2/MyApplication;->go_setting_time:J

    return-void
.end method


# virtual methods
.method public getDeviceObject()Lcom/ocean/ble/BLEDeviceObject;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .line 90
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 91
    sput-object p0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    .line 98
    invoke-static {}, Lcom/ocean/gamecamerapro2/MyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->fileAppBasePath:Ljava/io/File;

    const-string v0, "storage/emulated/0/"

    .line 99
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->strSDBasePath:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MyApplication;->strSDBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Download/Game Camera Pro2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MyApplication;->strDownloadPath:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 107
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 108
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v2, 0x7f060066

    .line 112
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 116
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v2, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    .line 117
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    new-instance v4, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v4}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    .line 119
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    const/16 v4, 0x438

    const/16 v5, 0x780

    const/4 v6, 0x0

    .line 120
    invoke-virtual {v2, v5, v4, v6}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v5, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    const/high16 v4, 0x1400000

    .line 122
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    new-instance v4, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;

    invoke-direct {v4}, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;-><init>()V

    .line 123
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    const/high16 v4, 0x1900000

    .line 124
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 125
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    const-string v0, "mySP"

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0, v0, v2}, Lcom/ocean/gamecamerapro2/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->mySharedPreferences:Landroid/content/SharedPreferences;

    .line 152
    sput-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    .line 153
    invoke-static {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->setupOnApplicationOnCreate(Landroid/app/Application;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Creator;

    new-instance v2, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;-><init>()V

    const/16 v4, 0x2710

    .line 155
    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->connectTimeout(I)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    move-result-object v2

    .line 156
    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->readTimeout(I)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    move-result-object v2

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 157
    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->proxy(Ljava/net/Proxy;)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Creator;-><init>(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->connectionCreator(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    .line 159
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/FileDownloader;->setMaxNetworkThreadCount(I)Z

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 168
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    return-void
.end method

.method public setDeviceObject(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    return-void
.end method
