.class Lcom/ocean/gamecamerapro2/SettingsActivity$61;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->initSettingsBottomBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 0

    .line 2059
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$61;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 2062
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$61;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 2063
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$61;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    const-string v0, "9018"

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V

    .line 2064
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    iget p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2066
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput-boolean v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->isManualDisconnect:Z

    .line 2067
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2069
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$61;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->finish()V

    .line 2071
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    return-void
.end method
