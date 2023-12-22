.class public Lcom/ocean/gamecamerapro2/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;,
        Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;
    }
.end annotation


# static fields
.field public static final ITEM:I = 0x0

.field private static final MSG_BACK_TO_SETTINGS:I = 0x9

.field private static final MSG_GET_SETTINGS_SUCC:I = 0x8

.field private static final MSG_KEEP_CAM_ALVIE:I = 0x14

.field private static final MSG_LOADING_SHOW_N:I = 0x16

.field private static final MSG_LOADING_SHOW_Y:I = 0x15

.field private static final MSG_SET_CMD_FAIL:I = 0x7

.field private static final MSG_SET_CMD_FAIL2:I = 0xa

.field private static final MSG_SET_CMD_SUCCESS:I = 0x14

.field private static final MSG_SHOW_CMD_SELECTION:I = 0x3

.field private static final MSG_SHOW_RESTART:I = 0x2

.field private static final MSG_SHOW_WAIT_N:I = 0x1

.field public static final SECTION:I = 0x1

.field public static _instance:Lcom/ocean/gamecamerapro2/SettingsActivity;


# instance fields
.field private G_fSDFreeSpace:F

.field private G_nDevMode:I

.field private G_paramSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;",
            ">;"
        }
    .end annotation
.end field

.field public G_strBuildTime:Ljava/lang/String;

.field public G_strCameraName:Ljava/lang/String;

.field public G_strMcuName:Ljava/lang/String;

.field public G_strOTG:Ljava/lang/String;

.field public G_strProjectID:Ljava/lang/String;

.field public G_strProjectVer:Ljava/lang/String;

.field private aptViewSettings:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

.field private btnCancelWiFi:Landroid/widget/Button;

.field private cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

.field private dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

.field public firstradiobutton:I

.field private handlerItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private houContent:[Ljava/lang/String;

.field private imgBack2Preview:Landroid/widget/ImageView;

.field private isKeepCamAlive:Z

.field private layoutBottomBar:Landroid/widget/RelativeLayout;

.field private layoutItemPar:Landroid/widget/LinearLayout;

.field private layoutTopBar:Landroid/widget/RelativeLayout;

.field private listSettingsCmd:[Ljava/lang/String;

.field private listSettingsCmdRD2021:[Ljava/lang/String;

.field private listSettingsCmdRD5009PRO:[Ljava/lang/String;

.field private listSettingsCmdRD7000:[Ljava/lang/String;

.field private listViewSettings:Lcom/ocean/widget/PinnedSectionListView;

.field private mHandler_Connect:Landroid/os/Handler;

.field private minContent:[Ljava/lang/String;

.field private nBatteryStatus:I

.field private nCurCmdPos:I

.field private nKeepCamAlvieCount:I

.field private nPickMin:I

.field private nPickSec:I

.field private pSystemTimer:Ljava/util/Timer;

.field private pSystemTimerHandler:Landroid/os/Handler;

.field private pSystemTimerTask:Ljava/util/TimerTask;

.field private pickerRadioItems:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private secContent:[Ljava/lang/String;

.field private strSettingName:Ljava/lang/String;

.field private txtProgressBar:Landroid/widget/TextView;

.field private waitSettingsLoad:Landroid/widget/ProgressBar;

.field private wheelHou:Lcom/ocean/wheel/WheelView;

.field private wheelMin:Lcom/ocean/wheel/WheelView;

.field private wheelSec:Lcom/ocean/wheel/WheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 28

    move-object/from16 v0, p0

    .line 65
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    .line 69
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 70
    iput v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->firstradiobutton:I

    .line 76
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->strSettingName:Ljava/lang/String;

    const/4 v3, -0x1

    .line 77
    iput v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_nDevMode:I

    const/4 v3, 0x0

    .line 78
    iput v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_fSDFreeSpace:F

    .line 79
    iput v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nBatteryStatus:I

    .line 81
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strMcuName:Ljava/lang/String;

    .line 82
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    .line 83
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectVer:Ljava/lang/String;

    .line 84
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strBuildTime:Ljava/lang/String;

    .line 85
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strOTG:Ljava/lang/String;

    .line 86
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strCameraName:Ljava/lang/String;

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v4, "9001"

    const-string v5, "1002"

    const-string v6, "9007"

    const-string v7, "2002"

    const-string v8, "9008"

    const-string v9, "2007"

    const-string v10, "9002"

    const-string v11, "9003"

    const-string v12, "9005"

    const-string v13, "9012"

    const-string v14, "9004"

    const-string v15, "9006"

    const-string v16, "9013"

    const-string v17, "9014"

    const-string v18, "9015"

    const-string v19, "9016"

    const-string v20, "9009"

    const-string v21, "2008"

    const-string v22, "9010"

    const-string v23, "9017"

    const-string v24, "3010"

    const-string v25, "3011"

    .line 100
    filled-new-array/range {v4 .. v25}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmdRD2021:[Ljava/lang/String;

    const-string v4, "9001"

    const-string v5, "1002"

    const-string v6, "9007"

    const-string v7, "2002"

    const-string v8, "9008"

    const-string v9, "2007"

    const-string v10, "9002"

    const-string v11, "9003"

    const-string v12, "2003"

    const-string v13, "9005"

    const-string v14, "9012"

    const-string v15, "9004"

    const-string v16, "9006"

    const-string v17, "9013"

    const-string v18, "9014"

    const-string v19, "9015"

    const-string v20, "9016"

    const-string v21, "9009"

    const-string v22, "2008"

    const-string v23, "9010"

    const-string v24, "9017"

    const-string v25, "3010"

    const-string v26, "3011"

    .line 126
    filled-new-array/range {v4 .. v26}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmdRD7000:[Ljava/lang/String;

    const-string v4, "9001"

    const-string v5, "9025"

    const-string v6, "9024"

    const-string v7, "9007"

    const-string v8, "9022"

    const-string v9, "9023"

    const-string v10, "9008"

    const-string v11, "2007"

    const-string v12, "9002"

    const-string v13, "9003"

    const-string v14, "9005"

    const-string v15, "9012"

    const-string v16, "9004"

    const-string v17, "9006"

    const-string v18, "9013"

    const-string v19, "9014"

    const-string v20, "9015"

    const-string v21, "9016"

    const-string v22, "9009"

    const-string v23, "2008"

    const-string v24, "9010"

    const-string v25, "9017"

    const-string v26, "3010"

    const-string v27, "3011"

    .line 153
    filled-new-array/range {v4 .. v27}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmdRD5009PRO:[Ljava/lang/String;

    .line 335
    iput v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nCurCmdPos:I

    .line 558
    new-instance v3, Lcom/ocean/gamecamerapro2/SettingsActivity$2;

    invoke-direct {v3, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity$2;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->handlerItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 744
    new-instance v3, Lcom/ocean/gamecamerapro2/SettingsActivity$4;

    invoke-direct {v3, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity$4;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pickerRadioItems:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1314
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    .line 1315
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    .line 1316
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    .line 1317
    iput v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nPickSec:I

    .line 1318
    iput v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nPickMin:I

    .line 2115
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    .line 2130
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimer:Ljava/util/Timer;

    .line 2131
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 2132
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 2133
    iput-boolean v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->isKeepCamAlive:Z

    .line 2134
    iput v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/gamecamerapro2/SettingsActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/ocean/gamecamerapro2/SettingsActivity;)I
    .locals 2

    .line 65
    iget v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/cmdrequest/CameraRequest;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_set9008(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_set9002(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_set9004(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_set901x(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->aptViewSettings:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/widget/MyLoadingDialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSelectionView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ocean/gamecamerapro2/SettingsActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nPickSec:I

    return p0
.end method

.method static synthetic access$1902(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nPickSec:I

    return p1
.end method

.method static synthetic access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/wheel/WheelView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/wheel/WheelView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/wheel/WheelView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ocean/gamecamerapro2/SettingsActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nPickMin:I

    return p0
.end method

.method static synthetic access$2302(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nPickMin:I

    return p1
.end method

.method static synthetic access$2400(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$2500(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->checkInput(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->strSettingName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->strSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->doBack()V

    return-void
.end method

.method static synthetic access$2800(Lcom/ocean/gamecamerapro2/SettingsActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->isKeepCamAlive:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ocean/gamecamerapro2/SettingsActivity;)F
    .locals 0

    .line 65
    iget p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_fSDFreeSpace:F

    return p0
.end method

.method static synthetic access$400(Lcom/ocean/gamecamerapro2/SettingsActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nBatteryStatus:I

    return p0
.end method

.method static synthetic access$500(Lcom/ocean/gamecamerapro2/SettingsActivity;)[Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->txtProgressBar:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutItemPar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ocean/gamecamerapro2/SettingsActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nCurCmdPos:I

    return p0
.end method

.method static synthetic access$802(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nCurCmdPos:I

    return p1
.end method

.method static synthetic access$900(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->system_setCamName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private camRequestError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2045
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private checkInput(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "^[A-Za-z0-9]{0,12}$"

    .line 1690
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1691
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1692
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1694
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private doBack()V
    .locals 2

    .line 2104
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutItemPar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutItemPar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2109
    iput v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    .line 2110
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    iget v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_nDevMode:I

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V

    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 1701
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1702
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    .line 1703
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1704
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initCameraRequest()V
    .locals 1

    .line 1728
    new-instance v0, Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    .line 1729
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;->setOnCameraRequestListener(Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;)V

    const/4 v0, 0x0

    .line 1731
    iput v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    .line 1732
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraModelID()V

    return-void
.end method

.method private initSettingsBottomBar()V
    .locals 2

    const v0, 0x7f070073

    .line 2057
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutBottomBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f070022

    .line 2058
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->btnCancelWiFi:Landroid/widget/Button;

    .line 2059
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->btnCancelWiFi:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$61;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$61;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSettingsCmdItems()V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "RD5009PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 783
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9001()V

    .line 784
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd1002()V

    .line 785
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9007()V

    .line 786
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd2002()V

    .line 787
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9008()V

    .line 788
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9002()V

    .line 789
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9003()V

    .line 790
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "RD7000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd2003()V

    .line 793
    :cond_1
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9005()V

    .line 794
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9012()V

    .line 795
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9004()V

    .line 796
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9006()V

    .line 797
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9013()V

    .line 798
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9014()V

    .line 799
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9015()V

    .line 800
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9016()V

    .line 801
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd2007()V

    .line 802
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9009()V

    .line 803
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd2008()V

    .line 804
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9010()V

    .line 805
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9017()V

    .line 806
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd3010()V

    .line 807
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd3011()V

    goto :goto_0

    .line 810
    :cond_2
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9001()V

    .line 811
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9025()V

    .line 812
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9024()V

    .line 813
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9007()V

    .line 814
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9022()V

    .line 815
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9023()V

    .line 816
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9008()V

    .line 817
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9002()V

    .line 818
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9003()V

    .line 819
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9005()V

    .line 820
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9012()V

    .line 821
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9004()V

    .line 822
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9006()V

    .line 823
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9013()V

    .line 824
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9014()V

    .line 825
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9015()V

    .line 826
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9016()V

    .line 827
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd2007()V

    .line 828
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9009()V

    .line 829
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd2008()V

    .line 830
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9010()V

    .line 831
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9017()V

    .line 832
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd3010()V

    .line 833
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd3011()V

    :goto_0
    return-void
.end method

.method private initSettingsListView()V
    .locals 2

    .line 339
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->aptViewSettings:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    const v0, 0x7f07007f

    .line 341
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ocean/widget/PinnedSectionListView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listViewSettings:Lcom/ocean/widget/PinnedSectionListView;

    .line 342
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listViewSettings:Lcom/ocean/widget/PinnedSectionListView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->aptViewSettings:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 343
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listViewSettings:Lcom/ocean/widget/PinnedSectionListView;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->handlerItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/PinnedSectionListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listViewSettings:Lcom/ocean/widget/PinnedSectionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ocean/widget/PinnedSectionListView;->setShadowVisible(Z)V

    .line 345
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listViewSettings:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method private initSettingsMiddleView()V
    .locals 1

    .line 2121
    invoke-static {p0}, Lcom/ocean/widget/MyLoadingDialog;->createDialog(Landroid/content/Context;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->dlgLoading:Lcom/ocean/widget/MyLoadingDialog;

    const v0, 0x7f070080

    .line 2122
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->txtProgressBar:Landroid/widget/TextView;

    const v0, 0x7f07006e

    .line 2123
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutItemPar:Landroid/widget/LinearLayout;

    return-void
.end method

.method private initSettingsTopBar()V
    .locals 2

    const v0, 0x7f070074

    .line 2084
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutTopBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0700a4

    .line 2085
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->imgBack2Preview:Landroid/widget/ImageView;

    .line 2086
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->imgBack2Preview:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$62;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$62;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700ad

    .line 2098
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->waitSettingsLoad:Landroid/widget/ProgressBar;

    .line 2099
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->waitSettingsLoad:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setSelectionView()V
    .locals 10

    .line 699
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutItemPar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 701
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutItemPar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 704
    iput v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->firstradiobutton:I

    .line 705
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 706
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 707
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pickerRadioItems:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 709
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    iget v5, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nCurCmdPos:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 710
    iget-object v4, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v5, v4, :cond_1

    .line 713
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f090021

    invoke-virtual {v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 716
    iget-object v8, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setId(I)V

    const/16 v8, 0x28

    .line 718
    invoke-virtual {v6, v7, v7, v8, v7}, Landroid/widget/RadioButton;->setPadding(IIII)V

    const v7, 0x7f06007e

    .line 719
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 721
    iget-object v7, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v5, v7, :cond_0

    const/4 v7, 0x1

    .line 723
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 725
    :cond_0
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 726
    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 730
    :cond_1
    iget-object v5, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0xbc2

    if-eq v5, v8, :cond_2

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xbc3

    if-eq v3, v5, :cond_2

    .line 732
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f090020

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 733
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 734
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 736
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/RadioButton;->setPadding(IIII)V

    const v3, 0x7f06007d

    .line 737
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 738
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 739
    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->layoutItemPar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSettingsCmd1002()V
    .locals 3

    .line 864
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "1002"

    .line 865
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0029

    .line 866
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=1002&par="

    .line 867
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 868
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    const-string v1, "255"

    .line 879
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 880
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd2002()V
    .locals 3

    .line 903
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "2002"

    .line 904
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0034

    .line 905
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=2002&par="

    .line 906
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 907
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    const-string v1, "255"

    .line 915
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 916
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd2003()V
    .locals 3

    .line 966
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "2003"

    .line 967
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b003a

    .line 968
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=2003&par="

    .line 969
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 970
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 971
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$15;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$15;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 975
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$16;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$16;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 979
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 980
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd2007()V
    .locals 3

    .line 1135
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "2007"

    .line 1136
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b003b

    .line 1137
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=2007&par="

    .line 1138
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1139
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1140
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$35;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$35;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1144
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$36;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$36;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1148
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1149
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd2008()V
    .locals 3

    .line 1168
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "2008"

    .line 1169
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b003c

    .line 1170
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=2008&par="

    .line 1171
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1172
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1173
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$39;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$39;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1177
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$40;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$40;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1178
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1179
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd3010()V
    .locals 3

    .line 1214
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "3010"

    .line 1215
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b003d

    .line 1216
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=3010&par="

    .line 1217
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1218
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1219
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$45;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$45;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1223
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$46;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$46;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1224
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1225
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd3011()V
    .locals 3

    .line 1229
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "3011"

    .line 1230
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b003e

    .line 1231
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=3011&par="

    .line 1232
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1233
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1234
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$47;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$47;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1238
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$48;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$48;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1242
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1243
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd3017()V
    .locals 3

    .line 1247
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "3017"

    .line 1248
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b003f

    .line 1249
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=3017"

    .line 1250
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1251
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1252
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$49;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$49;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1256
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$50;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$50;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1257
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1258
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9001()V
    .locals 3

    .line 847
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9001"

    .line 848
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0041

    .line 849
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9001&par="

    .line 850
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 851
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 852
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$5;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 858
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$6;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 859
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 860
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9002()V
    .locals 3

    .line 935
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9002"

    .line 936
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0045

    .line 937
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9002&par="

    .line 938
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 939
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 940
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$11;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$11;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 944
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$12;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 945
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 946
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9003()V
    .locals 3

    .line 950
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9003"

    .line 951
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0046

    .line 952
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9003&par="

    .line 953
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 954
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 955
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$13;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$13;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 960
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$14;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$14;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 961
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 962
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9004()V
    .locals 3

    .line 1036
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9004"

    .line 1037
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b004a

    .line 1038
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9004&par="

    .line 1039
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1040
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1041
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$23;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$23;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1045
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$24;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$24;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1046
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1047
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9005()V
    .locals 3

    .line 984
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9005"

    .line 985
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b004b

    .line 986
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9005&par="

    .line 987
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 988
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 989
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v2, "RD7000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v2, "RD5009PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$19;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$19;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1009
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$20;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$20;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    goto :goto_1

    .line 990
    :cond_1
    :goto_0
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$17;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$17;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 996
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$18;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$18;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    :goto_1
    const-string v1, "255"

    .line 1016
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1017
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9006()V
    .locals 3

    .line 1051
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9006"

    .line 1052
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0052

    .line 1053
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9006&par="

    .line 1054
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1055
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1056
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$25;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$25;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1060
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$26;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$26;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1061
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1062
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9007()V
    .locals 3

    .line 884
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9007"

    .line 885
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0053

    .line 886
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9007&par="

    .line 887
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 888
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 889
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$7;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 897
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$8;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 898
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 899
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9008()V
    .locals 3

    .line 920
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9008"

    .line 921
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b005e

    .line 922
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9008&par="

    .line 923
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 924
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 925
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$9;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$9;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 929
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$10;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$10;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 930
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 931
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9009()V
    .locals 3

    .line 1153
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9009"

    .line 1154
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b005f

    .line 1155
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9009&par="

    .line 1156
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1157
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1158
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$37;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$37;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1162
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$38;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$38;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1163
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1164
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9010()V
    .locals 3

    .line 1183
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9010"

    .line 1184
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0062

    .line 1185
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9010&par="

    .line 1186
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1187
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1188
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$41;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$41;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1192
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$42;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$42;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1193
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1194
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9012()V
    .locals 3

    .line 1021
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9012"

    .line 1022
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0063

    .line 1023
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9012&par="

    .line 1024
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1025
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1026
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$21;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$21;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1030
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$22;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$22;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1031
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1032
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9013()V
    .locals 3

    .line 1066
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9013"

    .line 1067
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0064

    .line 1068
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9013&par="

    .line 1069
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1070
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1071
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$27;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$27;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1075
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$28;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$28;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1076
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1077
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9014()V
    .locals 3

    .line 1081
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9014"

    .line 1082
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0065

    .line 1083
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9014&par="

    .line 1084
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1085
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1086
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$29;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$29;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1090
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$30;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$30;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1094
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1095
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9015()V
    .locals 3

    .line 1099
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9015"

    .line 1100
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0066

    .line 1101
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9015&par="

    .line 1102
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1103
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1104
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$31;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$31;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1108
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$32;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$32;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1112
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1113
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9016()V
    .locals 3

    .line 1117
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9016"

    .line 1118
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0067

    .line 1119
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9016&par="

    .line 1120
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1121
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1122
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$33;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$33;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1126
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$34;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$34;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1130
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1131
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9017()V
    .locals 3

    .line 1198
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9017"

    .line 1199
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b0068

    .line 1200
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9017&par="

    .line 1201
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1202
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    .line 1203
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$43;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$43;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1208
    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$44;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$44;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    const-string v1, "255"

    .line 1209
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1210
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9022()V
    .locals 3

    .line 1288
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9022"

    .line 1289
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b006c

    .line 1290
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9022&par="

    .line 1291
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1292
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    const-string v1, "255"

    .line 1293
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1294
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9023()V
    .locals 3

    .line 1299
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9023"

    .line 1300
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b006d

    .line 1301
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9023&par="

    .line 1302
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1303
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    const-string v1, "255"

    .line 1304
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1305
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9024()V
    .locals 3

    .line 1276
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9024"

    .line 1277
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b006e

    .line 1278
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9024&par="

    .line 1279
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1280
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    const-string v1, "255"

    .line 1281
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1283
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsCmd9025()V
    .locals 3

    .line 1264
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V

    const-string v1, "9025"

    .line 1265
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    const v1, 0x7f0b006f

    .line 1266
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=9025&par="

    .line 1267
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamUrl:Ljava/lang/String;

    const-string v1, "video"

    .line 1268
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamType:Ljava/lang/String;

    const-string v1, "255"

    .line 1269
    iput-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 1271
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private system_initTimer()V
    .locals 7

    .line 2138
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$63;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$63;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 2157
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$64;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$64;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 2167
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimer:Ljava/util/Timer;

    .line 2168
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private system_setCamName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1650
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090006

    const/4 v2, 0x0

    .line 1651
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07002f

    .line 1652
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f070030

    .line 1653
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 1655
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1656
    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0b009c

    .line 1657
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 1659
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1660
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f06002b

    .line 1661
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1662
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f0b00a7

    .line 1663
    invoke-virtual {p0, p3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;

    invoke-direct {v0, p0, v1, p2}, Lcom/ocean/gamecamerapro2/SettingsActivity$60;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0b00a3

    .line 1679
    invoke-virtual {p0, p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ocean/gamecamerapro2/SettingsActivity$59;

    invoke-direct {p3, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$59;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1686
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private wheel_initHHMM()V
    .locals 5

    const/16 v0, 0x18

    .line 1353
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1354
    :goto_0
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    .line 1357
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    .line 1358
    :goto_1
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private wheel_initHHMMSS()V
    .locals 6

    const/16 v0, 0x18

    .line 1339
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1340
    :goto_0
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1341
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    .line 1343
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 1344
    :goto_1
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1345
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1347
    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    .line 1348
    :goto_2
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1349
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private wheel_initMMSS(I)V
    .locals 6

    const v0, 0x7f0b0011

    const/16 v1, 0x3c

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 1323
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 1324
    :goto_0
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_1

    .line 1325
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1328
    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 1329
    :goto_1
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_1

    .line 1330
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1333
    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    .line 1334
    :goto_2
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    array-length p1, p1

    if-ge v2, p1, :cond_2

    .line 1335
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private wheel_set9002(I)V
    .locals 5

    const/4 v0, 0x1

    .line 1440
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_initMMSS(I)V

    const-string v1, "layout_inflater"

    .line 1441
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f09000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070087

    .line 1443
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ocean/wheel/WheelView;

    iput-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    const v2, 0x7f0700aa

    .line 1444
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ocean/wheel/WheelView;

    iput-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    .line 1446
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v3, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1447
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    new-instance v3, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1449
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1450
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1452
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1453
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1455
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1456
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1458
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v2, "9002"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1460
    iget-object p1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1461
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    div-int/lit8 v3, p1, 0x3c

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1462
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v2, p1}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1465
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1466
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1467
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b009e

    .line 1468
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/gamecamerapro2/SettingsActivity$53;

    invoke-direct {v2, p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity$53;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b009d

    .line 1503
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$54;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$54;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1511
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private wheel_set9004(I)V
    .locals 4

    .line 1515
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_initHHMMSS()V

    const-string v0, "layout_inflater"

    .line 1516
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f09000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07003b

    .line 1518
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/WheelView;

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    const v1, 0x7f070087

    .line 1519
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/WheelView;

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    const v1, 0x7f0700aa

    .line 1520
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/WheelView;

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    .line 1522
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    new-instance v2, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1523
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v2, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1524
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    new-instance v2, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1526
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1527
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1528
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1530
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1531
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1532
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1534
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1535
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1536
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1538
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v2, "9004"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1540
    iget-object p1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1541
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    div-int/lit16 v3, p1, 0xe10

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1542
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    rem-int/lit16 v3, p1, 0xe10

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1543
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v2, p1}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1546
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1547
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1548
    iget-object v0, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b009e

    .line 1549
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ocean/gamecamerapro2/SettingsActivity$55;

    invoke-direct {v2, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$55;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b009d

    .line 1581
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$56;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$56;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1589
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private wheel_set9008(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1363
    invoke-direct {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_initMMSS(I)V

    const-string v1, "layout_inflater"

    .line 1364
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f09000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070087

    .line 1366
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ocean/wheel/WheelView;

    iput-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    const v2, 0x7f0700aa

    .line 1367
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ocean/wheel/WheelView;

    iput-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    .line 1369
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v3, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1370
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    new-instance v3, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->secContent:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1372
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1373
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1375
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1376
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1378
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1379
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1381
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v2, "9008"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1383
    iget-object p1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1384
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    div-int/lit8 v3, p1, 0x3c

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1385
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelSec:Lcom/ocean/wheel/WheelView;

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v2, p1}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1388
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1389
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1391
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b009e

    .line 1392
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/gamecamerapro2/SettingsActivity$51;

    invoke-direct {v2, p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity$51;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b009d

    .line 1428
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$52;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$52;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1436
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private wheel_set901x(I)V
    .locals 4

    .line 1593
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_initHHMM()V

    const-string v0, "layout_inflater"

    .line 1594
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f09000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07003b

    .line 1596
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/WheelView;

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    const v1, 0x7f070087

    .line 1597
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/WheelView;

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    .line 1599
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    new-instance v2, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->houContent:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1600
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v2, Lcom/ocean/wheel/StrericWheelAdapter;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->minContent:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ocean/wheel/StrericWheelAdapter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setAdapter(Lcom/ocean/wheel/WheelAdapter;)V

    .line 1602
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1603
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1605
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1606
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setCyclic(Z)V

    .line 1608
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1609
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ocean/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1611
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1613
    iget-object p1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1614
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelHou:Lcom/ocean/wheel/WheelView;

    div-int/lit8 v3, p1, 0x3c

    invoke-virtual {v2, v3}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1615
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->wheelMin:Lcom/ocean/wheel/WheelView;

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v2, p1}, Lcom/ocean/wheel/WheelView;->setCurrentItem(I)V

    .line 1618
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1619
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1620
    iget-object v0, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b009e

    .line 1621
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ocean/gamecamerapro2/SettingsActivity$57;

    invoke-direct {v2, p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity$57;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b009d

    .line 1634
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$58;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$58;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1642
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public CreatMessageHander()V
    .locals 1

    .line 617
    new-instance v0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$3;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    iput-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    return-void
.end method

.method public camDidGetBatteryFail()V
    .locals 0

    return-void
.end method

.method public camDidGetBatterySucc(I)V
    .locals 0

    .line 2019
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nBatteryStatus:I

    const/4 p1, 0x0

    .line 2021
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    .line 2022
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraCmd3031()V

    return-void
.end method

.method public camDidGetCmd3031Fail()V
    .locals 0

    return-void
.end method

.method public camDidGetCmd3031Succ(Ljava/util/HashMap;)V
    .locals 12
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

    .line 1944
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "RD5009PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "1002"

    .line 1945
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1946
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1947
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v4, "2002"

    .line 1948
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1949
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1950
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1952
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v7, "1002"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1953
    iput-object v0, v6, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1954
    iput-object v3, v6, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    .line 1955
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v3, "2002"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1956
    iput-object v4, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1957
    iput-object v5, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_0
    const-string v0, "9025"

    .line 1959
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1960
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1961
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v4, "9024"

    .line 1962
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1963
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1964
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const-string v6, "9022"

    .line 1965
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1966
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1967
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const-string v8, "9023"

    .line 1968
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1969
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 1970
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1972
    iget-object v10, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v11, "9025"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1973
    iput-object v0, v10, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1974
    iput-object v3, v10, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    .line 1975
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v3, "9024"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1976
    iput-object v4, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1977
    iput-object v5, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    .line 1978
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v3, "9022"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1979
    iput-object v6, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1980
    iput-object v7, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    .line 1981
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v3, "9023"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1982
    iput-object v8, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 1983
    iput-object v9, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    :goto_0
    const-string v0, "9010"

    .line 1987
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1988
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1989
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1990
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    const-string v3, "9010"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1991
    iget-object v3, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1992
    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1993
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strCameraName:Ljava/lang/String;

    .line 1995
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraSettings()V

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
    .locals 2

    const v0, 0x7f0b0098

    .line 1784
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1785
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->finish()V

    .line 1787
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

    .line 1766
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->initSettingsCmdItems()V

    .line 1767
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getSDFreeSpace()V

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
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p1, v0

    .line 1914
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_fSDFreeSpace:F

    .line 1915
    iget p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_fSDFreeSpace:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_fSDFreeSpace:F

    const/4 p1, 0x0

    .line 1917
    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    .line 1918
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD7000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1919
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraBattery()V

    goto :goto_0

    .line 1921
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraCmd3031()V

    :goto_0
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

    const-string p1, "camDidGetSettingsFail"

    .line 1908
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->camRequestError(Ljava/lang/String;)V

    .line 1909
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->doBack()V

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

    const/4 v0, 0x0

    .line 1893
    :goto_0
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1895
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 1896
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1899
    iput-object v2, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1902
    :cond_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->aptViewSettings:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->notifyDataSetChanged()V

    .line 1903
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->waitSettingsLoad:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

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
    .locals 4

    const-wide/16 v0, 0xbb8

    const/4 p2, 0x7

    const/16 v2, 0x16

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 1855
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1856
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1857
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v3, -0x2

    if-ne p1, v3, :cond_1

    .line 1860
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1861
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1862
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public camDidSendCmdSucc(II)V
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x14

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    const/16 p1, 0xbc2

    if-ne p2, p1, :cond_0

    .line 1820
    iput v4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    .line 1821
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getSDFreeSpace()V

    :cond_0
    const/16 p1, 0xbc3

    if-ne p2, p1, :cond_1

    .line 1825
    iput v4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    .line 1826
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraCmd3031()V

    .line 1828
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->sendMessage(I)V

    .line 1829
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const/4 v5, -0x2

    if-ne p1, v5, :cond_3

    .line 1832
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraSettings()V

    .line 1833
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const/4 v5, -0x3

    if-ne p1, v5, :cond_4

    .line 1836
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->sendMessage(I)V

    .line 1837
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/16 p1, 0x2332

    if-ne p2, p1, :cond_5

    .line 1840
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->strSettingName:Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strCameraName:Ljava/lang/String;

    const p1, 0x7f0b007a

    .line 1841
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1842
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "Camera Name"

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strCameraName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    const/4 v0, -0x4

    if-ne p1, v0, :cond_5

    const/16 p1, 0x233a

    if-ne p2, p1, :cond_5

    const-string p1, "Off WiFi Succ"

    .line 1847
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_0
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
    .locals 0

    return-void
.end method

.method public camDidSetModeSucc(I)V
    .locals 1

    .line 1737
    iget v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_nDevMode:I

    if-ne p1, v0, :cond_0

    .line 1738
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1739
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->finish()V

    .line 1741
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v0, 0x1

    iput v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    :cond_0
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

.method public getItemsStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 841
    iput v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    .line 842
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraSettings()V

    return-void
.end method

.method public getWiFiName()Ljava/lang/String;
    .locals 4

    const-string v0, "No Cameras Connected"

    const-string v1, "connectivity"

    .line 302
    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    .line 303
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 315
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 322
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    return-object v0
.end method

.method public handleShowCmdParamers()V
    .locals 1

    const/4 v0, 0x3

    .line 291
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->sendMessage(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1711
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1714
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0700a4

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 187
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->requestWindowFeature(I)Z

    .line 188
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 189
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f090004

    .line 190
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->setContentView(I)V

    .line 192
    sput-object p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->_instance:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v0, 0x7f0b007a

    .line 195
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Mcu Name"

    const-string v2, "error"

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strMcuName:Ljava/lang/String;

    const-string v1, "Project ID"

    const-string v2, "error"

    .line 197
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "Project Ver"

    const-string v2, "error"

    .line 198
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectVer:Ljava/lang/String;

    const-string v1, "Build Time"

    const-string v2, "error"

    .line 199
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strBuildTime:Ljava/lang/String;

    const-string v1, "OTG"

    const-string v2, "error"

    .line 200
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strOTG:Ljava/lang/String;

    const-string v1, "Camera Mode"

    .line 201
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_nDevMode:I

    const-string p1, "SD Free Space"

    const/4 v1, 0x0

    .line 202
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_fSDFreeSpace:F

    .line 204
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD7000_V01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RD7000"

    .line 205
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD7000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmdRD7000:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v0, "RD5009PRO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmdRD5009PRO:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_2
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmdRD2021:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->listSettingsCmd:[Ljava/lang/String;

    .line 214
    :goto_0
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->initCameraRequest()V

    .line 215
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->initSettingsMiddleView()V

    .line 216
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->initSettingsTopBar()V

    .line 217
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->initSettingsBottomBar()V

    .line 218
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->initSettingsListView()V

    .line 220
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->CreatMessageHander()V

    .line 221
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->system_initTimer()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ncyc"

    const-string v1, "setting - onDestroy"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->isKeepCamAlive:Z

    .line 239
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 244
    iput-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_paramSettings:Ljava/util/HashMap;

    .line 247
    :cond_1
    sput-object v1, Lcom/ocean/gamecamerapro2/SettingsActivity;->_instance:Lcom/ocean/gamecamerapro2/SettingsActivity;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->txtProgressBar:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->txtProgressBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->doBack()V

    return v1

    .line 272
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->isKeepCamAlive:Z

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->nKeepCamAlvieCount:I

    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    .line 678
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 679
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x0

    .line 680
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 681
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 682
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public sendMessage(II)V
    .locals 1

    .line 687
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 688
    iput p1, v0, Landroid/os/Message;->what:I

    .line 689
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 690
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 691
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity;->mHandler_Connect:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public system_setCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b00a3

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b00a7

    .line 279
    invoke-virtual {p0, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/ocean/gamecamerapro2/SettingsActivity$1;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
