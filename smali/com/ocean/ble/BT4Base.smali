.class public Lcom/ocean/ble/BT4Base;
.super Ljava/lang/Object;
.source "BT4Base.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x2710
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/ble/BT4Base$OnBT4BaseListener;
    }
.end annotation


# static fields
.field private static final ALERT_LEVEL_UUID:Ljava/util/UUID;

.field private static final BATTERY_LEVEL_UUID:Ljava/util/UUID;

.field private static final BATTERY_SERVICE_UUID:Ljava/util/UUID;

.field private static final CCCD_UUID:Ljava/util/UUID;

.field private static final DEVICE_NAME_UUID:Ljava/util/UUID;

.field private static final GAP_SERVICE_UUID:Ljava/util/UUID;

.field private static final GATT_APP_CONNECTED_DEVICE:Ljava/lang/String; = "GATT_APP_CONNECTED_DEVICE"

.field private static final GATT_APP_DISCONNECTED_DEVICE:Ljava/lang/String; = "GATT_APP_DISCONNECTED_DEVICE"

.field private static final GATT_APP_GET_DEVICE_DATA:Ljava/lang/String; = "GATT_APP_GET_DEVICE_DATA"

.field private static final GATT_APP_GET_DEVICE_RSSI:Ljava/lang/String; = "GATT_APP_GET_DEVICE_RSSI"

.field private static final GATT_APP_GET_DEVICE_SERVICE:Ljava/lang/String; = "GATT_APP_GET_DEVICE_SERVICE"

.field private static final IMMEDIATE_ALERT_UUID:Ljava/util/UUID;

.field private static final INTENT_EXTRA_DATA:Ljava/lang/String; = "INTENT_EXTRA_DATA"

.field private static final JGHT_DEVICE_INFO_UUID:Ljava/util/UUID;

.field private static final JGHT_RW_FF91_UUID:Ljava/util/UUID;

.field private static final JGHT_RW_FF92_UUID:Ljava/util/UUID;

.field private static final JGHT_RW_FF95_UUID:Ljava/util/UUID;

.field private static final JGHT_RW_FFF1_UUID:Ljava/util/UUID;

.field private static final JGHT_SERVICE_FF90_UUID:Ljava/util/UUID;

.field private static final JGHT_SERVICE_FFE0_UUID:Ljava/util/UUID;

.field private static final JGHT_SERVICE_FFF0_UUID:Ljava/util/UUID;

.field private static final JGHT_WNR_FFE9_UUID:Ljava/util/UUID;

.field private static final JGHT_W_FF94_UUID:Ljava/util/UUID;

.field private static final LINK_LOSS_UUID:Ljava/util/UUID;

.field private static final PHOTO_NOTIFY_UUID:Ljava/util/UUID;

.field private static final PHOTO_SERVICE_UUID:Ljava/util/UUID;

.field public static final REQUEST_ENABLE_BT:I = 0x1

.field public static final SCAN_PERIOD:J = 0x2710L

.field private static final TAG_BT:Ljava/lang/String; = "BluetoothGatt Service"

.field public static final TAG_STATUS_CONNECTED:I = 0x2

.field public static final TAG_STATUS_CONNECTING:I = 0x4

.field public static final TAG_STATUS_DISCONNECTED:I = 0x1

.field public static final TAG_STATUS_DISCONNECTING:I = 0x3


# instance fields
.field public arrayBLEDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/ble/BLEDeviceObject;",
            ">;"
        }
    .end annotation
.end field

.field private delayRunnable:Ljava/lang/Runnable;

.field private isEnableLog:Z

.field public isScanningTagDevices:Z

.field private listGattServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattServer:Landroid/bluetooth/BluetoothGattServer;

.field private final mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private mHandler:Landroid/os/Handler;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mListener:Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

.field private mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

.field public nReconnectCount:I

.field public nRxBuf:[I

.field public nRxSize:I

.field public nSelectedObjNo:I

.field private strGattServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public strPhoneBtAddress:Ljava/lang/String;

.field public final ui_mGattUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001800-0000-1000-8000-00805f9b34fb"

    .line 53
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->GAP_SERVICE_UUID:Ljava/util/UUID;

    const-string v0, "00002a00-0000-1000-8000-00805f9b34fb"

    .line 54
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->DEVICE_NAME_UUID:Ljava/util/UUID;

    const-string v0, "00001802-0000-1000-8000-00805f9b34fb"

    .line 56
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->IMMEDIATE_ALERT_UUID:Ljava/util/UUID;

    const-string v0, "00001803-0000-1000-8000-00805f9b34fb"

    .line 57
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->LINK_LOSS_UUID:Ljava/util/UUID;

    const-string v0, "00002a06-0000-1000-8000-00805f9b34fb"

    .line 58
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->ALERT_LEVEL_UUID:Ljava/util/UUID;

    const-string v0, "0000180f-0000-1000-8000-00805f9b34fb"

    .line 60
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->BATTERY_SERVICE_UUID:Ljava/util/UUID;

    const-string v0, "00002a19-0000-1000-8000-00805f9b34fb"

    .line 61
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->BATTERY_LEVEL_UUID:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 62
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->CCCD_UUID:Ljava/util/UUID;

    const-string v0, "00005c00-6b66-4ff4-a736-c9325a7548d7"

    .line 64
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->PHOTO_SERVICE_UUID:Ljava/util/UUID;

    const-string v0, "00005c01-6b66-4ff4-a736-c9325a7548d7"

    .line 65
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->PHOTO_NOTIFY_UUID:Ljava/util/UUID;

    const-string v0, "0000fff0-0000-1000-8000-00805f9b34fb"

    .line 67
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FFF0_UUID:Ljava/util/UUID;

    const-string v0, "0000fff1-0000-1000-8000-00805f9b34fb"

    .line 68
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_RW_FFF1_UUID:Ljava/util/UUID;

    const-string v0, "0000ff90-0000-1000-8000-00805f9b34fb"

    .line 70
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FF90_UUID:Ljava/util/UUID;

    const-string v0, "0000ff91-0000-1000-8000-00805f9b34fb"

    .line 71
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF91_UUID:Ljava/util/UUID;

    const-string v0, "0000ff92-0000-1000-8000-00805f9b34fb"

    .line 72
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF92_UUID:Ljava/util/UUID;

    const-string v0, "0000ff94-0000-1000-8000-00805f9b34fb"

    .line 73
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_W_FF94_UUID:Ljava/util/UUID;

    const-string v0, "0000ff95-0000-1000-8000-00805f9b34fb"

    .line 74
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF95_UUID:Ljava/util/UUID;

    const-string v0, "0000ffe0-0000-1000-8000-00805f9b34fb"

    .line 76
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FFE0_UUID:Ljava/util/UUID;

    const-string v0, "0000ffe9-0000-1000-8000-00805f9b34fb"

    .line 77
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_WNR_FFE9_UUID:Ljava/util/UUID;

    const-string v0, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 79
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ocean/ble/BT4Base;->JGHT_DEVICE_INFO_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/ocean/ble/BT4Base;->nSelectedObjNo:I

    const/16 v2, 0x28

    .line 96
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ocean/ble/BT4Base;->nRxBuf:[I

    .line 97
    iput v1, p0, Lcom/ocean/ble/BT4Base;->nRxSize:I

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/ocean/ble/BT4Base;->isScanningTagDevices:Z

    .line 101
    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    .line 103
    iput-boolean v1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    .line 104
    iput v1, p0, Lcom/ocean/ble/BT4Base;->nReconnectCount:I

    .line 152
    new-instance v1, Lcom/ocean/ble/BT4Base$1;

    invoke-direct {v1, p0}, Lcom/ocean/ble/BT4Base$1;-><init>(Lcom/ocean/ble/BT4Base;)V

    iput-object v1, p0, Lcom/ocean/ble/BT4Base;->ui_mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v1, Lcom/ocean/ble/BT4Base$2;

    invoke-direct {v1, p0}, Lcom/ocean/ble/BT4Base$2;-><init>(Lcom/ocean/ble/BT4Base;)V

    iput-object v1, p0, Lcom/ocean/ble/BT4Base;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 272
    new-instance v1, Lcom/ocean/ble/BT4Base$3;

    invoke-direct {v1, p0}, Lcom/ocean/ble/BT4Base$3;-><init>(Lcom/ocean/ble/BT4Base;)V

    iput-object v1, p0, Lcom/ocean/ble/BT4Base;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 669
    new-instance v1, Lcom/ocean/ble/BT4Base$4;

    invoke-direct {v1, p0}, Lcom/ocean/ble/BT4Base$4;-><init>(Lcom/ocean/ble/BT4Base;)V

    iput-object v1, p0, Lcom/ocean/ble/BT4Base;->mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 837
    new-instance v1, Lcom/ocean/ble/BT4Base$5;

    invoke-direct {v1, p0}, Lcom/ocean/ble/BT4Base$5;-><init>(Lcom/ocean/ble/BT4Base;)V

    iput-object v1, p0, Lcom/ocean/ble/BT4Base;->delayRunnable:Ljava/lang/Runnable;

    .line 951
    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->mListener:Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    .line 971
    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->strPhoneBtAddress:Ljava/lang/String;

    .line 108
    check-cast p1, Lcom/ocean/gamecamerapro2/MainActivity;

    iput-object p1, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    .line 109
    invoke-direct {p0}, Lcom/ocean/ble/BT4Base;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/ble/BT4Base;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ocean/ble/BT4Base;)Lcom/ocean/ble/BT4Base$OnBT4BaseListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ocean/ble/BT4Base;->mListener:Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ocean/ble/BT4Base;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ocean/ble/BT4Base;->gatt_stopScanDevices()V

    return-void
.end method

.method static synthetic access$200(Lcom/ocean/ble/BT4Base;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ocean/ble/BT4Base;->array_addObjectByDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ocean/ble/BT4Base;)Lcom/ocean/gamecamerapro2/MainActivity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ocean/ble/BT4Base;Landroid/bluetooth/BluetoothGatt;)I
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ocean/ble/BT4Base;->array_findObjectByGatt(Landroid/bluetooth/BluetoothGatt;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ocean/ble/BT4Base;Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ocean/ble/BT4Base;->ui_updateBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/UUID;
    .locals 1

    .line 42
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FFE0_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/UUID;
    .locals 1

    .line 42
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_RW_FFF1_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/UUID;
    .locals 1

    .line 42
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF92_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/UUID;
    .locals 1

    .line 42
    sget-object v0, Lcom/ocean/ble/BT4Base;->ALERT_LEVEL_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method private array_addObjectByDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 443
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ocean/ble/BT4Base;->array_findObjectByAddress(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 445
    new-instance v0, Lcom/ocean/ble/BLEDeviceObject;

    invoke-direct {v0}, Lcom/ocean/ble/BLEDeviceObject;-><init>()V

    .line 446
    iput-object p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagDevice:Landroid/bluetooth/BluetoothDevice;

    .line 447
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagName:Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JGHT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTC-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    .line 454
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagAddress:Ljava/lang/String;

    const/4 p1, 0x0

    .line 455
    iput-object p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 456
    iput p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    .line 457
    iget-object p1, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    .line 458
    iget-object p1, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ocean/ble/BLEDeviceObject;->setOnBLEDeviceObjectListener(Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;)V

    .line 459
    iget-object p1, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object p1, p0, Lcom/ocean/ble/BT4Base;->mListener:Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    invoke-interface {p1, v0}, Lcom/ocean/ble/BT4Base$OnBT4BaseListener;->btDidSearched(Lcom/ocean/ble/BLEDeviceObject;)V

    :cond_2
    return-void
.end method

.method private array_findObjectByDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 485
    iget-object v2, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/ble/BLEDeviceObject;

    .line 486
    iget-object v3, v2, Lcom/ocean/ble/BLEDeviceObject;->tagDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 488
    iget-object v2, v2, Lcom/ocean/ble/BLEDeviceObject;->tagDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private array_findObjectByGatt(Landroid/bluetooth/BluetoothGatt;)I
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 469
    iget-object v2, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/ble/BLEDeviceObject;

    .line 470
    iget-object v3, v2, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 472
    iget-object v2, v2, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private gatt_makeUpdateIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "GATT_APP_CONNECTED_DEVICE"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "GATT_APP_DISCONNECTED_DEVICE"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "GATT_APP_GET_DEVICE_RSSI"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "GATT_APP_GET_DEVICE_DATA"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "GATT_APP_GET_DEVICE_SERVICE"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private gatt_readProximityTagName(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    .line 727
    sget-object v0, Lcom/ocean/ble/BT4Base;->GAP_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 729
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - Gap service not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 732
    :cond_1
    sget-object v1, Lcom/ocean/ble/BT4Base;->DEVICE_NAME_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 734
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - Device Name charateristic not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 737
    :cond_3
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 739
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - readProximityTagName() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private gatt_readRssi(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    if-nez p1, :cond_2

    return v0

    .line 796
    :cond_2
    iget-object v1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 797
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result p1

    .line 798
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_3

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - gatt_readRssi() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p1

    :cond_4
    return v0
.end method

.method private gatt_startScanDevices()V
    .locals 2

    .line 761
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothGatt Service"

    const-string v1, "[debug] - gatt_startScanDevice()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isScanningTagDevices:Z

    .line 764
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    return-void
.end method

.method private gatt_stopScanDevices()V
    .locals 2

    .line 775
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothGatt Service"

    const-string v1, "[debug] - gatt_stopScanDevice()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isScanningTagDevices:Z

    .line 778
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method

.method private gatt_writeImmediateAlertLevelToRemote()V
    .locals 5

    .line 681
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    sget-object v1, Lcom/ocean/ble/BT4Base;->IMMEDIATE_ALERT_UUID:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    .line 683
    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lcom/ocean/ble/BT4Base;->ALERT_LEVEL_UUID:Ljava/util/UUID;

    const/4 v3, 0x4

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 684
    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iget-object v2, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v1

    iput-object v1, p0, Lcom/ocean/ble/BT4Base;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 685
    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    :cond_0
    return-void
.end method

.method private gatt_writeImmediateAlertLevelToTag(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    .line 708
    sget-object v0, Lcom/ocean/ble/BT4Base;->IMMEDIATE_ALERT_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 710
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - Immediate Alert service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 713
    :cond_1
    sget-object v1, Lcom/ocean/ble/BT4Base;->ALERT_LEVEL_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 715
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - Immediate Alert Level charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 718
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v1

    .line 719
    iget-boolean v2, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v2, :cond_4

    const-string v2, "BluetoothGatt Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[debug] - gatt_writeImmediateAlertLevelToTag() - theDefaultWriteType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 720
    invoke-virtual {v0, p2, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    const/4 p2, 0x1

    .line 721
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 722
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 723
    iget-boolean p2, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p2, :cond_5

    const-string p2, "BluetoothGatt Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[debug] - gatt_writeImmediateAlertLevelToTag() - status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private gatt_writeLinkLossAlertLevelToTag(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 690
    sget-object v0, Lcom/ocean/ble/BT4Base;->LINK_LOSS_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 692
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - Link Loss Alert service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 695
    :cond_1
    sget-object v1, Lcom/ocean/ble/BT4Base;->ALERT_LEVEL_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 697
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - Link Loss Alert Level charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 701
    invoke-virtual {v0, p2, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 703
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 704
    iget-boolean p2, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p2, :cond_4

    const-string p2, "BluetoothGatt Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[debug] - gatt_writeLinkLossAlertLevelToTag() - status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private gatt_writeProximityTagName(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)V
    .locals 2

    .line 743
    sget-object v0, Lcom/ocean/ble/BT4Base;->GAP_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 746
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - Gap service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 749
    :cond_1
    sget-object v1, Lcom/ocean/ble/BT4Base;->DEVICE_NAME_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 751
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - Device Name charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 754
    :cond_3
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    const/4 p2, 0x2

    .line 755
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 756
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 757
    iget-boolean p2, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p2, :cond_4

    const-string p2, "BluetoothGatt Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[debug] - gatt_writeDeviceName() - status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->mHandler:Landroid/os/Handler;

    .line 117
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/ocean/ble/BT4Base;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v2, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->finish()V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/ocean/ble/BT4Base;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->finish()V

    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->ui_mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->ui_mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/ocean/ble/BT4Base;->gatt_makeUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private ui_updateBroadcast(Ljava/lang/String;I)V
    .locals 1

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "INTENT_EXTRA_DATA"

    .line 438
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    iget-object p1, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public array_findObjectByAddress(Ljava/lang/String;)I
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 499
    iget-object v2, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/ble/BLEDeviceObject;

    .line 500
    iget-object v3, v2, Lcom/ocean/ble/BLEDeviceObject;->tagAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/ocean/ble/BLEDeviceObject;->tagAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public didConnect(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 4

    .line 846
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isScanningTagDevices:Z

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->delayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 848
    invoke-direct {p0}, Lcom/ocean/ble/BT4Base;->gatt_stopScanDevices()V

    .line 851
    :cond_0
    iget-object v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    .line 852
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[state] - didConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public didDisconnect(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 3

    .line 857
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[state] - didDisconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/ocean/ble/BLEDeviceObject;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void
.end method

.method public didDisconnectAll()V
    .locals 4

    const/4 v0, 0x0

    .line 867
    :goto_0
    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/ble/BLEDeviceObject;

    if-eqz v1, :cond_0

    .line 872
    iget v2, v1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 874
    iget-object v2, v1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 875
    iget-object v1, v1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v1, -0x1

    .line 876
    iput v1, p0, Lcom/ocean/ble/BT4Base;->nSelectedObjNo:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public didGetBtAddressByReflection()V
    .locals 4

    .line 974
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "02:00:00:00:00:00:00:00"

    .line 976
    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->strPhoneBtAddress:Ljava/lang/String;

    goto :goto_0

    .line 978
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 979
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    .line 980
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    .line 981
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 982
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 983
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    .line 984
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    .line 985
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/ble/BT4Base;->strPhoneBtAddress:Ljava/lang/String;

    .line 987
    :goto_0
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mListener:Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mListener:Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    iget-object v1, p0, Lcom/ocean/ble/BT4Base;->strPhoneBtAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ocean/ble/BT4Base$OnBT4BaseListener;->btDidGetAddress(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public didSearch()V
    .locals 6

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 809
    :goto_0
    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v2, v3, :cond_1

    .line 811
    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/ble/BLEDeviceObject;

    .line 812
    iget v5, v3, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    if-eq v5, v4, :cond_0

    .line 813
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 816
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 818
    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 823
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/ble/BLEDeviceObject;

    .line 824
    iget v2, v0, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    if-ne v2, v4, :cond_3

    .line 825
    iput v1, v0, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 828
    :cond_4
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isScanningTagDevices:Z

    const-wide/16 v1, 0x2710

    if-eqz v0, :cond_5

    .line 829
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->delayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 830
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->delayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 832
    :cond_5
    iget-object v0, p0, Lcom/ocean/ble/BT4Base;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ocean/ble/BT4Base;->delayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 833
    invoke-direct {p0}, Lcom/ocean/ble/BT4Base;->gatt_startScanDevices()V

    :goto_3
    return-void
.end method

.method public didSendData(Landroid/bluetooth/BluetoothGatt;[B)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 885
    invoke-virtual {p0, p1, p2}, Lcom/ocean/ble/BT4Base;->gatt_writeData2FFF1(Landroid/bluetooth/BluetoothGatt;[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public gatt_readData2FF92(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    .line 563
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FF90_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 566
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - ff90 service not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 569
    :cond_1
    sget-object v1, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF92_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 571
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - ff92 charateristic not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 574
    :cond_3
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 575
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - gatt_readData2FF92() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public gatt_readData2FFF1(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    .line 528
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FFF0_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 531
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - fff0 service not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 534
    :cond_1
    sget-object v1, Lcom/ocean/ble/BT4Base;->JGHT_RW_FFF1_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 536
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - fff1 charateristic not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 539
    :cond_3
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 540
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - gatt_readData2FFF1() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public gatt_readVersion(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    .line 511
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FFF0_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 514
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - fff0 service not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 517
    :cond_1
    sget-object v1, Lcom/ocean/ble/BT4Base;->JGHT_RW_FFF1_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 519
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[error] - fff1 charateristic not found!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 522
    :cond_3
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 523
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - gatt_readData2FFF1() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public gatt_writeData2FF91(Landroid/bluetooth/BluetoothGatt;[B)Z
    .locals 3

    .line 615
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FF90_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 618
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff90 service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 621
    :cond_1
    sget-object v2, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF91_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 623
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff91 charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 626
    :cond_3
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 627
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 628
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - gatt_writeData2FF91() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public gatt_writeData2FF92(Landroid/bluetooth/BluetoothGatt;[B)Z
    .locals 4

    .line 579
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FF90_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 582
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff90 service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 585
    :cond_1
    sget-object v2, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF92_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 587
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff92 charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 590
    :cond_3
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 591
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 592
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[debug] - gatt_writeData2FF92() - status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public gatt_writeData2FF94(Landroid/bluetooth/BluetoothGatt;[B)Z
    .locals 3

    .line 633
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FF90_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 636
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff90 service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 639
    :cond_1
    sget-object v2, Lcom/ocean/ble/BT4Base;->JGHT_W_FF94_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 641
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff94 charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 644
    :cond_3
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 645
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 646
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - gatt_writeData2FF94() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public gatt_writeData2FF95(Landroid/bluetooth/BluetoothGatt;[B)Z
    .locals 4

    .line 597
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FF90_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 600
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff90 service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 603
    :cond_1
    sget-object v2, Lcom/ocean/ble/BT4Base;->JGHT_RW_FF95_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 605
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ff95 charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 608
    :cond_3
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 609
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 610
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[debug] - gatt_writeData2FF95() - status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public gatt_writeData2FFE9(Landroid/bluetooth/BluetoothGatt;[B)Z
    .locals 3

    .line 652
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FFE0_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 655
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ffe0 service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 658
    :cond_1
    sget-object v2, Lcom/ocean/ble/BT4Base;->JGHT_WNR_FFE9_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 660
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - ffe9 charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 663
    :cond_3
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 664
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 665
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debug] - gatt_writeData2FFE9() - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public gatt_writeData2FFF1(Landroid/bluetooth/BluetoothGatt;[B)Z
    .locals 4

    .line 544
    sget-object v0, Lcom/ocean/ble/BT4Base;->JGHT_SERVICE_FFF0_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 547
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - fff0 service not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 550
    :cond_1
    sget-object v2, Lcom/ocean/ble/BT4Base;->JGHT_RW_FFF1_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    .line 552
    iget-boolean p1, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[error] - fff1 charateristic not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 555
    :cond_3
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 556
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 557
    iget-boolean v0, p0, Lcom/ocean/ble/BT4Base;->isEnableLog:Z

    if-eqz v0, :cond_4

    const-string v0, "BluetoothGatt Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[debug] - gatt_writeData2FFF1() - status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p2, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-byte p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public iApp_GetGpioStatus(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 0

    .line 914
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/ocean/ble/BT4Base;->gatt_readData2FFF1(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public iApp_GetTagRssi(I)Z
    .locals 0

    .line 946
    invoke-direct {p0, p1}, Lcom/ocean/ble/BT4Base;->gatt_readRssi(I)Z

    move-result p1

    return p1
.end method

.method public iApp_GetVersion(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 0

    return-void
.end method

.method public iApp_RestoreTag(Lcom/ocean/ble/BLEDeviceObject;[B)Z
    .locals 0

    .line 940
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1, p2}, Lcom/ocean/ble/BT4Base;->gatt_writeData2FF94(Landroid/bluetooth/BluetoothGatt;[B)Z

    move-result p1

    return p1
.end method

.method public iApp_SetAdsInterval(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 3

    const/4 v0, 0x1

    .line 928
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    .line 929
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1, v0}, Lcom/ocean/ble/BT4Base;->gatt_writeData2FF95(Landroid/bluetooth/BluetoothGatt;[B)Z

    return-void
.end method

.method public iApp_SetComInterval(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 2

    const/4 v0, 0x1

    .line 923
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 924
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1, v0}, Lcom/ocean/ble/BT4Base;->gatt_writeData2FF92(Landroid/bluetooth/BluetoothGatt;[B)Z

    return-void
.end method

.method public iApp_SetGpio(Lcom/ocean/ble/BLEDeviceObject;Ljava/lang/String;)Z
    .locals 0

    .line 910
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ocean/ble/BT4Base;->gatt_writeData2FFE9(Landroid/bluetooth/BluetoothGatt;[B)Z

    move-result p1

    return p1
.end method

.method public iApp_SetTagName(Lcom/ocean/ble/BLEDeviceObject;[B)Z
    .locals 0

    .line 934
    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1, p2}, Lcom/ocean/ble/BT4Base;->gatt_writeData2FF91(Landroid/bluetooth/BluetoothGatt;[B)Z

    move-result p1

    return p1
.end method

.method public setOnBT4BaseListener(Lcom/ocean/ble/BT4Base$OnBT4BaseListener;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/ocean/ble/BT4Base;->mListener:Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    return-void
.end method
