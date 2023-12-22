.class Lcom/ocean/ble/BT4Base$3;
.super Landroid/bluetooth/BluetoothGattCallback;
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

    .line 273
    iput-object p1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3

    if-nez p3, :cond_5

    .line 366
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/ocean/ble/BT4Base;->access$700()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 368
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    .line 369
    iget-object p3, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    array-length v1, p2

    iput v1, p3, Lcom/ocean/ble/BT4Base;->nRxSize:I

    const/4 p3, 0x0

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget v1, v1, Lcom/ocean/ble/BT4Base;->nRxSize:I

    if-ge p3, v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v1, v1, Lcom/ocean/ble/BT4Base;->nRxBuf:[I

    aget-byte v2, p2, p3

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 373
    :cond_0
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p2, p1}, Lcom/ocean/ble/BT4Base;->access$400(Lcom/ocean/ble/BT4Base;Landroid/bluetooth/BluetoothGatt;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return-void

    .line 376
    :cond_1
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object p2, p2, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/ble/BLEDeviceObject;

    if-eqz p2, :cond_3

    .line 379
    :goto_1
    iget-object p3, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget p3, p3, Lcom/ocean/ble/BT4Base;->nRxSize:I

    if-ge v0, p3, :cond_2

    .line 380
    iget-object p3, p2, Lcom/ocean/ble/BLEDeviceObject;->byteFFF1Rx:[I

    iget-object v1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v1, v1, Lcom/ocean/ble/BT4Base;->nRxBuf:[I

    aget v1, v1, v0

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    :cond_2
    iget-object p3, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget p3, p3, Lcom/ocean/ble/BT4Base;->nRxSize:I

    iput p3, p2, Lcom/ocean/ble/BLEDeviceObject;->nFFF1RxSize:I

    .line 385
    :cond_3
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    const-string p3, "GATT_APP_GET_DEVICE_DATA"

    invoke-static {p2, p3, p1}, Lcom/ocean/ble/BT4Base;->access$500(Lcom/ocean/ble/BT4Base;Ljava/lang/String;I)V

    goto :goto_2

    .line 387
    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ocean/ble/BT4Base;->access$800()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 389
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 390
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p2}, Lcom/ocean/ble/BT4Base;->access$000(Lcom/ocean/ble/BT4Base;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "BluetoothGatt Service"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[debug] - gatt_readData2FF92() - value0 = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " value1 = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-byte p1, p1, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    .line 277
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p2, p1}, Lcom/ocean/ble/BT4Base;->access$400(Lcom/ocean/ble/BT4Base;Landroid/bluetooth/BluetoothGatt;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/ble/BLEDeviceObject;

    if-nez v0, :cond_1

    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {v1}, Lcom/ocean/ble/BT4Base;->access$300(Lcom/ocean/ble/BT4Base;)Lcom/ocean/gamecamerapro2/MainActivity;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 285
    iget-object v1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {v1}, Lcom/ocean/ble/BT4Base;->access$000(Lcom/ocean/ble/BT4Base;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BluetoothGatt Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[state] - cur_state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",new_state = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_4

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    goto :goto_0

    .line 290
    :cond_3
    iget-object p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    .line 291
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p2}, Lcom/ocean/ble/BT4Base;->access$000(Lcom/ocean/ble/BT4Base;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "BluetoothGatt Service"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[state] - discoverServices() = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_4
    iget p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    .line 301
    iget-object p1, v0, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 302
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p1}, Lcom/ocean/ble/BT4Base;->access$100(Lcom/ocean/ble/BT4Base;)Lcom/ocean/ble/BT4Base$OnBT4BaseListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ocean/ble/BT4Base$OnBT4BaseListener;->btFailConnecting(I)V

    goto :goto_0

    .line 304
    :cond_5
    iget-object p1, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    const-string p3, "GATT_APP_DISCONNECTED_DEVICE"

    invoke-static {p1, p3, p2}, Lcom/ocean/ble/BT4Base;->access$500(Lcom/ocean/ble/BT4Base;Ljava/lang/String;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    if-nez p3, :cond_2

    .line 412
    iget-object p3, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p3, p1}, Lcom/ocean/ble/BT4Base;->access$400(Lcom/ocean/ble/BT4Base;Landroid/bluetooth/BluetoothGatt;)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object p3, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    iget-object p3, p3, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ocean/ble/BLEDeviceObject;

    iput p2, p3, Lcom/ocean/ble/BLEDeviceObject;->tagRssi:I

    .line 416
    iget-object p3, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p3}, Lcom/ocean/ble/BT4Base;->access$000(Lcom/ocean/ble/BT4Base;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "BluetoothGatt Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[debug] - pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    const-string p3, "GATT_APP_GET_DEVICE_RSSI"

    invoke-static {p2, p3, p1}, Lcom/ocean/ble/BT4Base;->access$500(Lcom/ocean/ble/BT4Base;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 331
    invoke-static {}, Lcom/ocean/ble/BT4Base;->access$600()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    .line 332
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ocean/ble/BT4Base;->access$600()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 334
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {p2, p1}, Lcom/ocean/ble/BT4Base;->access$400(Lcom/ocean/ble/BT4Base;Landroid/bluetooth/BluetoothGatt;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object p2, p0, Lcom/ocean/ble/BT4Base$3;->this$0:Lcom/ocean/ble/BT4Base;

    const-string v0, "GATT_APP_CONNECTED_DEVICE"

    invoke-static {p2, v0, p1}, Lcom/ocean/ble/BT4Base;->access$500(Lcom/ocean/ble/BT4Base;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
