.class Lcom/ocean/gamecamerapro2/MainActivity$25;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->system_initTimer()V
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

    .line 1507
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1511
    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2008()I

    .line 1514
    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2000()I

    move-result v0

    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2100()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1516
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 1517
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1518
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1522
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 1523
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1524
    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2100()I

    move-result v1

    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2000()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1525
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1530
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2300(Lcom/ocean/gamecamerapro2/MainActivity;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1532
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2408(Lcom/ocean/gamecamerapro2/MainActivity;)I

    .line 1533
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2400(Lcom/ocean/gamecamerapro2/MainActivity;)I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 1535
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2402(Lcom/ocean/gamecamerapro2/MainActivity;I)I

    .line 1537
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2500(Lcom/ocean/gamecamerapro2/MainActivity;)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    .line 1538
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2302(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z

    .line 1539
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1541
    :cond_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1546
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 1548
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget v3, v3, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-virtual {v0, v3}, Lcom/ocean/ble/BT4Base;->iApp_GetTagRssi(I)Z

    .line 1551
    :cond_4
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2600(Lcom/ocean/gamecamerapro2/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1553
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2708(Lcom/ocean/gamecamerapro2/MainActivity;)I

    .line 1554
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2700(Lcom/ocean/gamecamerapro2/MainActivity;)I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 1556
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2602(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z

    .line 1557
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2702(Lcom/ocean/gamecamerapro2/MainActivity;I)I

    .line 1558
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1562
    :cond_5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x7

    .line 1563
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1564
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2700(Lcom/ocean/gamecamerapro2/MainActivity;)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1565
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1569
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1100(Lcom/ocean/gamecamerapro2/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1571
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2808(Lcom/ocean/gamecamerapro2/MainActivity;)I

    .line 1572
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2800(Lcom/ocean/gamecamerapro2/MainActivity;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_7

    .line 1574
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2802(Lcom/ocean/gamecamerapro2/MainActivity;I)I

    .line 1575
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$25;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2200(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void
.end method
