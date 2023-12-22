.class Lcom/ocean/gamecamerapro2/PreviewActivity$3;
.super Ljava/util/TimerTask;
.source "PreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/PreviewActivity;->system_initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1397
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2000(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2002(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1400
    invoke-static {v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$802(Z)Z

    .line 1401
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1402
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1403
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2100(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2600(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2200(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2600(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2202(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1410
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1411
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1412
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 1417
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2402(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1418
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1419
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1420
    iget-object v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1432
    :cond_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1433
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2702(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1434
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x3

    .line 1435
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1436
    iget-object v4, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1439
    :cond_3
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1441
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1908(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    .line 1442
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1900(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v0

    const/16 v4, 0x14

    if-le v0, v4, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1902(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1444
    invoke-static {}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2900()Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->sendEmptyMessage(I)Z

    .line 1457
    :cond_4
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    if-eqz v0, :cond_6

    .line 1459
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    iget v0, v0, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    if-ne v0, v3, :cond_5

    .line 1460
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1462
    :cond_5
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$3;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_0
    return-void
.end method
