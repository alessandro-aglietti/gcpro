.class Lcom/ocean/gamecamerapro2/MainActivity$16;
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

.field final synthetic val$dev:Lcom/ocean/ble/BLEDeviceObject;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iput-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->val$dev:Lcom/ocean/ble/BLEDeviceObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1064
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->val$dev:Lcom/ocean/ble/BLEDeviceObject;

    invoke-virtual {v0, v1}, Lcom/ocean/ble/BT4Base;->didConnect(Lcom/ocean/ble/BLEDeviceObject;)V

    .line 1066
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$600(Lcom/ocean/gamecamerapro2/MainActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->val$dev:Lcom/ocean/ble/BLEDeviceObject;

    iget-object v1, v1, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1068
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$16;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    :cond_0
    return-void
.end method
