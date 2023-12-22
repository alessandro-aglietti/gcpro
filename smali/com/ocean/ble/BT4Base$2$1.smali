.class Lcom/ocean/ble/BT4Base$2$1;
.super Ljava/lang/Object;
.source "BT4Base.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/ble/BT4Base$2;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ocean/ble/BT4Base$2;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/ocean/ble/BT4Base$2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/ocean/ble/BT4Base$2$1;->this$1:Lcom/ocean/ble/BT4Base$2;

    iput-object p2, p0, Lcom/ocean/ble/BT4Base$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/ocean/ble/BT4Base$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/ble/BT4Base$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/ocean/ble/BT4Base$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMT"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JGHT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HTC-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/ocean/ble/BT4Base$2$1;->this$1:Lcom/ocean/ble/BT4Base$2;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base$2;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v1, p0, Lcom/ocean/ble/BT4Base$2$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/ocean/ble/BT4Base;->access$200(Lcom/ocean/ble/BT4Base;Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    return-void
.end method
