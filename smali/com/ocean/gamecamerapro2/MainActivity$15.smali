.class Lcom/ocean/gamecamerapro2/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->btFailConnecting(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/MainActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1046
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1047
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    .line 1048
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const v2, 0x7f0b007d

    invoke-virtual {v1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1050
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    .line 1051
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    .line 1052
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$602(Lcom/ocean/gamecamerapro2/MainActivity;I)I

    .line 1053
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$15;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$700(Lcom/ocean/gamecamerapro2/MainActivity;)V

    return-void
.end method
