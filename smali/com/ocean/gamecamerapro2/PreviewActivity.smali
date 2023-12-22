.class public Lcom/ocean/gamecamerapro2/PreviewActivity;
.super Landroid/app/Activity;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/videolan/libvlc/interfaces/IVLCVout$OnNewVideoLayoutListener;
.implements Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;,
        Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;
    }
.end annotation


# static fields
.field public static Camera_isRecording:Z = false

.field private static G_is4K2KShow:Z = false

.field private static final MSG_BAT_STATUS_CHANGE:I = 0x2

.field private static final MSG_BLE_DISCONNECTED:I = 0x6

.field private static final MSG_BLE_UPDATE_RSSI:I = 0x5

.field private static final MSG_DELAY_CHECK_MODE:I = 0xa

.field private static final MSG_DELAY_OPEN_STREAM:I = 0x4

.field private static final MSG_KEEP_CAM_ALVIE:I = 0x14

.field private static final MSG_PIC_LEFT_CHANGE:I = 0x3

.field private static final MSG_REC_SD_FULL:I = 0x22

.field private static final MSG_REC_STATUS_CHANGE:I = 0x0

.field private static final MSG_REC_TIMER_CHANGE:I = 0x1

.field private static final MSG_SOCKET_CONNECT:I = 0x0

.field private static final MSG_SOCKET_DISCONNECT:I = 0x1

.field private static final MSG_TEST_RECORDING0:I = 0x1e

.field private static final MSG_TEST_RECORDING1:I = 0x1f

.field private static final MSG_TEST_RECORDING2:I = 0x20

.field private static final MSG_TEST_RECORDING3:I = 0x21

.field public static final TAG:Ljava/lang/String; = "Zeo/PreviewActivity"

.field private static handlerCamReq:Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler; = null

.field public static isAppAlive:Z = true

.field private static isReordingUpdate:Z = false

.field public static lastDataSizeLog:I


# instance fields
.field private G_fSDFreeSpace:F

.field private G_n9026Ret:I

.field private G_nBatteryStatus:I

.field private G_nDevMode:I

.field public G_strBuildTime:Ljava/lang/String;

.field public G_strMcuName:Ljava/lang/String;

.field public G_strOTG:Ljava/lang/String;

.field public G_strProjectID:Ljava/lang/String;

.field public G_strProjectVer:Ljava/lang/String;

.field public _instance:Lcom/ocean/gamecamerapro2/PreviewActivity;

.field private btnAlbumP:Landroid/widget/ImageView;

.field private btnBackP:Landroid/widget/ImageView;

.field private btnExitP:Landroid/widget/Button;

.field private btnPhotoModeL:Landroid/widget/ImageView;

.field private btnPhotoModeP:Landroid/widget/ImageView;

.field private btnPowerP:Landroid/widget/ImageView;

.field private btnSettingsP:Landroid/widget/ImageView;

.field private btnStartL:Landroid/widget/ImageView;

.field private btnStartP:Landroid/widget/ImageView;

.field private btnVideoModeL:Landroid/widget/ImageView;

.field private btnVideoModeP:Landroid/widget/ImageView;

.field private cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

.field public dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

.field private handleWiFiStatus:Landroid/content/BroadcastReceiver;

.field private handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

.field private holderSurface:Landroid/view/SurfaceHolder;

.field private htCamCmd:Landroid/os/HandlerThread;

.field private imgBatteryL:Landroid/widget/ImageView;

.field private imgBatteryP:Landroid/widget/ImageView;

.field private imgRssiL:Landroid/widget/ImageView;

.field private imgRssiP:Landroid/widget/ImageView;

.field private imgSolarL:Landroid/widget/ImageView;

.field private imgSolarP:Landroid/widget/ImageView;

.field private imgWiFiL:Landroid/widget/ImageView;

.field private imgWiFiP:Landroid/widget/ImageView;

.field private infoCamL:Landroid/widget/TextView;

.field private infoCamP:Landroid/widget/TextView;

.field private infoVideoTimeL:Landroid/widget/TextView;

.field private infoVideoTimeP:Landroid/widget/TextView;

.field private infoWiFiSpeedL:Landroid/widget/TextView;

.field private infoWiFiSpeedP:Landroid/widget/TextView;

.field private isDoNextAction:Z

.field private isKeepCamAlive:Z

.field private isLowBatteryHint:Z

.field private isSocketConnect:Z

.field private isUpdateBatStatus:Z

.field private isUpdatePhotoLeft:Z

.field private isUpdateRecStatus:Z

.field private isUpdateRecTimer:Z

.field private isUpdateWiFiSpeed:Z

.field private item_1002:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private item_2002:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private layoutControlL:Landroid/widget/RelativeLayout;

.field private layoutControlP:Landroid/widget/RelativeLayout;

.field private libVLC:Lorg/videolan/libvlc/LibVLC;

.field private logBo:Z

.field private mInputS:Ljava/io/InputStream;

.field private mSocket:Ljava/net/Socket;

.field private mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

.field private nAppOrientation:I

.field private nKeepCamAlvieCount:I

.field private nPhotoLeft:I

.field private nRecTimerCount:I

.field private nRecTimerCountCur:I

.field private nSocketConnect:I

.field private nTouchChkCount:I

.field private nUpdateSolarPower:I

.field private nVideoH:I

.field private nVideoW:I

.field private nWiFiSpeedCount:I

.field private options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

.field private pSystemTimer:Ljava/util/Timer;

.field private pSystemTimerHandler:Landroid/os/Handler;

.field private pSystemTimerTask:Ljava/util/TimerTask;

.field private pic_dpi:I

.field private txtBatteryL:Landroid/widget/TextView;

.field private txtBatteryP:Landroid/widget/TextView;

.field private txtPlayerInfo:Landroid/widget/TextView;

.field private txtRssiL:Landroid/widget/TextView;

.field private txtRssiP:Landroid/widget/TextView;

.field private value_1002:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private value_2002:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private video_dpi:I

.field private viewSurface:Landroid/view/SurfaceView;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I

    const/4 v0, 0x0

    .line 1764
    sput-boolean v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_is4K2KShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->_instance:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    .line 76
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pic_dpi:I

    const/4 v2, 0x1

    .line 78
    iput v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    const/4 v3, 0x0

    .line 79
    iput v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_fSDFreeSpace:F

    .line 80
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const/4 v3, -0x1

    .line 82
    iput v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_n9026Ret:I

    .line 83
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isLowBatteryHint:Z

    .line 85
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strMcuName:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectID:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectVer:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strBuildTime:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strOTG:Ljava/lang/String;

    .line 211
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nTouchChkCount:I

    .line 658
    new-instance v4, Lcom/ocean/gamecamerapro2/PreviewActivity$1;

    invoke-direct {v4, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$1;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    iput-object v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handleWiFiStatus:Landroid/content/BroadcastReceiver;

    .line 699
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    .line 700
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 701
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 702
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->options:Ljava/util/ArrayList;

    .line 1371
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimer:Ljava/util/Timer;

    .line 1372
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 1373
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 1375
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    .line 1376
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    .line 1377
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateBatStatus:Z

    .line 1378
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nUpdateSolarPower:I

    .line 1379
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateWiFiSpeed:Z

    .line 1380
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdatePhotoLeft:Z

    .line 1381
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCountCur:I

    .line 1382
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    .line 1383
    iput v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    .line 1384
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nWiFiSpeedCount:I

    .line 1385
    iput v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nPhotoLeft:I

    .line 1386
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nSocketConnect:I

    .line 1387
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isSocketConnect:Z

    .line 1388
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isKeepCamAlive:Z

    .line 1389
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nKeepCamAlvieCount:I

    .line 1606
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->logBo:Z

    return-void
.end method

.method static synthetic access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    return p0
.end method

.method static synthetic access$1000(Lcom/ocean/gamecamerapro2/PreviewActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    return p0
.end method

.method static synthetic access$1002(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    return p1
.end method

.method static synthetic access$102(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initSocketConn()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ocean/gamecamerapro2/PreviewActivity;Lcom/ocean/cmdrequest/CameraRequest;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->readSocketData(Lcom/ocean/cmdrequest/CameraRequest;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isSocketConnect:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isSocketConnect:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgWiFiP:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgWiFiL:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Ljava/net/Socket;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ocean/gamecamerapro2/PreviewActivity;)Ljava/io/InputStream;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mInputS:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ocean/gamecamerapro2/PreviewActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nSocketConnect:I

    return p0
.end method

.method static synthetic access$1902(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nSocketConnect:I

    return p1
.end method

.method static synthetic access$1908(Lcom/ocean/gamecamerapro2/PreviewActivity;)I
    .locals 2

    .line 61
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nSocketConnect:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nSocketConnect:I

    return v0
.end method

.method static synthetic access$200(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    return p1
.end method

.method static synthetic access$202(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/ocean/gamecamerapro2/PreviewActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    return p0
.end method

.method static synthetic access$2202(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateBatStatus:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateBatStatus:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/ocean/gamecamerapro2/PreviewActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nUpdateSolarPower:I

    return p0
.end method

.method static synthetic access$2502(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nUpdateSolarPower:I

    return p1
.end method

.method static synthetic access$2600(Lcom/ocean/gamecamerapro2/PreviewActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCountCur:I

    return p0
.end method

.method static synthetic access$2602(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCountCur:I

    return p1
.end method

.method static synthetic access$2700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdatePhotoLeft:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdatePhotoLeft:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nPhotoLeft:I

    return p1
.end method

.method static synthetic access$2900()Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;
    .locals 1

    .line 61
    sget-object v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerCamReq:Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcStopMedia()V

    return-void
.end method

.method static synthetic access$3000(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateRecordTimer(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateBattery()V

    return-void
.end method

.method static synthetic access$3200(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updatePhotoLeft()V

    return-void
.end method

.method static synthetic access$3300(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcOpenStream()V

    return-void
.end method

.method static synthetic access$3400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgRssiP:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgRssiL:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtRssiL:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtRssiP:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nKeepCamAlvieCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateLoading(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtPlayerInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 61
    sput-boolean p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isReordingUpdate:Z

    return p0
.end method

.method static synthetic access$900(Lcom/ocean/gamecamerapro2/PreviewActivity;)F
    .locals 0

    .line 61
    iget p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_fSDFreeSpace:F

    return p0
.end method

.method private camRequestError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1200
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private closeSocketConn()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    :try_start_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mInputS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 1225
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mInputS:Ljava/io/InputStream;

    .line 1226
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1227
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 1228
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nSocketConnect:I

    .line 1229
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isSocketConnect:Z

    .line 1230
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initBottomBarL1()V
    .locals 2

    const v0, 0x7f0700e6

    .line 386
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeL:Landroid/widget/ImageView;

    const v0, 0x7f07009c

    .line 387
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeL:Landroid/widget/ImageView;

    .line 389
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeL:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeL:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottomBarL2()V
    .locals 2

    const v0, 0x7f070016

    .line 400
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartL:Landroid/widget/ImageView;

    .line 402
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartL:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottomBarP1()V
    .locals 2

    const v0, 0x7f0700e7

    .line 306
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeP:Landroid/widget/ImageView;

    const v0, 0x7f07009d

    .line 307
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeP:Landroid/widget/ImageView;

    .line 309
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottomBarP2()V
    .locals 2

    const v0, 0x7f070008

    .line 321
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnAlbumP:Landroid/widget/ImageView;

    const v0, 0x7f0700ab

    .line 322
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnSettingsP:Landroid/widget/ImageView;

    const v0, 0x7f070017

    .line 323
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartP:Landroid/widget/ImageView;

    .line 325
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnAlbumP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnSettingsP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initCameraRequest()V
    .locals 2

    .line 855
    new-instance v0, Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    .line 856
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;->setOnCameraRequestListener(Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;)V

    const/4 v0, 0x0

    .line 857
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nKeepCamAlvieCount:I

    .line 858
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "RD5009PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraSettings()V

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraCmd9026()V

    :goto_0
    return-void
.end method

.method private initControlViewL()V
    .locals 1

    const v0, 0x7f070064

    .line 336
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    const v0, 0x7f0700e9

    .line 337
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    .line 339
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initTopBarL1()V

    .line 340
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initTopBarL2()V

    .line 342
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initBottomBarL1()V

    .line 343
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initBottomBarL2()V

    return-void
.end method

.method private initControlViewP()V
    .locals 1

    const v0, 0x7f070065

    .line 248
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlP:Landroid/widget/RelativeLayout;

    const v0, 0x7f0700ea

    .line 249
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    .line 251
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initTopBarP1()V

    .line 252
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initTopBarP2()V

    .line 254
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initBottomBarP1()V

    .line 255
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initBottomBarP2()V

    return-void
.end method

.method private initEventHandler()V
    .locals 2

    .line 589
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->htCamCmd:Landroid/os/HandlerThread;

    .line 590
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->htCamCmd:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 591
    new-instance v0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->htCamCmd:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;Landroid/os/Looper;Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    sput-object v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerCamReq:Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;

    return-void
.end method

.method private initPlayerInfoText()V
    .locals 1

    const v0, 0x7f0700d6

    .line 639
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtPlayerInfo:Landroid/widget/TextView;

    return-void
.end method

.method private initPreviewPlayer()V
    .locals 5

    const/4 v0, 0x1

    .line 707
    :try_start_0
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcInit()V

    .line 708
    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x4

    if-ne v1, v0, :cond_0

    const-string v1, "http://192.168.8.120:8192"

    .line 709
    invoke-direct {p0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcSetMedia(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 714
    :cond_0
    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    if-nez v1, :cond_1

    const-string v1, "http://192.168.8.120:8192"

    .line 715
    invoke-direct {p0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcSetMedia(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 721
    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nKeepCamAlvieCount:I

    .line 722
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v1, v0}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 725
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error creating player!"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private initPreviewView()V
    .locals 4

    .line 413
    new-instance v0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;Lcom/ocean/gamecamerapro2/PreviewActivity$1;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    .line 415
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initPlayerInfoText()V

    .line 416
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initControlViewP()V

    .line 417
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initControlViewL()V

    .line 419
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 420
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlP:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 422
    iput v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nAppOrientation:I

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 424
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 426
    iput v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nAppOrientation:I

    :cond_1
    :goto_0
    return-void
.end method

.method private initSocketConn()V
    .locals 4

    .line 1212
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    .line 1213
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "192.168.8.120"

    const/16 v3, 0xd05

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 1214
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mInputS:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1217
    sget-object v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerCamReq:Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private initTopBarL1()V
    .locals 1

    const v0, 0x7f07004d

    .line 353
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamL:Landroid/widget/TextView;

    const v0, 0x7f0700ee

    .line 354
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoWiFiSpeedL:Landroid/widget/TextView;

    return-void
.end method

.method private initTopBarL2()V
    .locals 2

    const v0, 0x7f07000e

    .line 368
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    const v0, 0x7f0700ec

    .line 369
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgWiFiL:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    .line 370
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0700d7

    .line 373
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtRssiL:Landroid/widget/TextView;

    const v0, 0x7f070044

    .line 374
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgRssiL:Landroid/widget/ImageView;

    const v0, 0x7f070046

    .line 376
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgSolarL:Landroid/widget/ImageView;

    return-void
.end method

.method private initTopBarP1()V
    .locals 1

    const v0, 0x7f07004e

    .line 265
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamP:Landroid/widget/TextView;

    const v0, 0x7f0700ef

    .line 266
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoWiFiSpeedP:Landroid/widget/TextView;

    return-void
.end method

.method private initTopBarP2()V
    .locals 2

    const v0, 0x7f07000c

    .line 284
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnBackP:Landroid/widget/ImageView;

    const v0, 0x7f07009f

    .line 285
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPowerP:Landroid/widget/ImageView;

    const v0, 0x7f07000f

    .line 286
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    const v0, 0x7f0700ed

    .line 287
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgWiFiP:Landroid/widget/ImageView;

    const v0, 0x7f0700cb

    .line 288
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    const v0, 0x7f0700d8

    .line 289
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtRssiP:Landroid/widget/TextView;

    const v0, 0x7f070045

    .line 290
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgRssiP:Landroid/widget/ImageView;

    const v0, 0x7f070019

    .line 291
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnExitP:Landroid/widget/Button;

    const v0, 0x7f070047

    .line 292
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgSolarP:Landroid/widget/ImageView;

    .line 294
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnBackP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPowerP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnExitP:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerClick:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWiFiStatusHandler()V
    .locals 2

    .line 650
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 652
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 653
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handleWiFiStatus:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private readSocketData(Lcom/ocean/cmdrequest/CameraRequest;)V
    .locals 2

    .line 1239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ocean/gamecamerapro2/PreviewActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity$2;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;Lcom/ocean/cmdrequest/CameraRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setSize(II)V
    .locals 5

    .line 809
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoW:I

    .line 810
    iput p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoH:I

    .line 811
    iget p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoW:I

    iget p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoH:I

    mul-int p1, p1, p2

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    .line 814
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    if-nez p1, :cond_1

    goto :goto_2

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 819
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 823
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-le p1, v0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    if-ge p1, v0, :cond_5

    if-nez p2, :cond_5

    :cond_4
    move v4, v0

    move v0, p1

    move p1, v4

    .line 830
    :cond_5
    iget p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoW:I

    int-to-float p2, p2

    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoH:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    cmpg-float v3, v3, p2

    if-gez v3, :cond_6

    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_1

    :cond_6
    mul-float v2, v2, p2

    float-to-int p1, v2

    .line 839
    :goto_1
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoW:I

    iget v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nVideoH:I

    invoke-interface {p2, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 842
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 843
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 844
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 845
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method private system_initTimer()V
    .locals 7

    .line 1393
    new-instance v0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$3;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 1474
    new-instance v0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$4;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 1562
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimer:Ljava/util/Timer;

    .line 1563
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private ui_updateBattery()V
    .locals 9

    .line 1639
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const v3, 0x7f060016

    const v4, 0x7f06001b

    const v5, 0x7f060018

    const v6, 0x7f060019

    const/high16 v7, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/16 v8, 0xce

    if-gt v0, v8, :cond_6

    .line 1641
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    .line 1642
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1643
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1644
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    if-nez v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1646
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1647
    :cond_0
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 1650
    :cond_1
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1651
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1652
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1653
    :cond_2
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 1656
    :cond_3
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 1657
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1660
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1661
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1662
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1654
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1655
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1648
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1649
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1665
    :cond_6
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/16 v1, 0x65

    if-gt v0, v1, :cond_9

    .line 1668
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1669
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1670
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    if-lt v0, v1, :cond_7

    .line 1671
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1672
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1673
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1674
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1677
    :cond_7
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_8

    .line 1678
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1679
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1680
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1681
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1682
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    iget-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isLowBatteryHint:Z

    if-nez v0, :cond_b

    .line 1685
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isLowBatteryHint:Z

    const v0, 0x7f0b000f

    .line 1686
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_showPrompt(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1690
    :cond_8
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1691
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1692
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1693
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1694
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1695
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1700
    :cond_9
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    const/16 v3, 0x191

    if-gt v0, v3, :cond_b

    .line 1702
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1703
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1704
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    if-lt v0, v3, :cond_a

    .line 1705
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1706
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1707
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1708
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1711
    :cond_a
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryP:Landroid/widget/ImageView;

    const v3, 0x7f06001a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1712
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgBatteryL:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1713
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryP:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->txtBatteryL:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    :cond_b
    :goto_2
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nUpdateSolarPower:I

    if-ne v0, v2, :cond_c

    .line 1718
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgSolarP:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1719
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgSolarL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1721
    :cond_c
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgSolarP:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1722
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->imgSolarL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private ui_updateCameraDPI()V
    .locals 4

    .line 1767
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1769
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_2002:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_2002:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_2002:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_2002:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1772
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamP:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamL:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamP:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamL:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    :goto_0
    sget-boolean v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_is4K2KShow:Z

    if-eqz v0, :cond_1

    return-void

    .line 1782
    :cond_1
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectID:Ljava/lang/String;

    const-string v2, "RD7000_V01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1784
    :cond_2
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "4K"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1785
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f0b0000

    .line 1787
    invoke-virtual {p0, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00a7

    .line 1788
    invoke-virtual {p0, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ocean/gamecamerapro2/PreviewActivity$5;

    invoke-direct {v3, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$5;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1791
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1792
    sput-boolean v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_is4K2KShow:Z

    goto :goto_1

    .line 1795
    :cond_3
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    if-nez v0, :cond_5

    .line 1797
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_1002:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_1002:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_1002:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_1002:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_1002:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pic_dpi:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1799
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_1002:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pic_dpi:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1800
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamP:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_1002:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamL:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_1002:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1805
    :cond_4
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamP:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1806
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoCamL:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private ui_updateLoading(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1728
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    if-nez p1, :cond_0

    .line 1729
    invoke-static {p0}, Lcom/ocean/widget/MyLoadingDialog;->createDialog(Landroid/content/Context;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    .line 1731
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->show()V

    goto :goto_0

    .line 1733
    :cond_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    if-eqz p1, :cond_2

    .line 1734
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private ui_updatePhotoLeft()V
    .locals 3

    .line 1812
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    if-eqz v0, :cond_0

    return-void

    .line 1814
    :cond_0
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nPhotoLeft:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1816
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1817
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1818
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private ui_updatePreviewView()V
    .locals 2

    .line 1568
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeP:Landroid/widget/ImageView;

    const v1, 0x7f06008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1569
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1570
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeP:Landroid/widget/ImageView;

    const v1, 0x7f060062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1571
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1572
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1577
    :pswitch_1
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeP:Landroid/widget/ImageView;

    const v1, 0x7f06008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1578
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnVideoModeL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1579
    sget-boolean v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartP:Landroid/widget/ImageView;

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1581
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartL:Landroid/widget/ImageView;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1586
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartP:Landroid/widget/ImageView;

    const v1, 0x7f060091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1587
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartL:Landroid/widget/ImageView;

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1591
    :pswitch_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeP:Landroid/widget/ImageView;

    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1592
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnPhotoModeL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1593
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartP:Landroid/widget/ImageView;

    const v1, 0x7f060064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1594
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartL:Landroid/widget/ImageView;

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private ui_updateRecordTimer(Z)V
    .locals 4

    .line 1610
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcPlayMedia()V

    :cond_0
    if-eqz p1, :cond_2

    .line 1618
    iget-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->logBo:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->logBo:Z

    .line 1619
    iget-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->logBo:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string p1, "\u25cf %02d:%02d"

    .line 1620
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "%02d:%02d"

    .line 1622
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1624
    :goto_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1625
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1626
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1630
    :cond_2
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeP:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoVideoTimeL:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1633
    :goto_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartP:Landroid/widget/ImageView;

    const v0, 0x7f060091

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1634
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->btnStartL:Landroid/widget/ImageView;

    const v0, 0x7f060092

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private ui_updateWiFiSpeed()V
    .locals 5

    .line 1742
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x400

    .line 1743
    sget v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    sput v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I

    .line 1745
    sget v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I

    if-ltz v1, :cond_0

    sget v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I

    const/16 v2, 0x9c4

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v1, 0xc8

    .line 1746
    sput v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I

    :cond_1
    const-string v1, "%dKb/s"

    const/4 v2, 0x1

    .line 1748
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1749
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoWiFiSpeedP:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->infoWiFiSpeedL:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    sput v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->lastDataSizeLog:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1755
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private vlcInit()V
    .locals 3

    const v0, 0x7f070085

    .line 732
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    .line 733
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 734
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 736
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 738
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->options:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    .line 739
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 741
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 744
    :cond_0
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 745
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    return-void
.end method

.method private vlcOpenStream()V
    .locals 2

    .line 768
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcPlayMedia()V

    .line 769
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updatePreviewView()V

    .line 770
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method private vlcPlayMedia()V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    return-void
.end method

.method private vlcSetMedia(Ljava/lang/String;)V
    .locals 2

    .line 749
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 750
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 751
    invoke-virtual {v0, p1, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    const-string p1, ":network-caching=300"

    .line 752
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 753
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 754
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    return-void
.end method

.method private vlcStopMedia()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 764
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

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
    .locals 4
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

    .line 1113
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "RD5009PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "1002"

    .line 1114
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1115
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_1002:Ljava/util/ArrayList;

    .line 1116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_1002:Ljava/util/ArrayList;

    const-string v0, "2002"

    .line 1117
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1118
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_2002:Ljava/util/ArrayList;

    .line 1119
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    goto :goto_0

    .line 1122
    :cond_0
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_n9026Ret:I

    if-ne v0, v2, :cond_1

    const-string v0, "9025"

    .line 1123
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1124
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_1002:Ljava/util/ArrayList;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_1002:Ljava/util/ArrayList;

    const-string v0, "9022"

    .line 1126
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1127
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_2002:Ljava/util/ArrayList;

    .line 1128
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const-string v0, "9024"

    .line 1131
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_1002:Ljava/util/ArrayList;

    .line 1133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_1002:Ljava/util/ArrayList;

    const-string v0, "9023"

    .line 1134
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1135
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->value_2002:Ljava/util/ArrayList;

    .line 1136
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->item_2002:Ljava/util/ArrayList;

    .line 1142
    :goto_0
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateCameraDPI()V

    return-void
.end method

.method public camDidGetCmd9026Fail()V
    .locals 0

    return-void
.end method

.method public camDidGetCmd9026Succ(I)V
    .locals 0

    .line 1187
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_n9026Ret:I

    .line 1189
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraSettings()V

    return-void
.end method

.method public camDidGetFileListFail()V
    .locals 0

    return-void
.end method

.method public camDidGetFileListSucc(Ljava/util/ArrayList;)V
    .locals 0
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

    return-void
.end method

.method public camDidGetIDFail()V
    .locals 1

    const v0, 0x7f0b0007

    .line 928
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidGetIDSucc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public camDidGetModeFail()V
    .locals 1

    const-string v0, "camDidGetModeFail"

    .line 952
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->camRequestError(Ljava/lang/String;)V

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
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1153
    sget-boolean v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz v1, :cond_0

    .line 1154
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    const/4 p1, 0x0

    .line 1155
    sput-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 1156
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    .line 1157
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 1159
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-nez p1, :cond_1

    .line 1160
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    .line 1161
    sput-boolean v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 1162
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    .line 1163
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public camDidGetSDFreeSpaceFail()V
    .locals 0

    return-void
.end method

.method public camDidGetSDFreeSpaceSucc(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p1, v0

    .line 1089
    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_fSDFreeSpace:F

    .line 1090
    iget p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_fSDFreeSpace:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_fSDFreeSpace:F

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

    const/4 p1, 0x1

    .line 1080
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const/4 p1, 0x0

    .line 1081
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateLoading(Z)V

    const-string p1, "camDidGetSettingsFail"

    .line 1083
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidGetSettingsSucc(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1059
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    .line 1060
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectID:Ljava/lang/String;

    const-string v2, "RD5009PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "2002"

    .line 1061
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2002"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    :cond_0
    const-string v0, "1002"

    .line 1062
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1002"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pic_dpi:I

    goto :goto_0

    .line 1065
    :cond_1
    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_n9026Ret:I

    if-ne v1, v0, :cond_3

    const-string v0, "9022"

    .line 1066
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "9022"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    :cond_2
    const-string v0, "9025"

    .line 1067
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "9025"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pic_dpi:I

    goto :goto_0

    :cond_3
    const-string v0, "9023"

    .line 1070
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "9023"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->video_dpi:I

    :cond_4
    const-string v0, "9024"

    .line 1071
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "9024"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pic_dpi:I

    .line 1075
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraCmd3031()V

    return-void
.end method

.method public camDidRecordFail(II)V
    .locals 2

    const/4 p1, 0x1

    .line 1043
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const/4 p1, 0x0

    .line 1044
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateLoading(Z)V

    const/16 v0, -0x17

    if-ne p2, v0, :cond_0

    const p2, 0x7f0b00a6

    .line 1046
    invoke-virtual {p0, p2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 v0, -0xb

    if-ne p2, v0, :cond_1

    const p2, 0x7f0b0078

    .line 1048
    invoke-virtual {p0, p2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const p2, 0x7f0b00aa

    .line 1050
    invoke-virtual {p0, p2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1054
    :goto_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public camDidRecordSucc(II)V
    .locals 2

    const/4 p2, 0x1

    .line 1012
    iput-boolean p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const/4 v0, 0x0

    .line 1013
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    .line 1014
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCountCur:I

    .line 1015
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateLoading(Z)V

    if-ne p1, p2, :cond_0

    .line 1016
    sget-boolean v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-nez v1, :cond_0

    .line 1018
    iput p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    .line 1019
    sput-boolean p2, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 1020
    iput-boolean p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    .line 1021
    iput-boolean p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    .line 1022
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1025
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz p1, :cond_1

    .line 1027
    iput p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    .line 1028
    sput-boolean v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 1029
    iput-boolean p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    .line 1030
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    .line 1031
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nRecTimerCount:I

    :cond_1
    :goto_0
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
    .locals 1

    const-string v0, "camDidSetDateFail"

    .line 964
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidSetDateSucc()V
    .locals 0

    return-void
.end method

.method public camDidSetModeFail(I)V
    .locals 0

    const/4 p1, 0x1

    .line 914
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const/4 p1, 0x0

    .line 915
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateLoading(Z)V

    const p1, 0x7f0b0017

    .line 917
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidSetModeSucc(I)V
    .locals 5

    const/4 v0, 0x0

    .line 868
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_updateLoading(Z)V

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 870
    iput v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    const-string p1, "http://192.168.8.120:8192"

    .line 872
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcSetMedia(Ljava/lang/String;)V

    .line 875
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 877
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nKeepCamAlvieCount:I

    .line 878
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraSettings()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 880
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    const-string p1, "http://192.168.8.120:8192"

    .line 882
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->vlcSetMedia(Ljava/lang/String;)V

    .line 885
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 890
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nKeepCamAlvieCount:I

    .line 891
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraSettings()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 893
    iput-boolean v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const p1, 0x7f0b007a

    .line 895
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 896
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Camera Mode"

    iget v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SD Free Space"

    iget v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_fSDFreeSpace:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 898
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "Battery"

    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 901
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v0, 0x3

    iput v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    .line 903
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 905
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->finish()V

    goto :goto_0

    .line 907
    :cond_2
    iput-boolean v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    :goto_0
    return-void
.end method

.method public camDidSetTimeFail()V
    .locals 1

    const-string v0, "camDidSetTimeFail"

    .line 976
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidSetTimeSucc()V
    .locals 0

    return-void
.end method

.method public camDidSnapshotFail(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1001
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const/4 v0, 0x0

    const/16 v1, -0x17

    if-ne p1, v1, :cond_0

    const p1, 0x7f0b00a6

    .line 1003
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 v1, -0xb

    if-ne p1, v1, :cond_1

    const p1, 0x7f0b0078

    .line 1005
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const p1, 0x7f0b00b1

    .line 1007
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public camDidSnapshotSucc(I)V
    .locals 1

    const/4 p1, 0x1

    .line 994
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isDoNextAction:Z

    const p1, 0x7f0b00b2

    .line 995
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 136
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iput v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nAppOrientation:I

    goto :goto_0

    .line 141
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlP:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iput v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nAppOrientation:I

    .line 147
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 97
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f090003

    .line 98
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->setContentView(I)V

    const v0, 0x7f0b007a

    .line 100
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Mcu Name"

    const-string v2, "error"

    .line 101
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strMcuName:Ljava/lang/String;

    const-string v1, "Project ID"

    const-string v2, "error"

    .line 102
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "Project Ver"

    const-string v2, "error"

    .line 103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strProjectVer:Ljava/lang/String;

    const-string v1, "Build Time"

    const-string v2, "error"

    .line 104
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strBuildTime:Ljava/lang/String;

    const-string v1, "OTG"

    const-string v2, "error"

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_strOTG:Ljava/lang/String;

    const-string v1, "Camera Mode"

    .line 106
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    const-string v1, "Battery"

    const/4 v2, -0x1

    .line 107
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nBatteryStatus:I

    .line 109
    sput-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->isAppAlive:Z

    .line 110
    iput-object p0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->_instance:Lcom/ocean/gamecamerapro2/PreviewActivity;

    .line 111
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateBatStatus:Z

    .line 113
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initCameraRequest()V

    .line 114
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initPreviewView()V

    .line 115
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initWiFiStatusHandler()V

    .line 116
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initEventHandler()V

    .line 117
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->system_initTimer()V

    .line 118
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->initPreviewPlayer()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const v0, 0x7f0b007a

    .line 164
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Camera Mode"

    iget v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    sput-boolean v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->isAppAlive:Z

    .line 168
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isKeepCamAlive:Z

    .line 169
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateBatStatus:Z

    .line 170
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecStatus:Z

    .line 171
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdatePhotoLeft:Z

    .line 172
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isSocketConnect:Z

    .line 173
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isUpdateRecTimer:Z

    .line 175
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->closeSocketConn()V

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 179
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 180
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 181
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->detachViews()V

    .line 182
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 183
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 184
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->viewSurface:Landroid/view/SurfaceView;

    .line 185
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->release()V

    .line 186
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :goto_0
    :try_start_1
    sget-object v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerCamReq:Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;

    invoke-virtual {v1, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    sput-object v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerCamReq:Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->handleWiFiStatus:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :goto_2
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 208
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b007a

    .line 232
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 233
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "Camera Mode"

    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->G_nDevMode:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewVideoLayout(Lorg/videolan/libvlc/interfaces/IVLCVout;IIIIII)V
    .locals 0

    .line 802
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 125
    sput-boolean v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isAppAlive:Z

    .line 126
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isKeepCamAlive:Z

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nKeepCamAlvieCount:I

    .line 129
    sget-object v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->handlerCamReq:Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;

    invoke-virtual {v1, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 153
    sput-boolean v0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isAppAlive:Z

    .line 154
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->isKeepCamAlive:Z

    .line 155
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->closeSocketConn()V

    .line 157
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->finish()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 215
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nTouchChkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nTouchChkCount:I

    .line 216
    iget v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nTouchChkCount:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nTouchChkCount:I

    .line 218
    iget v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->nAppOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 219
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->layoutControlL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 787
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz p2, :cond_0

    .line 788
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 789
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1, p3, p4}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    .line 779
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 780
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 781
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1, p0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews(Lorg/videolan/libvlc/interfaces/IVLCVout$OnNewVideoLayoutListener;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 795
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz p1, :cond_0

    .line 796
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->detachViews()V

    :cond_0
    return-void
.end method

.method public ui_showPrompt(Ljava/lang/String;)V
    .locals 2

    .line 1824
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1825
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 1826
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x108009b

    .line 1827
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1828
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/PreviewActivity$6;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$6;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1836
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
