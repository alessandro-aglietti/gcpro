.class Lcom/ocean/ble/BLEDeviceObject$1;
.super Ljava/util/TimerTask;
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

    .line 78
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceObject$1;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 81
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/ocean/ble/BLEDeviceObject$1;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    iget v2, v1, Lcom/ocean/ble/BLEDeviceObject;->nUpdateDataCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/ocean/ble/BLEDeviceObject;->nUpdateDataCount:I

    .line 83
    iget-object v1, p0, Lcom/ocean/ble/BLEDeviceObject$1;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    iget v1, v1, Lcom/ocean/ble/BLEDeviceObject;->nUpdateDataCount:I

    iget-object v2, p0, Lcom/ocean/ble/BLEDeviceObject$1;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    invoke-static {v2}, Lcom/ocean/ble/BLEDeviceObject;->access$000(Lcom/ocean/ble/BLEDeviceObject;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/ocean/ble/BLEDeviceObject$1;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ocean/ble/BLEDeviceObject;->nUpdateDataCount:I

    .line 85
    iput v2, v0, Landroid/os/Message;->what:I

    .line 86
    iget-object v1, p0, Lcom/ocean/ble/BLEDeviceObject$1;->this$0:Lcom/ocean/ble/BLEDeviceObject;

    invoke-static {v1}, Lcom/ocean/ble/BLEDeviceObject;->access$100(Lcom/ocean/ble/BLEDeviceObject;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
