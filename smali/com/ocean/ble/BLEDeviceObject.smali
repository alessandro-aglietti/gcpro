.class public Lcom/ocean/ble/BLEDeviceObject;
.super Ljava/lang/Object;
.source "BLEDeviceObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;
    }
.end annotation


# static fields
.field public static final TAG_STATUS_CONNECTED:I = 0x2

.field public static final TAG_STATUS_CONNECTING:I = 0x4

.field public static final TAG_STATUS_DISCONNECTED:I = 0x1

.field public static final TAG_STATUS_DISCONNECTING:I = 0x3

.field public static final TAG_STATUS_NONE:I


# instance fields
.field public byteFFF1Rx:[I

.field private mListener:Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;

.field public nDevPos:I

.field public nFFF1RxSize:I

.field private nMaxUpdateDataCount:I

.field public nUpdateDataCount:I

.field private pSystemTimer:Ljava/util/Timer;

.field private pSystemTimerHandler:Landroid/os/Handler;

.field private pSystemTimerTask:Ljava/util/TimerTask;

.field public tagAddress:Ljava/lang/String;

.field public tagDevice:Landroid/bluetooth/BluetoothDevice;

.field public tagDisplayName:Ljava/lang/String;

.field public tagGatt:Landroid/bluetooth/BluetoothGatt;

.field public tagGpio2Status:Z

.field public tagGpio3Status:Z

.field public tagImageID:Ljava/lang/String;

.field public tagName:Ljava/lang/String;

.field public tagRssi:I

.field public tagStatus:I

.field public tagType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->tagDevice:Landroid/bluetooth/BluetoothDevice;

    .line 19
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    .line 21
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->tagType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 22
    iput v1, p0, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    const-string v1, "img_bt00"

    .line 24
    iput-object v1, p0, Lcom/ocean/ble/BLEDeviceObject;->tagImageID:Ljava/lang/String;

    const-string v1, "---"

    .line 25
    iput-object v1, p0, Lcom/ocean/ble/BLEDeviceObject;->tagName:Ljava/lang/String;

    const-string v1, "---"

    .line 26
    iput-object v1, p0, Lcom/ocean/ble/BLEDeviceObject;->tagAddress:Ljava/lang/String;

    const-string v1, "---"

    .line 27
    iput-object v1, p0, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/ocean/ble/BLEDeviceObject;->tagGpio2Status:Z

    .line 29
    iput-boolean v1, p0, Lcom/ocean/ble/BLEDeviceObject;->tagGpio3Status:Z

    const/4 v2, -0x1

    .line 30
    iput v2, p0, Lcom/ocean/ble/BLEDeviceObject;->tagRssi:I

    .line 32
    iput v2, p0, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    const/16 v2, 0x28

    .line 33
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    .line 36
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimer:Ljava/util/Timer;

    .line 37
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 38
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimerHandler:Landroid/os/Handler;

    .line 39
    iput v1, p0, Lcom/ocean/ble/BLEDeviceObject;->nUpdateDataCount:I

    const/4 v1, 0x3

    .line 40
    iput v1, p0, Lcom/ocean/ble/BLEDeviceObject;->nMaxUpdateDataCount:I

    .line 112
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->mListener:Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;

    .line 46
    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceObject;->system_initTimer()V

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/ble/BLEDeviceObject;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/ocean/ble/BLEDeviceObject;->nMaxUpdateDataCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/ocean/ble/BLEDeviceObject;)Landroid/os/Handler;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ocean/ble/BLEDeviceObject;)Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ocean/ble/BLEDeviceObject;->mListener:Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;

    return-object p0
.end method

.method private initLoggerString()V
    .locals 0

    return-void
.end method

.method private system_initTimer()V
    .locals 7

    .line 77
    new-instance v0, Lcom/ocean/ble/BLEDeviceObject$1;

    invoke-direct {v0, p0}, Lcom/ocean/ble/BLEDeviceObject$1;-><init>(Lcom/ocean/ble/BLEDeviceObject;)V

    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 90
    new-instance v0, Lcom/ocean/ble/BLEDeviceObject$2;

    invoke-direct {v0, p0}, Lcom/ocean/ble/BLEDeviceObject$2;-><init>(Lcom/ocean/ble/BLEDeviceObject;)V

    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimerHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimer:Ljava/util/Timer;

    .line 102
    iget-object v1, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ocean/ble/BLEDeviceObject;->pSystemTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public decodeFFF1RxData()V
    .locals 8

    .line 51
    iget v0, p0, Lcom/ocean/ble/BLEDeviceObject;->nFFF1RxSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 53
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/16 v4, 0x13

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    aget v0, v0, v5

    if-ne v0, v4, :cond_0

    .line 54
    iput-boolean v6, p0, Lcom/ocean/ble/BLEDeviceObject;->tagGpio2Status:Z

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    aget v0, v0, v1

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    aget v0, v0, v5

    if-ne v0, v3, :cond_1

    .line 56
    iput-boolean v2, p0, Lcom/ocean/ble/BLEDeviceObject;->tagGpio2Status:Z

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    const/4 v5, 0x4

    aget v0, v0, v5

    const/4 v7, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    aget v0, v0, v7

    if-ne v0, v4, :cond_2

    .line 58
    iput-boolean v6, p0, Lcom/ocean/ble/BLEDeviceObject;->tagGpio3Status:Z

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    aget v0, v0, v5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    aget v0, v0, v7

    if-ne v0, v3, :cond_3

    .line 60
    iput-boolean v2, p0, Lcom/ocean/ble/BLEDeviceObject;->tagGpio3Status:Z

    .line 62
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->mListener:Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;

    iget v1, p0, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    invoke-interface {v0, v1}, Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;->deviceDidGetGpioStatus(I)V

    return-void
.end method

.method public getDevInfoImage()V
    .locals 2

    .line 66
    iget v0, p0, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "ms_xxx_icon"

    .line 68
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->tagImageID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "img_bt01"

    .line 72
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceObject;->tagImageID:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setOnBLEDeviceObjectListener(Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceObject;->mListener:Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;

    return-void
.end method
