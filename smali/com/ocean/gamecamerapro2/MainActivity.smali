.class public Lcom/ocean/gamecamerapro2/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;
.implements Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;
.implements Lcom/ocean/ble/BT4Base$OnBT4BaseListener;
.implements Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_STATE_DEFEAT:I = -0x1

.field private static final BUTTON_STATE_LOADING:I = 0x32

.field private static final BUTTON_STATE_NROMAL:I = 0x0

.field private static final BUTTON_STATE_SUCCEED:I = 0x64

.field private static final MAIN_DELAY_EXIT_APP:I = 0x3

.field private static final MAIN_DELAY_SCAN_BT:I = 0x2

.field private static final MAIN_SET_CONN_STATUS:I = 0x1

.field private static final MSG_BT_SCAN_NONE:I = 0x6

.field private static final MSG_BT_SCAN_REPEAT:I = 0x4

.field private static final MSG_CANCEL_WAIT_VIEW:I = 0x1

.field private static final MSG_CHK_WIFI_OFF:I = 0x9

.field private static final MSG_CHK_WIFI_ON_END:I = 0x8

.field private static final MSG_CHK_WIFI_ON_SEC:I = 0x7

.field private static final MSG_SHOW_WAIT_SECOND:I = 0x5

.field private static final MSG_VIB_ENABLE:I = 0x0

.field private static final PERMISSION_CAMERA_MODE:I = 0x4

.field private static final PERMISSION_LOCATION_BTSCAN:I = 0x2

.field private static final PERMISSION_LOCATION_MAP:I = 0x3

.field private static final PERMISSION_READ_PHONE_STATE:I = 0x5

.field private static final PERMISSION_STORAGE_ONCREATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field public static _instance:Lcom/ocean/gamecamerapro2/MainActivity; = null

.field private static isWaitDlgCheck:Z = false

.field private static isWaitDlgStart:Z = false

.field private static mWaitDlg:Landroid/app/ProgressDialog;

.field private static nWaitDlgCount:I

.field private static nWaitDlgCountMax:I

.field private static strWaitDlgMsg:Ljava/lang/String;


# instance fields
.field public ACTIVITY_STATE:I

.field private G_isEnterFromLogin:Z

.field public G_nDevMode:I

.field public G_strBuildTime:Ljava/lang/String;

.field public G_strMcuName:Ljava/lang/String;

.field public G_strOTG:Ljava/lang/String;

.field public G_strProjectID:Ljava/lang/String;

.field public G_strProjectVer:Ljava/lang/String;

.field public G_strWiFiName:Ljava/lang/String;

.field private final REQUEST_ENABLE_BT:I

.field public adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

.field private beepManager:Lcom/ocean/ble/BeepManager;

.field private btnEnableBT:Landroid/widget/Button;

.field private btnEnableWiFi:Landroid/widget/Button;

.field private btnLocalAlbum:Landroid/widget/Button;

.field private btnOffWiFi:Landroid/widget/Button;

.field private btnRenameBT:Landroid/widget/Button;

.field private btnResetWiFi:Landroid/widget/Button;

.field private btnScanBT:Landroid/widget/Button;

.field private btnSkipBT:Landroid/widget/Button;

.field private cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

.field private connect_bt:Lcom/ocean/widget/CircularProgressButton;

.field private connect_study:Landroid/widget/TextView;

.field private imgSplash:Landroid/widget/ImageView;

.field private isChkBTScanTimeout:Z

.field private isChkWiFiOff:Z

.field private isChkWiFiOn:Z

.field private isManualDisconnect:Z

.field private layoutGudieIdx:Landroid/widget/RelativeLayout;

.field private layoutGuide00:Landroid/widget/RelativeLayout;

.field private layoutGuide01:Landroid/widget/RelativeLayout;

.field private layoutGuide02:Landroid/widget/RelativeLayout;

.field private layoutGuide03:Landroid/widget/RelativeLayout;

.field public layoutMidDevicesList:Landroid/widget/RelativeLayout;

.field private layoutWiFi4G:Landroid/widget/LinearLayout;

.field public listDevices:Landroid/widget/ListView;

.field public mBT4Base:Lcom/ocean/ble/BT4Base;

.field private mLmanager:Landroid/location/LocationManager;

.field private mainHandler:Landroid/os/Handler;

.field private main_layout:Landroid/widget/RelativeLayout;

.field private nBTReconnect:I

.field private nBTScanCount:I

.field private nChkBTScanTimeout:I

.field private nChkWiFiOffTimeout:I

.field private nChkWiFiOnTimeout:I

.field public nDeviceDetailPos:I

.field public nDeviceDetailVersion:I

.field private nGuidePage:I

.field private nVibratorNum:I

.field public pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

.field private pSystemTimer:Ljava/util/Timer;

.field private pSystemTimerHandler:Landroid/os/Handler;

.field private pSystemTimerTask:Ljava/util/TimerTask;

.field private pVibratorHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private pVibratorTimer:Ljava/util/Timer;

.field public strDeviceDetailProductID:Ljava/lang/String;

.field private txtVersion:Landroid/widget/TextView;

.field private wThread:Landroid/os/HandlerThread;

.field private workHandler:Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->main_layout:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    .line 94
    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_nDevMode:I

    const/4 v2, 0x0

    .line 95
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_isEnterFromLogin:Z

    .line 96
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isManualDisconnect:Z

    .line 98
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strMcuName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectVer:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strBuildTime:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strOTG:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strWiFiName:Ljava/lang/String;

    .line 319
    new-instance v3, Lcom/ocean/gamecamerapro2/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/ocean/gamecamerapro2/MainActivity$7;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    iput-object v3, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    .line 447
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mLmanager:Landroid/location/LocationManager;

    .line 905
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    .line 906
    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    .line 907
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->strDeviceDetailProductID:Ljava/lang/String;

    .line 908
    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailVersion:I

    .line 909
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    .line 910
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTReconnect:I

    .line 1188
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    .line 1436
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nVibratorNum:I

    .line 1437
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorTimer:Ljava/util/Timer;

    .line 1441
    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$23;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$23;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorHandler:Landroid/os/Handler;

    .line 1493
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimer:Ljava/util/Timer;

    .line 1494
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 1495
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 1496
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkBTScanTimeout:Z

    .line 1497
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkBTScanTimeout:I

    .line 1498
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTScanCount:I

    .line 1499
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOn:Z

    .line 1500
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOnTimeout:I

    .line 1501
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOff:Z

    .line 1502
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOffTimeout:I

    .line 1646
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v0, 0x2

    .line 1842
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->REQUEST_ENABLE_BT:I

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/gamecamerapro2/MainActivity;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btSetGpio2(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ocean/gamecamerapro2/MainActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_isEnterFromLogin:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_isEnterFromLogin:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ocean/gamecamerapro2/MainActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ocean/gamecamerapro2/MainActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOff:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOff:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ocean/gamecamerapro2/MainActivity;IZ)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/ocean/gamecamerapro2/MainActivity;->cellDidSelectedDev(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ocean/gamecamerapro2/MainActivity;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btDidDisconnecting(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nVibratorNum:I

    return p0
.end method

.method static synthetic access$1408(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nVibratorNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nVibratorNum:I

    return v0
.end method

.method static synthetic access$1500(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/ble/BeepManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->beepManager:Lcom/ocean/ble/BeepManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->system_stopVibrator()V

    return-void
.end method

.method static synthetic access$1700(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/ocean/gamecamerapro2/MainActivity;->isWaitDlgCheck:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/ocean/gamecamerapro2/MainActivity;->isWaitDlgStart:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->connect_bt:Lcom/ocean/widget/CircularProgressButton;

    return-object p0
.end method

.method static synthetic access$2000()I
    .locals 1

    .line 66
    sget v0, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCount:I

    return v0
.end method

.method static synthetic access$2008()I
    .locals 2

    .line 66
    sget v0, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCount:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .line 66
    sget v0, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCountMax:I

    return v0
.end method

.method static synthetic access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ocean/gamecamerapro2/MainActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkBTScanTimeout:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkBTScanTimeout:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkBTScanTimeout:I

    return p0
.end method

.method static synthetic access$2402(Lcom/ocean/gamecamerapro2/MainActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkBTScanTimeout:I

    return p1
.end method

.method static synthetic access$2408(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkBTScanTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkBTScanTimeout:I

    return v0
.end method

.method static synthetic access$2500(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTScanCount:I

    return p0
.end method

.method static synthetic access$2600(Lcom/ocean/gamecamerapro2/MainActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOn:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOn:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOnTimeout:I

    return p0
.end method

.method static synthetic access$2702(Lcom/ocean/gamecamerapro2/MainActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOnTimeout:I

    return p1
.end method

.method static synthetic access$2708(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOnTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOnTimeout:I

    return v0
.end method

.method static synthetic access$2800(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOffTimeout:I

    return p0
.end method

.method static synthetic access$2802(Lcom/ocean/gamecamerapro2/MainActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOffTimeout:I

    return p1
.end method

.method static synthetic access$2808(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOffTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOffTimeout:I

    return v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/ocean/gamecamerapro2/MainActivity;->strWaitDlgMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->workHandler:Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    return-object p0
.end method

.method static synthetic access$3000()Landroid/app/ProgressDialog;
    .locals 1

    .line 66
    sget-object v0, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ocean/gamecamerapro2/MainActivity;Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;)Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->workHandler:Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/widget/Button;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnEnableWiFi:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_EnableWiFi()V

    return-void
.end method

.method static synthetic access$3300(Lcom/ocean/gamecamerapro2/MainActivity;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btDidSearching(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/ocean/gamecamerapro2/MainActivity;I)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->permission_accessLocation(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_EnableBT()V

    return-void
.end method

.method static synthetic access$400(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->imgSplash:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->txtVersion:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ocean/gamecamerapro2/MainActivity;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    return p0
.end method

.method static synthetic access$602(Lcom/ocean/gamecamerapro2/MainActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    return p1
.end method

.method static synthetic access$700(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_GotoPage()V

    return-void
.end method

.method static synthetic access$800(Lcom/ocean/gamecamerapro2/MainActivity;I)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_ScanBT(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/cmdrequest/CameraRequest;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    return-object p0
.end method

.method private bt4base_initBluetoothFeature()V
    .locals 1

    .line 914
    new-instance v0, Lcom/ocean/ble/BT4Base;

    invoke-direct {v0, p0}, Lcom/ocean/ble/BT4Base;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    .line 915
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    if-nez v0, :cond_0

    const-string v0, "Bluetooth Error!"

    .line 916
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    invoke-virtual {v0, p0}, Lcom/ocean/ble/BT4Base;->setOnBT4BaseListener(Lcom/ocean/ble/BT4Base$OnBT4BaseListener;)V

    :goto_0
    return-void
.end method

.method private btDidConnecting(I)V
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    if-nez p1, :cond_1

    return-void

    .line 1093
    :cond_1
    iget v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const/4 v0, 0x4

    iput v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    .line 1096
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    invoke-virtual {v0, p1}, Lcom/ocean/ble/BT4Base;->didConnect(Lcom/ocean/ble/BLEDeviceObject;)V

    const/4 v0, 0x0

    .line 1098
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTReconnect:I

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b0084

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    .line 1102
    invoke-virtual/range {v1 .. v7}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private btDidDisconnecting(I)V
    .locals 8

    .line 1106
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    if-nez p1, :cond_0

    return-void

    .line 1109
    :cond_0
    iget v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const/4 v0, 0x3

    iput v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    .line 1113
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isManualDisconnect:Z

    .line 1114
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    invoke-virtual {v0, p1}, Lcom/ocean/ble/BT4Base;->didDisconnect(Lcom/ocean/ble/BLEDeviceObject;)V

    .line 1116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    .line 1117
    invoke-virtual/range {v1 .. v7}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private btDidSearching(I)V
    .locals 8

    .line 1121
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    invoke-virtual {p1}, Lcom/ocean/ble/BT4Base;->didSearch()V

    .line 1123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1124
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const-wide/16 v0, 0xa

    long-to-int v5, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    .line 1126
    iget-boolean p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkBTScanTimeout:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1128
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkBTScanTimeout:Z

    const/4 p1, 0x0

    .line 1129
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkBTScanTimeout:I

    .line 1130
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTScanCount:I

    goto :goto_0

    .line 1134
    :cond_0
    iget p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTScanCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTScanCount:I

    :goto_0
    return-void
.end method

.method private btSetGpio2(I)V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    if-eqz p1, :cond_2

    .line 1141
    iget-object v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const-string v1, "GPIO2"

    invoke-virtual {v0, p1, v1}, Lcom/ocean/ble/BT4Base;->iApp_SetGpio(Lcom/ocean/ble/BLEDeviceObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0b0076

    .line 1149
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private btSetGpio3(I)V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    if-eqz p1, :cond_1

    .line 1155
    iget-object v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const-string v1, "GPIO3"

    invoke-virtual {v0, p1, v1}, Lcom/ocean/ble/BT4Base;->iApp_SetGpio(Lcom/ocean/ble/BLEDeviceObject;Ljava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private btlist_initBluetoothListView()V
    .locals 2

    const v0, 0x7f070070

    .line 1194
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutMidDevicesList:Landroid/widget/RelativeLayout;

    const v0, 0x7f070082

    .line 1195
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->listDevices:Landroid/widget/ListView;

    .line 1197
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    if-nez v0, :cond_0

    .line 1198
    new-instance v0, Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-direct {v0, p0}, Lcom/ocean/ble/BLEDeviceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    .line 1199
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-virtual {v0, p0}, Lcom/ocean/ble/BLEDeviceAdapter;->setOnBLEDeviceAdapterListener(Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;)V

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->listDevices:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1202
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->listDevices:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->listDevices:Landroid/widget/ListView;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$17;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$17;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private btn_TopClick()V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1174
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/4 v0, 0x2

    .line 1175
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->permission_accessLocation(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f0b0025

    .line 1177
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->gps_enableLocation(I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1180
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->btDidSearching(I)V

    :goto_0
    return-void
.end method

.method private camRequestError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 897
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private cellDidSelectedDev(IZ)V
    .locals 1

    .line 1325
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->listDevices:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lcom/ocean/ble/BLEDeviceAdapter;

    .line 1327
    iget-boolean v0, p2, Lcom/ocean/ble/BLEDeviceAdapter;->isDisconnect:Z

    if-nez v0, :cond_3

    iget-boolean p2, p2, Lcom/ocean/ble/BLEDeviceAdapter;->isEditName:Z

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1330
    :cond_0
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p2, p2, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/ble/BLEDeviceObject;

    if-eqz p2, :cond_2

    .line 1333
    iget p2, p2, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 p1, 0x1

    .line 1335
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailVersion:I

    goto :goto_0

    .line 1347
    :cond_1
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const/4 v0, 0x0

    iput v0, p2, Lcom/ocean/ble/BT4Base;->nReconnectCount:I

    .line 1348
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btDidConnecting(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private gps_enableLocation(I)Z
    .locals 2

    const-string v0, "location"

    .line 451
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mLmanager:Landroid/location/LocationManager;

    .line 452
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mLmanager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mLmanager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 453
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    .line 456
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    .line 457
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 458
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b0074

    .line 459
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$9;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b0023

    .line 465
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$8;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x0

    return p1

    :cond_0
    const v0, 0x7f0b0025

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 479
    invoke-direct {p0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->btDidSearching(I)V

    :cond_1
    return v1
.end method

.method private guide_EnableBT()V
    .locals 3

    .line 1740
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1741
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0, v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1745
    :cond_0
    iput v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    .line 1746
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_GotoPage()V

    :goto_0
    return-void
.end method

.method private guide_EnableWiFi()V
    .locals 2

    .line 1777
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1779
    :cond_0
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->btSetGpio3(I)V

    return-void
.end method

.method private guide_GotoPage()V
    .locals 5

    .line 1783
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1786
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1787
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1788
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1789
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1790
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide03:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1792
    :cond_0
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 1794
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1795
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1796
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1797
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1798
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1799
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide03:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1800
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 1802
    :cond_1
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 1804
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1805
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1806
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1807
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1808
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1809
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide03:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 1811
    :cond_2
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 1813
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_3

    .line 1814
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutWiFi4G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1816
    :cond_3
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutWiFi4G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1818
    :goto_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1819
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1820
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1821
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1822
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide03:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1824
    iget-boolean v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOff:Z

    if-nez v0, :cond_5

    .line 1826
    iput-boolean v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOff:Z

    .line 1827
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOffTimeout:I

    goto :goto_1

    .line 1833
    :cond_4
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1834
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1835
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1836
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide03:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private guide_ScanBT(I)Z
    .locals 4

    .line 1751
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 1752
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0, p1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    .line 1761
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    .line 1762
    invoke-direct {p0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->permission_accessLocation(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const p1, 0x7f0b0025

    .line 1765
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->gps_enableLocation(I)Z

    move-result p1

    return p1

    .line 1770
    :cond_2
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btDidSearching(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private guide_initView()V
    .locals 2

    const v0, 0x7f07006b

    .line 1650
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGudieIdx:Landroid/widget/RelativeLayout;

    const v0, 0x7f070067

    .line 1651
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide00:Landroid/widget/RelativeLayout;

    const v0, 0x7f070068

    .line 1652
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide01:Landroid/widget/RelativeLayout;

    const v0, 0x7f070069

    .line 1653
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide02:Landroid/widget/RelativeLayout;

    const v0, 0x7f07006a

    .line 1654
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutGuide03:Landroid/widget/RelativeLayout;

    const v0, 0x7f07007b

    .line 1655
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutWiFi4G:Landroid/widget/LinearLayout;

    const v0, 0x7f07001a

    .line 1657
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnLocalAlbum:Landroid/widget/Button;

    .line 1658
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnLocalAlbum:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$27;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$27;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070018

    .line 1675
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnEnableBT:Landroid/widget/Button;

    .line 1676
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnEnableBT:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$28;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$28;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070020

    .line 1685
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnScanBT:Landroid/widget/Button;

    .line 1686
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnScanBT:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$29;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$29;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070023

    .line 1694
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnEnableWiFi:Landroid/widget/Button;

    .line 1695
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnEnableWiFi:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$30;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$30;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001f

    .line 1705
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnRenameBT:Landroid/widget/Button;

    .line 1706
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnRenameBT:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$31;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$31;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001d

    .line 1714
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnResetWiFi:Landroid/widget/Button;

    .line 1715
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnResetWiFi:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$32;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$32;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070021

    .line 1723
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnSkipBT:Landroid/widget/Button;

    .line 1724
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnSkipBT:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$33;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$33;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 1735
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    .line 1736
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_GotoPage()V

    return-void
.end method

.method private initCameraRequest()V
    .locals 1

    .line 633
    new-instance v0, Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    .line 634
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;->setOnCameraRequestListener(Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;)V

    return-void
.end method

.method private initThreadHandler()V
    .locals 2

    .line 313
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->wThread:Landroid/os/HandlerThread;

    .line 314
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 315
    new-instance v0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->workHandler:Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    return-void
.end method

.method private initViews()V
    .locals 4

    const v0, 0x7f070084

    .line 249
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->main_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f070048

    .line 250
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->imgSplash:Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->imgSplash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0700dd

    .line 252
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->txtVersion:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->txtVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f07002b

    .line 256
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ocean/widget/CircularProgressButton;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->connect_bt:Lcom/ocean/widget/CircularProgressButton;

    .line 257
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->connect_bt:Lcom/ocean/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/CircularProgressButton;->setIndeterminateProgressMode(Z)V

    .line 258
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->connect_bt:Lcom/ocean/widget/CircularProgressButton;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$3;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ocean/widget/CircularProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07002c

    .line 268
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->connect_study:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->connect_study:Landroid/widget/TextView;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$4;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001c

    .line 277
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnOffWiFi:Landroid/widget/Button;

    .line 278
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->btnOffWiFi:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$5;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$6;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private permission_accessCamera()Z
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 541
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 542
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private permission_accessLocation(I)Z
    .locals 6

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 497
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 505
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 512
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1f

    if-ge v2, v5, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 513
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v4

    :cond_0
    return v3

    :cond_1
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 521
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-static {p0, v1, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v4

    :cond_2
    return v3
.end method

.method private permission_accessPhoneState(I)Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 550
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 551
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private permission_accessStorage()Z
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 532
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 533
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private system_initTimer()V
    .locals 7

    .line 1506
    new-instance v0, Lcom/ocean/gamecamerapro2/MainActivity$25;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/MainActivity$25;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 1585
    new-instance v0, Lcom/ocean/gamecamerapro2/MainActivity$26;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/MainActivity$26;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 1626
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimer:Ljava/util/Timer;

    .line 1627
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private system_initVibrator()V
    .locals 1

    .line 1478
    new-instance v0, Lcom/ocean/ble/BeepManager;

    invoke-direct {v0, p0}, Lcom/ocean/ble/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->beepManager:Lcom/ocean/ble/BeepManager;

    return-void
.end method

.method private system_startVibrator()V
    .locals 7

    .line 1454
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nVibratorNum:I

    if-eqz v0, :cond_0

    return-void

    .line 1456
    :cond_0
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorTimer:Ljava/util/Timer;

    new-instance v2, Lcom/ocean/gamecamerapro2/MainActivity$24;

    invoke-direct {v2, p0}, Lcom/ocean/gamecamerapro2/MainActivity$24;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x5dc

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private system_stopVibrator()V
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1469
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nVibratorNum:I

    .line 1470
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1471
    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorTimer:Ljava/util/Timer;

    .line 1472
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->pVibratorTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public btDidConnected(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 8

    const/4 v0, 0x0

    .line 968
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTReconnect:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    .line 970
    invoke-virtual/range {v1 .. v7}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    .line 972
    iget v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {p0, v1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;I)V

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-virtual {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    .line 981
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 983
    :cond_1
    iget v0, p1, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    .line 984
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput-object p1, v0, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    const/4 p1, 0x3

    .line 985
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    .line 986
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_GotoPage()V

    return-void
.end method

.method public btDidDisconnected(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 927
    invoke-virtual/range {v0 .. v6}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    .line 928
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 931
    invoke-virtual {p0, v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;I)V

    .line 943
    :cond_0
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-boolean v0, v0, Lcom/ocean/gamecamerapro2/MyApplication;->isManualDisconnect:Z

    if-eqz v0, :cond_1

    .line 945
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->isManualDisconnect:Z

    return-void

    .line 948
    :cond_1
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    iget p1, p1, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    if-ne v0, p1, :cond_2

    .line 949
    iget p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btFailConnecting(I)V

    :cond_2
    return-void
.end method

.method public btDidGetAddress(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "can\'t get ble address"

    .line 1022
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public btDidSearched(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 2

    .line 1003
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutMidDevicesList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 1005
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->layoutMidDevicesList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1007
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-virtual {p1}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    .line 1015
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkBTScanTimeout:Z

    .line 1016
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkBTScanTimeout:I

    return-void
.end method

.method public btDidSendData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public btDidUpdateDevices()V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-virtual {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public btFailConnecting(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    if-nez p1, :cond_2

    return-void

    .line 1038
    :cond_2
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 1040
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTReconnect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTReconnect:I

    .line 1041
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nBTReconnect:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 1043
    new-instance p1, Lcom/ocean/gamecamerapro2/MainActivity$15;

    invoke-direct {p1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$15;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1060
    :cond_3
    new-instance v0, Lcom/ocean/gamecamerapro2/MainActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity$16;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;Lcom/ocean/ble/BLEDeviceObject;)V

    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

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
    .locals 0

    return-void
.end method

.method public camDidGetIDSucc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public camDidGetModeFail()V
    .locals 0

    return-void
.end method

.method public camDidGetModeSucc(I)V
    .locals 3

    .line 726
    iput p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_nDevMode:I

    .line 728
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 729
    iput v0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    .line 730
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 731
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 733
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->workHandler:Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    const/16 v0, 0x102

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public camDidGetModelIDFail()V
    .locals 3

    .line 686
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 687
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    .line 688
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 689
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    iget v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->ACTIVITY_STATE:I

    if-ne v0, v1, :cond_0

    .line 693
    new-instance v0, Lcom/ocean/widget/IOSAlertDialog;

    invoke-direct {v0, p0}, Lcom/ocean/widget/IOSAlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ocean/widget/IOSAlertDialog;->builder()Lcom/ocean/widget/IOSAlertDialog;

    move-result-object v0

    const v1, 0x7f0b00a2

    .line 694
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/IOSAlertDialog;->setTitle(Ljava/lang/String;)Lcom/ocean/widget/IOSAlertDialog;

    move-result-object v0

    const v1, 0x7f0b00a1

    .line 695
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/IOSAlertDialog;->setMsg(Ljava/lang/String;)Lcom/ocean/widget/IOSAlertDialog;

    move-result-object v0

    const v1, 0x7f0b00a0

    .line 696
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/gamecamerapro2/MainActivity$14;

    invoke-direct {v2, p0}, Lcom/ocean/gamecamerapro2/MainActivity$14;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/IOSAlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/IOSAlertDialog;

    move-result-object v0

    const v1, 0x7f0b009f

    .line 704
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/gamecamerapro2/MainActivity$13;

    invoke-direct {v2, p0}, Lcom/ocean/gamecamerapro2/MainActivity$13;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/IOSAlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/IOSAlertDialog;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Lcom/ocean/widget/IOSAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public camDidGetModelIDSucc(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    const-string v0, "String0"

    .line 665
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "String0"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strMcuName:Ljava/lang/String;

    :cond_0
    const-string v0, "String1"

    .line 666
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "String1"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    :cond_1
    const-string v0, "String3"

    .line 667
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "String2"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strBuildTime:Ljava/lang/String;

    :cond_2
    const-string v0, "String2"

    .line 668
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "String3"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectVer:Ljava/lang/String;

    :cond_3
    const-string v0, "String4"

    .line 669
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "String4"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strOTG:Ljava/lang/String;

    .line 671
    :cond_4
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD2021"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD5009PRO"

    .line 672
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD7000"

    .line 673
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD7000_V01"

    .line 674
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 676
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraDate()V

    goto :goto_0

    .line 680
    :cond_6
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->camDidGetModelIDFail()V

    :cond_7
    :goto_0
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
    .locals 2

    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x233a

    if-ne p2, p1, :cond_0

    const-string p1, "Off WiFi Succ"

    const/4 p2, 0x0

    .line 769
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 771
    :cond_0
    iget p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 773
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    iget p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 774
    iget p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btSetGpio2(I)V

    .line 778
    :cond_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public camDidSetDateFail()V
    .locals 1

    const-string v0, "camDidSetDateFail"

    .line 750
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidSetDateSucc()V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraTime()V

    return-void
.end method

.method public camDidSetModeFail(I)V
    .locals 0

    const-string p1, "camDidSetModeFail"

    .line 645
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidSetModeSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidSetTimeFail()V
    .locals 1

    const-string v0, "camDidSetTimeFail"

    .line 762
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidSetTimeSucc()V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraMode()V

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

.method public cellDidDisconnect(I)V
    .locals 5

    .line 1230
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1232
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1233
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1234
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1235
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108009b

    .line 1236
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/ocean/gamecamerapro2/MainActivity$19;

    invoke-direct {v3, p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity$19;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;I)V

    .line 1237
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ocean/gamecamerapro2/MainActivity$18;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/MainActivity$18;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    .line 1247
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1256
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public cellDidRename(I)V
    .locals 5

    .line 1261
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    if-nez p1, :cond_0

    return-void

    .line 1270
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090006

    const/4 v2, 0x0

    .line 1271
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07002f

    .line 1272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f070030

    .line 1273
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 1275
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1276
    iget-object v3, p1, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b009c

    .line 1277
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1279
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1280
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    .line 1281
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1282
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 1283
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00a7

    .line 1284
    invoke-virtual {p0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ocean/gamecamerapro2/MainActivity$21;

    invoke-direct {v3, p0, v1, p1}, Lcom/ocean/gamecamerapro2/MainActivity$21;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;Landroid/widget/EditText;Lcom/ocean/ble/BLEDeviceObject;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b0092

    .line 1303
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$20;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$20;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1310
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public cellDidSetGpio2(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1218
    :cond_0
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btSetGpio2(I)V

    return-void
.end method

.method public cellDidSetGpio3(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1225
    :cond_0
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->btSetGpio3(I)V

    return-void
.end method

.method public deviceDidGetGpioStatus(I)V
    .locals 0

    return-void
.end method

.method public deviceDidUpdateAuto(I)V
    .locals 0

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 236
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 237
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 238
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1846
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 1850
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1852
    iput p2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    .line 1853
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_GotoPage()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->requestWindowFeature(I)Z

    .line 115
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 116
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f090001

    .line 117
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->setContentView(I)V

    .line 119
    sput-object p0, Lcom/ocean/gamecamerapro2/MainActivity;->_instance:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_isEnterFromLogin:Z

    .line 123
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->bt4base_initBluetoothFeature()V

    .line 124
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->btlist_initBluetoothListView()V

    .line 125
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->system_initTimer()V

    .line 126
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->system_initVibrator()V

    .line 128
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->initCameraRequest()V

    .line 129
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->initViews()V

    .line 130
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->guide_initView()V

    .line 131
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->initThreadHandler()V

    .line 132
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->permission_accessStorage()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 201
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0075

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x108009b

    .line 203
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0028

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00a7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/ocean/gamecamerapro2/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/MainActivity$2;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0092

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/ocean/gamecamerapro2/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/MainActivity$1;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    .line 230
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 560
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 561
    array-length v0, p2

    if-eqz v0, :cond_6

    array-length v0, p3

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0b00a7

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 566
    aget-object p1, p2, v2

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 568
    aget p1, p3, v2

    if-ne p1, v1, :cond_5

    .line 569
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0022

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 571
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ocean/gamecamerapro2/MainActivity$10;

    invoke-direct {p3, p0}, Lcom/ocean/gamecamerapro2/MainActivity$10;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 577
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 585
    aget-object p1, p2, v2

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 587
    aget p1, p3, v2

    if-ne p1, v1, :cond_2

    .line 588
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b008b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 590
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ocean/gamecamerapro2/MainActivity$12;

    invoke-direct {p3, p0}, Lcom/ocean/gamecamerapro2/MainActivity$12;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0b0092

    .line 600
    invoke-virtual {p0, p2}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ocean/gamecamerapro2/MainActivity$11;

    invoke-direct {p3, p0}, Lcom/ocean/gamecamerapro2/MainActivity$11;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const p1, 0x7f0b0025

    .line 608
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->gps_enableLocation(I)Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x4

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->ACTIVITY_STATE:I

    .line 140
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->main_layout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 144
    iput v0, v1, Landroid/os/Message;->what:I

    .line 145
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 146
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->mainHandler:Landroid/os/Handler;

    .line 153
    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-boolean v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->isLoginSetWiFi:Z

    if-eqz v1, :cond_1

    .line 155
    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput-boolean v2, v1, Lcom/ocean/gamecamerapro2/MyApplication;->isLoginSetWiFi:Z

    .line 156
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->workHandler:Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->workHandler:Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    const/16 v3, 0x101

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    :cond_1
    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-boolean v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->isPreviewExit:Z

    if-eqz v1, :cond_2

    .line 161
    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput-boolean v2, v1, Lcom/ocean/gamecamerapro2/MyApplication;->isPreviewExit:Z

    .line 162
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    const/4 v3, -0x4

    const-string v4, "9018"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2
    iget-boolean v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOff:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nGuidePage:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 175
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->isChkWiFiOff:Z

    .line 176
    iput v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->nChkWiFiOffTimeout:I

    .line 179
    :cond_3
    iput-boolean v2, p0, Lcom/ocean/gamecamerapro2/MainActivity;->G_isEnterFromLogin:Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x2

    .line 186
    iput v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->ACTIVITY_STATE:I

    .line 187
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity;->main_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public ui_showPrompt(Ljava/lang/String;)V
    .locals 2

    .line 1419
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1420
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 1421
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x108009b

    .line 1422
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1423
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$22;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$22;-><init>(Lcom/ocean/gamecamerapro2/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1431
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public ui_showText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1409
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public ui_showText(Ljava/lang/String;I)V
    .locals 0

    .line 1414
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V
    .locals 2

    .line 1380
    sget-object v0, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1382
    sget-object v0, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    sget-object v0, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1385
    :cond_0
    sput-boolean v1, Lcom/ocean/gamecamerapro2/MainActivity;->isWaitDlgStart:Z

    .line 1386
    sput-boolean v1, Lcom/ocean/gamecamerapro2/MainActivity;->isWaitDlgCheck:Z

    .line 1387
    sput v1, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCount:I

    .line 1388
    sput v1, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCountMax:I

    const/4 v0, 0x0

    .line 1389
    sput-object v0, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    .line 1390
    sput-object v0, Lcom/ocean/gamecamerapro2/MainActivity;->strWaitDlgMsg:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 1394
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    .line 1395
    sget-object p1, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1396
    sget-object p1, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1397
    sget-object p1, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 1398
    sget-object p1, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1399
    sget-object p1, Lcom/ocean/gamecamerapro2/MainActivity;->mWaitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 p1, 0x1

    .line 1400
    sput-boolean p1, Lcom/ocean/gamecamerapro2/MainActivity;->isWaitDlgStart:Z

    .line 1401
    sput v1, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCount:I

    .line 1402
    sput p4, Lcom/ocean/gamecamerapro2/MainActivity;->nWaitDlgCountMax:I

    .line 1403
    sput-boolean p5, Lcom/ocean/gamecamerapro2/MainActivity;->isWaitDlgCheck:Z

    .line 1404
    sput-object p3, Lcom/ocean/gamecamerapro2/MainActivity;->strWaitDlgMsg:Ljava/lang/String;

    :cond_2
    return-void
.end method
