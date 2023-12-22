.class Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/PreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;


# direct methods
.method private constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity;Lcom/ocean/gamecamerapro2/PreviewActivity$1;)V
    .locals 0

    .line 430
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 435
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const v1, 0x7f010006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 436
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const v1, 0x7f0b0093

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 441
    :sswitch_0
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 445
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto/16 :goto_2

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$200(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 450
    :cond_2
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$202(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 452
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$300(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    .line 453
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$402(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 454
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$500(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)V

    .line 455
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V

    goto/16 :goto_2

    .line 535
    :sswitch_1
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz p1, :cond_3

    .line 536
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 539
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/ocean/gamecamerapro2/MyApplication;->getGo_setting_time()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const-wide/16 v4, 0xbb8

    cmp-long p1, v1, v4

    if-gez p1, :cond_4

    return-void

    .line 542
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ocean/gamecamerapro2/MyApplication;->setGo_setting_time(J)V

    .line 544
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$402(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 545
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V

    goto/16 :goto_2

    .line 461
    :sswitch_2
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz p1, :cond_5

    .line 462
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 465
    :cond_5
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_2

    .line 468
    :cond_6
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$200(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_2

    .line 470
    :cond_7
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$202(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 472
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$300(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    .line 473
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$402(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 474
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$500(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)V

    .line 475
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V

    goto/16 :goto_2

    .line 550
    :sswitch_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    .line 551
    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x108009b

    .line 552
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    .line 553
    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    .line 554
    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener$2;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener$2;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    .line 562
    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener$1;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener$1;-><init>(Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 568
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 483
    :sswitch_4
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$200(Lcom/ocean/gamecamerapro2/PreviewActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    .line 485
    :cond_8
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$202(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 487
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result p1

    if-eq p1, v2, :cond_c

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    goto :goto_1

    .line 496
    :cond_9
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    goto :goto_0

    .line 500
    :cond_a
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 497
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$402(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 498
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraSnapshot()V

    goto/16 :goto_2

    .line 488
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$802(Z)Z

    .line 491
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$300(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    .line 492
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$402(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 493
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$500(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)V

    .line 494
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraRecord(I)V

    goto/16 :goto_2

    .line 495
    :cond_d
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraRecord(I)V

    goto/16 :goto_2

    .line 506
    :sswitch_5
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->finish()V

    goto :goto_2

    .line 516
    :sswitch_6
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz p1, :cond_e

    .line 517
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 520
    :cond_e
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 521
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Camera Mode"

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$100(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 522
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SD Free Space"

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$900(Lcom/ocean/gamecamerapro2/PreviewActivity;)F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "Battery"

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1000(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 526
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    .line 527
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const-class v1, Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {v0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->finish()V

    :goto_2
    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070008 -> :sswitch_6
        0x7f07000c -> :sswitch_5
        0x7f070016 -> :sswitch_4
        0x7f070017 -> :sswitch_4
        0x7f070019 -> :sswitch_3
        0x7f07009c -> :sswitch_2
        0x7f07009d -> :sswitch_2
        0x7f07009f -> :sswitch_7
        0x7f0700ab -> :sswitch_1
        0x7f0700e6 -> :sswitch_0
        0x7f0700e7 -> :sswitch_0
    .end sparse-switch
.end method
