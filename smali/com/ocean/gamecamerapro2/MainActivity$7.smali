.class Lcom/ocean/gamecamerapro2/MainActivity$7;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/MainActivity;
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

    .line 320
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 323
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 361
    :pswitch_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$300(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$300(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 363
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$302(Lcom/ocean/gamecamerapro2/MainActivity;Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;)Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$102(Lcom/ocean/gamecamerapro2/MainActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    invoke-virtual {p1}, Lcom/ocean/ble/BT4Base;->didDisconnectAll()V

    .line 371
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object v0, v0, Lcom/ocean/ble/BT4Base;->ui_mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 356
    :pswitch_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$800(Lcom/ocean/gamecamerapro2/MainActivity;I)Z

    goto/16 :goto_1

    .line 345
    :pswitch_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object v0

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    .line 346
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v3, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_7

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/ocean/gamecamerapro2/MainActivity$7;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 348
    iput v2, p1, Landroid/os/Message;->what:I

    .line 349
    iput v4, p1, Landroid/os/Message;->arg1:I

    const-wide/16 v0, 0x7d0

    .line 350
    invoke-virtual {p0, p1, v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity$7;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 326
    :pswitch_3
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result p1

    const-wide/16 v5, 0x3e8

    if-nez p1, :cond_3

    .line 327
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    .line 328
    invoke-virtual {p0, v4, v5, v6}, Lcom/ocean/gamecamerapro2/MainActivity$7;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result p1

    if-eq p1, v3, :cond_6

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 332
    :cond_4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v7, v9

    const-wide/16 v7, 0x4e2

    if-lez p1, :cond_5

    .line 333
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    .line 334
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$300(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    move-result-object p1

    invoke-virtual {p1, v4, v5, v6}, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 335
    invoke-virtual {p0, v4, v7, v8}, Lcom/ocean/gamecamerapro2/MainActivity$7;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 337
    :cond_5
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    .line 338
    invoke-virtual {p0, v4, v7, v8}, Lcom/ocean/gamecamerapro2/MainActivity$7;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 330
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$7;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
