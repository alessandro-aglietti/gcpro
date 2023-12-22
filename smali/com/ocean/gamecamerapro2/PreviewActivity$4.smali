.class Lcom/ocean/gamecamerapro2/PreviewActivity$4;
.super Landroid/os/Handler;
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

    .line 1475
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1478
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1482
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v3, 0x32

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1484
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz p1, :cond_10

    .line 1486
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2602(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2202(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1487
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1490
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 1492
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3000(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)V

    goto/16 :goto_1

    .line 1494
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1496
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3100(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    goto/16 :goto_1

    .line 1498
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1500
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3200(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    goto/16 :goto_1

    .line 1502
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    .line 1504
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3300(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    goto/16 :goto_1

    .line 1506
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    goto/16 :goto_1

    .line 1510
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_6

    .line 1512
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraRecStatus()V

    goto/16 :goto_1

    .line 1514
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_7

    .line 1516
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "3020 feedback yes"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1518
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_8

    .line 1520
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "3020 feedback error"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1522
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 1524
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "(2001)switch in 2001)"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1526
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_a

    .line 1528
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "(2001)switch in 3020)"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1530
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_d

    .line 1532
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MyApplication;->pDeviceDetailObj:Lcom/ocean/ble/BLEDeviceObject;

    iget p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagRssi:I

    const/16 v0, -0x5f

    if-ge p1, v0, :cond_b

    .line 1534
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1535
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1537
    :cond_b
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1538
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1540
    :goto_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 1544
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1545
    :cond_c
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_10

    .line 1546
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1548
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 1550
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    .line 1551
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1552
    :cond_e
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    .line 1553
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$3500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1555
    :cond_f
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_10

    .line 1557
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$4;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_10
    :goto_1
    return-void
.end method
