.class Lcom/ocean/gamecamerapro2/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->cellDidRename(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/MainActivity;

.field final synthetic val$dev:Lcom/ocean/ble/BLEDeviceObject;

.field final synthetic val$inputServer:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;Landroid/widget/EditText;Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iput-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->val$inputServer:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->val$dev:Lcom/ocean/ble/BLEDeviceObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HTC-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->val$inputServer:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1290
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 1291
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->val$dev:Lcom/ocean/ble/BLEDeviceObject;

    invoke-virtual {v0, v1, p2}, Lcom/ocean/ble/BT4Base;->iApp_SetTagName(Lcom/ocean/ble/BLEDeviceObject;[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1293
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->val$dev:Lcom/ocean/ble/BLEDeviceObject;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    .line 1294
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/ocean/ble/BLEDeviceAdapter;->isEditName:Z

    .line 1295
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-virtual {p1}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    .line 1296
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const v0, 0x7f0b0089

    invoke-virtual {p2, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;)V

    goto :goto_0

    .line 1298
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$21;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const v0, 0x7f0b0088

    invoke-virtual {p2, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
