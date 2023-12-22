.class Lcom/ocean/cmdrequest/CameraRequest$16;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/cmdrequest/CameraRequest;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$mode:I

.field final synthetic val$par:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ocean/cmdrequest/CameraRequest;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    iput p2, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$mode:I

    iput-object p3, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    iput-object p4, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$par:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 469
    iget v0, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$mode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://192.168.8.120/?custom=1&cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$par:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_0
    iget v0, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$mode:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://192.168.8.120/?custom=1&cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://192.168.8.120/?custom=1&cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&par="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$par:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    iget-object v1, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v1, v0}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 477
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    if-eqz v0, :cond_2

    .line 478
    iget-object v2, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 479
    iput v0, v1, Landroid/os/Message;->what:I

    .line 480
    iget v0, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$mode:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 481
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 484
    iput v0, v1, Landroid/os/Message;->what:I

    .line 485
    iget v0, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$mode:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 486
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->val$cmd:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 488
    :goto_1
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$16;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v0}, Lcom/ocean/cmdrequest/CameraRequest;->access$000(Lcom/ocean/cmdrequest/CameraRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
