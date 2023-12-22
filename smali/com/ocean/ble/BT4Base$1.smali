.class Lcom/ocean/ble/BT4Base$1;
.super Landroid/content/BroadcastReceiver;
.source "BT4Base.java"


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

    .line 153
    iput-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "INTENT_EXTRA_DATA"

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 161
    iget-object v0, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/ble/BLEDeviceObject;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "GATT_APP_CONNECTED_DEVICE"

    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p1}, Lcom/ocean/ble/BT4Base;->access$000(Lcom/ocean/ble/BT4Base;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BluetoothGatt Service"

    const-string v1, "[state] - connected!"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x2

    .line 170
    iput p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    .line 172
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p1}, Lcom/ocean/ble/BT4Base;->access$100(Lcom/ocean/ble/BT4Base;)Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/ble/BLEDeviceObject;

    invoke-interface {p1, p2}, Lcom/ocean/ble/BT4Base$OnBT4BaseListener;->btDidConnected(Lcom/ocean/ble/BLEDeviceObject;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "GATT_APP_DISCONNECTED_DEVICE"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p1}, Lcom/ocean/ble/BT4Base;->access$000(Lcom/ocean/ble/BT4Base;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "BluetoothGatt Service"

    const-string v0, "[state] - disconnected!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_4
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    const-string v0, "img_bt00"

    iput-object v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagImageID:Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    iput v1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    .line 183
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ocean/ble/BLEDeviceObject;->tagType:Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 186
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p1}, Lcom/ocean/ble/BT4Base;->access$100(Lcom/ocean/ble/BT4Base;)Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/ble/BLEDeviceObject;

    invoke-interface {p1, p2}, Lcom/ocean/ble/BT4Base$OnBT4BaseListener;->btDidDisconnected(Lcom/ocean/ble/BLEDeviceObject;)V

    goto :goto_0

    :cond_5
    const-string v0, "GATT_APP_GET_DEVICE_SERVICE"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p1}, Lcom/ocean/ble/BT4Base;->access$000(Lcom/ocean/ble/BT4Base;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "BluetoothGatt Service"

    const-string p2, "[state] - get FFE0 service ok!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v0, "GATT_APP_GET_DEVICE_RSSI"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "GATT_APP_GET_DEVICE_DATA"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 200
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$1;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    invoke-virtual {p1}, Lcom/ocean/ble/BLEDeviceObject;->decodeFFF1RxData()V

    :cond_8
    :goto_0
    return-void
.end method
