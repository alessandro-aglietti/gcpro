.class Lcom/ocean/ble/BT4Base$2;
.super Ljava/lang/Object;
.source "BT4Base.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/ble/BT4Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/ble/BT4Base;


# direct methods
.method constructor <init>(Lcom/ocean/ble/BT4Base;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/ocean/ble/BT4Base$2;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 221
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$2;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p2}, Lcom/ocean/ble/BT4Base;->access$300(Lcom/ocean/ble/BT4Base;)Lcom/ocean/gamecamerapro2/MainActivity;

    move-result-object p2

    new-instance p3, Lcom/ocean/ble/BT4Base$2$1;

    invoke-direct {p3, p0, p1}, Lcom/ocean/ble/BT4Base$2$1;-><init>(Lcom/ocean/ble/BT4Base$2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, p3}, Lcom/ocean/gamecamerapro2/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
