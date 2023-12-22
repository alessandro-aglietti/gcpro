.class Lcom/ocean/cmdrequest/CameraRequest$13;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/cmdrequest/CameraRequest;->getCameraFileList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/cmdrequest/CameraRequest;


# direct methods
.method constructor <init>(Lcom/ocean/cmdrequest/CameraRequest;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$13;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$13;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=3015"

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode4(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 397
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xbc7

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 399
    iput v3, v1, Landroid/os/Message;->what:I

    .line 400
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 401
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 404
    iput v0, v1, Landroid/os/Message;->what:I

    .line 405
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$13;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v0}, Lcom/ocean/cmdrequest/CameraRequest;->access$000(Lcom/ocean/cmdrequest/CameraRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
