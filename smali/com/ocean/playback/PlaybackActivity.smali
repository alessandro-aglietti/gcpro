.class public Lcom/ocean/playback/PlaybackActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;,
        Lcom/ocean/playback/PlaybackActivity$MyMainHandler;
    }
.end annotation


# static fields
.field private static final MAIN_ALAERT_FILE_DOWNLOAD:I = 0x10003

.field private static final MAIN_LOW_SD_CAPACITY:I = 0x10004

.field private static final MAIN_RELOAD_DEVICE_TABLE:I = 0x10002

.field private static final MAIN_RELOAD_LOCAL_TABLE:I = 0x10001

.field private static final MSG_KEEP_CAM_ALVIE:I = 0x14

.field private static final PHOTO_THUMB_START:Ljava/lang/String; = "http://192.168.8.120/DCIM/PHOTO/"

.field private static final TAG:Ljava/lang/String; = "[PlaybackActivity]:"

.field private static final THUMB_END:Ljava/lang/String; = "?custom=1&cmd=4001"

.field private static final TYPE_MOVIE:Ljava/lang/String; = "MOVIE"

.field private static final TYPE_PHOTO:Ljava/lang/String; = "PHOTO"

.field private static final VIDEO_THUMB_START:Ljava/lang/String; = "http://192.168.8.120/DCIM/MOVIE/"

.field private static final WORK_CHANGE_MODE:I = 0x10002

.field private static final WORK_ENTER_FROM_LOGIN:I = 0x10005

.field private static final WORK_GET_ALL_FILES:I = 0x10001

.field private static final WORK_GET_DEVICE_FILES:I = 0x10004

.field private static final WORK_GET_LOCAL_FILES:I = 0x10003

.field static deviceFileList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field static devicePhotoList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field static deviceVideoList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field private static isDebugLog:Z = false

.field private static isLocalCacheClear:Z

.field static localFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field static localPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field static localVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field private static mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

.field private static workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;


# instance fields
.field private G_isEnterFromLogin:Z

.field private G_nDevMode:I

.field public G_strBuildTime:Ljava/lang/String;

.field public G_strMcuName:Ljava/lang/String;

.field public G_strOTG:Ljava/lang/String;

.field public G_strProjectID:Ljava/lang/String;

.field public G_strProjectVer:Ljava/lang/String;

.field private cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

.field private deviceFragment:Lcom/ocean/playback/DeviceFragment;

.field private devicePhoto:Lcom/ocean/playback/DeviceFragment;

.field private deviceVideo:Lcom/ocean/playback/DeviceFragment;

.field private dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

.field private imgBack2Preview:Landroid/widget/ImageView;

.field private imgDelete:Landroid/widget/ImageView;

.field private imgDownload:Landroid/widget/ImageView;

.field private imgPlay:Landroid/widget/ImageView;

.field private imgSelectAll:Landroid/widget/ImageView;

.field private imgTypeSwitch:Landroid/widget/ImageView;

.field private isAppAlive:Z

.field private isDeviceImages:Z

.field private isGetCamFiles:Z

.field private isKeepCamAlive:Z

.field private isScrollingStop:Z

.field private isVideoFiles:Z

.field private localFilesBrower:Lcom/ocean/util/LocalFilesBrower;

.field private localFragment:Lcom/ocean/playback/LocalFragment;

.field private mAdapter:Landroidx/fragment/app/FragmentPagerAdapter;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicator:Lcom/ocean/playback/ViewPagerIndicator;

.field private mTabContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private nKeepCamAlvieCount:I

.field private pSystemTimer:Ljava/util/Timer;

.field private pSystemTimerHandler:Landroid/os/Handler;

.field private pSystemTimerTask:Ljava/util/TimerTask;

.field private wThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 377
    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1185
    sput-boolean v0, Lcom/ocean/playback/PlaybackActivity;->isLocalCacheClear:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mTabContents:Ljava/util/List;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isDeviceImages:Z

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcom/ocean/playback/PlaybackActivity;->G_nDevMode:I

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    .line 84
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isAppAlive:Z

    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strMcuName:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strProjectID:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strProjectVer:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strBuildTime:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strOTG:Ljava/lang/String;

    .line 952
    iput-boolean v1, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    .line 953
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isScrollingStop:Z

    .line 1094
    iput-boolean v1, p0, Lcom/ocean/playback/PlaybackActivity;->isGetCamFiles:Z

    .line 1246
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimer:Ljava/util/Timer;

    .line 1247
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 1248
    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 1249
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isKeepCamAlive:Z

    .line 1250
    iput v1, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/playback/PlaybackActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/ocean/playback/PlaybackActivity;->isScrollingStop:Z

    return p0
.end method

.method static synthetic access$002(Lcom/ocean/playback/PlaybackActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ocean/playback/PlaybackActivity;->isScrollingStop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->local_GetFiles()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ocean/playback/PlaybackActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/ocean/playback/PlaybackActivity;->isDeviceImages:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/ocean/playback/PlaybackActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ocean/playback/PlaybackActivity;->isDeviceImages:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ocean/playback/PlaybackActivity;)J
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->sd_getCapacityLeft()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;
    .locals 1

    .line 49
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->btnBack2Preview()V

    return-void
.end method

.method static synthetic access$1400(Lcom/ocean/playback/PlaybackActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->ui_updateBottomBar()V

    return-void
.end method

.method static synthetic access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;
    .locals 1

    .line 49
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->ui_updateTopBar()V

    return-void
.end method

.method static synthetic access$1800(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/util/LocalFilesBrower;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ocean/playback/PlaybackActivity;->localFilesBrower:Lcom/ocean/util/LocalFilesBrower;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->local_reloadTable()V

    return-void
.end method

.method static synthetic access$200(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->device_reloadTable()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ocean/playback/PlaybackActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/ocean/playback/PlaybackActivity;->isKeepCamAlive:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/ocean/playback/PlaybackActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    return p0
.end method

.method static synthetic access$2102(Lcom/ocean/playback/PlaybackActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    return p1
.end method

.method static synthetic access$2108(Lcom/ocean/playback/PlaybackActivity;)I
    .locals 2

    .line 49
    iget v0, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/ocean/playback/PlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/cmdrequest/CameraRequest;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ocean/playback/PlaybackActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    return p0
.end method

.method static synthetic access$402(Lcom/ocean/playback/PlaybackActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ocean/playback/PlaybackActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/ocean/playback/PlaybackActivity;->isGetCamFiles:Z

    return p0
.end method

.method static synthetic access$502(Lcom/ocean/playback/PlaybackActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ocean/playback/PlaybackActivity;->isGetCamFiles:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ocean/playback/PlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ocean/playback/PlaybackActivity;->mTabContents:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/LocalFragment;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ocean/playback/PlaybackActivity;->localFragment:Lcom/ocean/playback/LocalFragment;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/ocean/playback/PlaybackActivity;->isLocalCacheClear:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 49
    sput-boolean p0, Lcom/ocean/playback/PlaybackActivity;->isLocalCacheClear:Z

    return p0
.end method

.method static synthetic access$900(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->device_GetFilesNew()V

    return-void
.end method

.method private btnBack2Preview()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    iget-boolean v0, v0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b007a

    .line 348
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isVideoFiles"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    iget v0, p0, Lcom/ocean/playback/PlaybackActivity;->G_nDevMode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/ocean/playback/PlaybackActivity;->finish()V

    .line 353
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    goto :goto_1

    .line 357
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    invoke-static {p0}, Lcom/ocean/widget/MyLoadingDialog;->createDialog(Landroid/content/Context;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    .line 358
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    invoke-virtual {v0}, Lcom/ocean/widget/MyLoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    :goto_0
    iget v0, p0, Lcom/ocean/playback/PlaybackActivity;->G_nDevMode:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    if-eqz v0, :cond_2

    .line 364
    iput v1, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    .line 365
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    iget v1, p0, Lcom/ocean/playback/PlaybackActivity;->G_nDevMode:I

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private camRequestError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 855
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 856
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private device_GetFiles()V
    .locals 2

    .line 1122
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1123
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    if-eqz v0, :cond_0

    const-string v0, "MOVIE"

    .line 1124
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->getCameraFileList(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "PHOTO"

    .line 1126
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->getCameraFileList(Ljava/lang/String;)V

    .line 1128
    :goto_0
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1129
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1131
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    goto :goto_1

    .line 1134
    :cond_1
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->device_reloadTable()V

    return-void
.end method

.method private device_GetFilesNew()V
    .locals 1

    .line 1099
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    if-eqz v0, :cond_0

    return-void

    .line 1102
    :cond_0
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isGetCamFiles:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    .line 1104
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraFileList()V

    goto :goto_0

    .line 1107
    :cond_1
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->device_SetFiles()V

    :goto_0
    return-void
.end method

.method private device_SetFiles()V
    .locals 5

    .line 1138
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    if-nez v0, :cond_0

    .line 1139
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1141
    :cond_0
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    .line 1143
    :goto_0
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1144
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1147
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1149
    :goto_1
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v4}, Lcom/ocean/obj/CameraFile;->getFileTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v4}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1151
    invoke-direct {p0, v3}, Lcom/ocean/playback/PlaybackActivity;->local_ContainPhotoFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1152
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setDownloadProgress(I)V

    goto :goto_2

    .line 1154
    :cond_1
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getDownloadProgress()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1155
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3, v2}, Lcom/ocean/obj/CameraFile;->setDownloadProgress(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1161
    :goto_3
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v4}, Lcom/ocean/obj/CameraFile;->getFileTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v4}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1163
    invoke-direct {p0, v3}, Lcom/ocean/playback/PlaybackActivity;->local_ContainVideoFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1164
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setDownloadProgress(I)V

    goto :goto_4

    .line 1166
    :cond_4
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getDownloadProgress()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 1167
    sget-object v3, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3, v2}, Lcom/ocean/obj/CameraFile;->setDownloadProgress(I)V

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1173
    :cond_6
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->device_reloadTable()V

    return-void
.end method

.method private device_reloadTable()V
    .locals 2

    .line 1177
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    if-eqz v0, :cond_0

    .line 1178
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private getPhoto()V
    .locals 0

    return-void
.end method

.method private getVideo()V
    .locals 0

    return-void
.end method

.method private initBroadcast()V
    .locals 0

    return-void
.end method

.method private initCameraRequest()V
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    if-eqz v0, :cond_0

    return-void

    .line 593
    :cond_0
    new-instance v0, Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    .line 594
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;->setOnCameraRequestListener(Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;)V

    return-void
.end method

.method private initDatas()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->newInstance(Ljava/lang/String;)Lcom/ocean/playback/DeviceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    .line 220
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$1;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$1;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment;->setReflashListener(Lcom/ocean/playback/DeviceFragment$ReflashListListener;)V

    .line 237
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$2;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$2;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment;->setOnScrollStopListener(Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;)V

    .line 245
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$3;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$3;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment;->setOnCamDeleteFileListener(Lcom/ocean/playback/DeviceFragment$OnCamDeleteFileListener;)V

    .line 260
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$4;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment;->setOnCamDownloadFileListener(Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;)V

    .line 288
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$5;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$5;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment;->setOnCamFilePlayListener(Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;)V

    .line 308
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mDatas:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->newInstance(Ljava/lang/String;)Lcom/ocean/playback/LocalFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->localFragment:Lcom/ocean/playback/LocalFragment;

    .line 309
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->localFragment:Lcom/ocean/playback/LocalFragment;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$6;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$6;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/LocalFragment;->setOnScrollStopListener(Lcom/ocean/playback/LocalFragment$OnScrollStopListener;)V

    .line 316
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->localFragment:Lcom/ocean/playback/LocalFragment;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$7;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/LocalFragment;->setOnDeleteFileListener(Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;)V

    .line 324
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mTabContents:Ljava/util/List;

    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mTabContents:Ljava/util/List;

    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->localFragment:Lcom/ocean/playback/LocalFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v0, Lcom/ocean/playback/PlaybackActivity$8;

    invoke-virtual {p0}, Lcom/ocean/playback/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ocean/playback/PlaybackActivity$8;-><init>(Lcom/ocean/playback/PlaybackActivity;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mAdapter:Landroidx/fragment/app/FragmentPagerAdapter;

    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 386
    new-instance v0, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    invoke-direct {v0, p0}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    .line 387
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyAlbumWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->wThread:Landroid/os/HandlerThread;

    .line 388
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 389
    new-instance v0, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;-><init>(Landroid/os/Looper;Lcom/ocean/playback/PlaybackActivity;)V

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    return-void
.end method

.method private initPlaybackBottomBar()V
    .locals 2

    const v0, 0x7f070049

    .line 957
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgTypeSwitch:Landroid/widget/ImageView;

    .line 958
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgTypeSwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$14;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$14;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPlaybackMiddleView()V
    .locals 4

    .line 1028
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    invoke-static {p0}, Lcom/ocean/widget/MyLoadingDialog;->createDialog(Landroid/content/Context;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    const v0, 0x7f07003f

    .line 1029
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f07003e

    .line 1030
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/ViewPagerIndicator;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mIndicator:Lcom/ocean/playback/ViewPagerIndicator;

    .line 1032
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mIndicator:Lcom/ocean/playback/ViewPagerIndicator;

    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ocean/playback/ViewPagerIndicator;->setTabItemTitles(Ljava/util/List;)V

    .line 1033
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->mAdapter:Landroidx/fragment/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1036
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1038
    iput-boolean v2, p0, Lcom/ocean/playback/PlaybackActivity;->isDeviceImages:Z

    .line 1039
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mIndicator:Lcom/ocean/playback/ViewPagerIndicator;

    iget-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Lcom/ocean/playback/ViewPagerIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    .line 1040
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    if-eqz v0, :cond_1

    .line 1041
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    const v1, 0x10003

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1045
    :cond_0
    iput-boolean v1, p0, Lcom/ocean/playback/PlaybackActivity;->isDeviceImages:Z

    .line 1046
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mIndicator:Lcom/ocean/playback/ViewPagerIndicator;

    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/ocean/playback/ViewPagerIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    .line 1048
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mIndicator:Lcom/ocean/playback/ViewPagerIndicator;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$15;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$15;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/playback/ViewPagerIndicator;->setOnMyPagerChangeListener(Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;)V

    return-void
.end method

.method private initPlaybackTopBar()V
    .locals 2

    const v0, 0x7f070015

    .line 871
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgPlay:Landroid/widget/ImageView;

    .line 872
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgPlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$9;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$9;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070014

    .line 879
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgDownload:Landroid/widget/ImageView;

    .line 880
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgDownload:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$10;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$10;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070013

    .line 909
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgDelete:Landroid/widget/ImageView;

    .line 910
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$11;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$11;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070012

    .line 921
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgSelectAll:Landroid/widget/ImageView;

    .line 922
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgSelectAll:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$12;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$12;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07000b

    .line 933
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgBack2Preview:Landroid/widget/ImageView;

    .line 934
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgBack2Preview:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$13;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$13;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private local_ContainPhotoFile(Ljava/lang/String;)Z
    .locals 3

    .line 1217
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1219
    :cond_0
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 1222
    :goto_0
    sget-object v2, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1223
    sget-object v2, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v2}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private local_ContainVideoFile(Ljava/lang/String;)Z
    .locals 3

    .line 1230
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1232
    :cond_0
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 1235
    :goto_0
    sget-object v2, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1236
    sget-object v2, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v2}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private local_GetFiles()V
    .locals 2

    .line 1189
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1190
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$16;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$16;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1204
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private local_reloadTable()V
    .locals 2

    .line 1208
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isDeviceImages:Z

    if-eqz v0, :cond_0

    return-void

    .line 1210
    :cond_0
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    if-eqz v0, :cond_1

    .line 1211
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    const v1, 0x10001

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private myTest()V
    .locals 2

    .line 212
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    const v1, 0x10001

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->sendEmptyMessage(I)Z

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment;->startLoadingView(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private reflashMediaStroe()V
    .locals 0

    return-void
.end method

.method private sd_getCapacityLeft()J
    .locals 9

    .line 1293
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 1294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->strSDBasePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    .line 1297
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 1298
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    .line 1299
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocksLong()J

    mul-long v1, v1, v3

    const-wide/16 v7, 0x400

    .line 1300
    div-long/2addr v1, v7

    div-long/2addr v1, v7

    mul-long v5, v5, v3

    .line 1301
    div-long/2addr v5, v7

    div-long/2addr v5, v7

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    return-wide v5
.end method

.method private system_initTimer()V
    .locals 7

    .line 1254
    new-instance v0, Lcom/ocean/playback/PlaybackActivity$17;

    invoke-direct {v0, p0}, Lcom/ocean/playback/PlaybackActivity$17;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 1273
    new-instance v0, Lcom/ocean/playback/PlaybackActivity$18;

    invoke-direct {v0, p0}, Lcom/ocean/playback/PlaybackActivity$18;-><init>(Lcom/ocean/playback/PlaybackActivity;)V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 1284
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimer:Ljava/util/Timer;

    .line 1285
    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private ui_updateBottomBar()V
    .locals 2

    .line 1003
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgTypeSwitch:Landroid/widget/ImageView;

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgTypeSwitch:Landroid/widget/ImageView;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private ui_updateTopBar()V
    .locals 2

    .line 943
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isDeviceImages:Z

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgDownload:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->imgDownload:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public camDidGetBatteryFail()V
    .locals 0

    return-void
.end method

.method public camDidGetBatterySucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetCmd3031Fail()V
    .locals 0

    return-void
.end method

.method public camDidGetCmd3031Succ(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidGetCmd9026Fail()V
    .locals 0

    return-void
.end method

.method public camDidGetCmd9026Succ(I)V
    .locals 0

    return-void
.end method

.method public camDidGetFileListFail()V
    .locals 0

    return-void
.end method

.method public camDidGetFileListSucc(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 747
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 750
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "Name"

    .line 751
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Path"

    .line 752
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v3, "Size"

    .line 753
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Time"

    .line 754
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, ""

    .line 755
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    .line 756
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TimeCode"

    .line 757
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 758
    new-instance v5, Lcom/ocean/obj/CameraFile;

    invoke-direct {v5}, Lcom/ocean/obj/CameraFile;-><init>()V

    const-string v6, ".jpg"

    .line 760
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".JPG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, ".mp4"

    .line 774
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".MP4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 776
    :cond_1
    invoke-virtual {v5, v2}, Lcom/ocean/obj/CameraFile;->setFileName(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v5, v4}, Lcom/ocean/obj/CameraFile;->setFileTime(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v5, v1}, Lcom/ocean/obj/CameraFile;->setFileTimeCode(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v5, v3}, Lcom/ocean/obj/CameraFile;->setFileSize(Ljava/lang/String;)V

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://192.168.8.120/DCIM/MOVIE/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ocean/obj/CameraFile;->setFileDownloadPath(Ljava/lang/String;)V

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://192.168.8.120/DCIM/MOVIE/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?custom=1&cmd=4001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ocean/obj/CameraFile;->setFilePath(Ljava/lang/String;)V

    .line 783
    sget-object v1, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 762
    :cond_2
    :goto_1
    invoke-virtual {v5, v2}, Lcom/ocean/obj/CameraFile;->setFileName(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v5, v4}, Lcom/ocean/obj/CameraFile;->setFileTime(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v5, v1}, Lcom/ocean/obj/CameraFile;->setFileTimeCode(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v5, v3}, Lcom/ocean/obj/CameraFile;->setFileSize(Ljava/lang/String;)V

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://192.168.8.120/DCIM/PHOTO/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ocean/obj/CameraFile;->setFileDownloadPath(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v5}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "A.JPG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://192.168.8.120/DCIM/PHOTO/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ocean/obj/CameraFile;->setFilePath(Ljava/lang/String;)V

    goto :goto_2

    .line 771
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://192.168.8.120/DCIM/PHOTO/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?custom=1&cmd=4001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ocean/obj/CameraFile;->setFilePath(Ljava/lang/String;)V

    .line 772
    :goto_2
    sget-object v1, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 787
    iput-boolean p1, p0, Lcom/ocean/playback/PlaybackActivity;->isGetCamFiles:Z

    .line 788
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->device_SetFiles()V

    return-void
.end method

.method public camDidGetIDFail()V
    .locals 0

    return-void
.end method

.method public camDidGetIDSucc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public camDidGetModeFail()V
    .locals 2

    const v0, 0x7f0b0098

    .line 654
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 655
    invoke-virtual {p0}, Lcom/ocean/playback/PlaybackActivity;->finish()V

    .line 657
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    return-void
.end method

.method public camDidGetModeSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetModelIDFail()V
    .locals 0

    return-void
.end method

.method public camDidGetModelIDSucc(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidGetRetStatusFail()V
    .locals 0

    return-void
.end method

.method public camDidGetRetStatusSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetSDFreeSpaceFail()V
    .locals 0

    return-void
.end method

.method public camDidGetSDFreeSpaceSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetSettingsFail(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidGetSettingsSucc(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidRecordFail(II)V
    .locals 0

    return-void
.end method

.method public camDidRecordSucc(II)V
    .locals 0

    return-void
.end method

.method public camDidSendCmdFail(II)V
    .locals 0

    return-void
.end method

.method public camDidSendCmdSucc(II)V
    .locals 0

    return-void
.end method

.method public camDidSetDateFail()V
    .locals 0

    return-void
.end method

.method public camDidSetDateSucc()V
    .locals 0

    return-void
.end method

.method public camDidSetModeFail(I)V
    .locals 1

    const/16 v0, -0x17

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b00a6

    .line 615
    invoke-virtual {p0, p1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ocean/playback/PlaybackActivity;->camRequestError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Failed to set modes"

    .line 617
    invoke-direct {p0, p1}, Lcom/ocean/playback/PlaybackActivity;->camRequestError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public camDidSetModeSucc(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 600
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    invoke-virtual {p0, p1}, Lcom/ocean/playback/PlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 602
    invoke-virtual {p0}, Lcom/ocean/playback/PlaybackActivity;->finish()V

    .line 604
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v0, 0x1

    iput v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    goto :goto_0

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->myTest()V

    :goto_0
    return-void
.end method

.method public camDidSetTimeFail()V
    .locals 0

    return-void
.end method

.method public camDidSetTimeSucc()V
    .locals 0

    return-void
.end method

.method public camDidSnapshotFail(I)V
    .locals 0

    return-void
.end method

.method public camDidSnapshotSucc(I)V
    .locals 0

    return-void
.end method

.method public getCameraFileList(Ljava/lang/String;)V
    .locals 5

    .line 538
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/DCIM/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->setHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    const-string v1, "<tr><td>"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 544
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v1, :cond_6

    add-int/lit8 v3, v1, 0x8

    if-ge v3, v2, :cond_6

    .line 546
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>"

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const-string v2, "</b>"

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 552
    new-instance v3, Lcom/ocean/obj/CameraFile;

    invoke-direct {v3}, Lcom/ocean/obj/CameraFile;-><init>()V

    .line 554
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    if-gtz v1, :cond_2

    if-lez v2, :cond_5

    .line 557
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFileName(Ljava/lang/String;)V

    const-string v1, "MOVIE"

    .line 558
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    sget-object v1, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/DCIM/MOVIE/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFileDownloadPath(Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/DCIM/MOVIE/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?custom=1&cmd=4001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFilePath(Ljava/lang/String;)V

    goto :goto_1

    .line 566
    :cond_3
    sget-object v1, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/DCIM/PHOTO/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFileDownloadPath(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A.JPG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/DCIM/PHOTO/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFilePath(Ljava/lang/String;)V

    goto :goto_1

    .line 572
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/DCIM/PHOTO/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?custom=1&cmd=4001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFilePath(Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string v1, "<td align=right> "

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<td align=right>"

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFileCatch(Ljava/lang/String;)V

    const-string v1, "<td align=right>"

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n<td align=right>"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ocean/obj/CameraFile;->setFileTime(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 99
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/ocean/playback/PlaybackActivity;->requestWindowFeature(I)Z

    .line 101
    invoke-virtual {p0}, Lcom/ocean/playback/PlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 102
    invoke-virtual {p0}, Lcom/ocean/playback/PlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f090002

    .line 103
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->setContentView(I)V

    const v0, 0x7f0b007a

    .line 105
    invoke-virtual {p0, v0}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "Mcu Name"

    const-string v3, "error"

    .line 106
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strMcuName:Ljava/lang/String;

    const-string v2, "Project ID"

    const-string v3, "error"

    .line 107
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strProjectID:Ljava/lang/String;

    const-string v2, "Project Ver"

    const-string v3, "error"

    .line 108
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strProjectVer:Ljava/lang/String;

    const-string v2, "Build Time"

    const-string v3, "error"

    .line 109
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strBuildTime:Ljava/lang/String;

    const-string v2, "OTG"

    const-string v3, "error"

    .line 110
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_strOTG:Ljava/lang/String;

    const-string v2, "Camera Mode"

    .line 111
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_nDevMode:I

    const-string v2, "isEnterFromLogin"

    .line 112
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    const-string v2, "isVideoFiles"

    .line 113
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    const/4 v0, 0x2

    .line 116
    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f0b0097

    invoke-virtual {p0, v2}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v2, 0x7f0b00a9

    invoke-virtual {p0, v2}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->mDatas:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/ocean/util/LocalFilesBrower;

    invoke-static {}, Lcom/ocean/gamecamerapro2/MyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ocean/util/LocalFilesBrower;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->localFilesBrower:Lcom/ocean/util/LocalFilesBrower;

    .line 120
    iget-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    if-nez v0, :cond_1

    .line 122
    iget v0, p0, Lcom/ocean/playback/PlaybackActivity;->G_nDevMode:I

    if-nez v0, :cond_0

    .line 123
    iput-boolean v1, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    goto :goto_0

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/ocean/playback/PlaybackActivity;->isVideoFiles:Z

    .line 128
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->initHandler()V

    .line 129
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->initDatas()V

    .line 130
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->initPlaybackTopBar()V

    .line 131
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->initPlaybackBottomBar()V

    .line 132
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->initPlaybackMiddleView()V

    .line 133
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->ui_updateTopBar()V

    .line 134
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->ui_updateBottomBar()V

    .line 136
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->system_initTimer()V

    .line 137
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->initCameraRequest()V

    .line 139
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 140
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isAppAlive:Z

    .line 177
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isKeepCamAlive:Z

    .line 179
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    sput-object v1, Lcom/ocean/playback/PlaybackActivity;->workHandler:Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    .line 182
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    sput-object v1, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    .line 185
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    invoke-virtual {v0}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V

    .line 187
    :cond_0
    iput-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    .line 189
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 197
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    iget-boolean p1, p1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-eqz p1, :cond_1

    .line 199
    sget-object p1, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    if-eqz p1, :cond_0

    .line 200
    sget-object p1, Lcom/ocean/playback/PlaybackActivity;->mainHandler:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    const p2, 0x10003

    invoke-virtual {p1, p2}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/ocean/playback/PlaybackActivity;->btnBack2Preview()V

    const/4 p1, 0x1

    return p1

    .line 207
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 145
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isAppAlive:Z

    .line 148
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isKeepCamAlive:Z

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    .line 151
    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    iget-boolean v1, v1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    iget-object v1, v1, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    iget-object v2, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    iget-object v2, v2, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->downloadTogether(Ljava/util/List;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 154
    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity;->deviceFragment:Lcom/ocean/playback/DeviceFragment;

    iget-object v1, v1, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->reuseAndStart()V

    .line 160
    :cond_0
    iget-boolean v1, p0, Lcom/ocean/playback/PlaybackActivity;->G_isEnterFromLogin:Z

    if-nez v1, :cond_1

    .line 161
    iput v0, p0, Lcom/ocean/playback/PlaybackActivity;->nKeepCamAlvieCount:I

    .line 162
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isAppAlive:Z

    .line 171
    iput-boolean v0, p0, Lcom/ocean/playback/PlaybackActivity;->isKeepCamAlive:Z

    return-void
.end method
