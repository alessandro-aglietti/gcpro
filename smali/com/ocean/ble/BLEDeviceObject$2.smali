.class Lcom/ocean/ble/BLEDeviceObject$2;
.super Landroid/os/Handler;
.source "BLEDeviceObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/ble/BLEDeviceObject;->system_initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/ble/BLEDeviceObject;


# direct methods
.method constructor <init>(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceObject$2;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 94
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceObject$2;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    invoke-static {p1}, Lcom/ocean/ble/BLEDeviceObject;->access$200(Lcom/ocean/ble/BLEDeviceObject;)Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceObject$2;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    iget v0, v0, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    invoke-interface {p1, v0}, Lcom/ocean/ble/BLEDeviceObject$OnBLEDeviceObjectListener;->deviceDidUpdateAuto(I)V

    :cond_0
    return-void
.end method
