.class Lcom/ocean/cmdrequest/CameraRequest$12;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/cmdrequest/CameraRequest;->getSDFreeSpace()V
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

    .line 372
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$12;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$12;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=3017"

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode3(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 376
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xbc9

    if-eqz v0, :cond_0

    const-string v3, "3017"

    .line 377
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 378
    iput v3, v1, Landroid/os/Message;->what:I

    .line 379
    iput v2, v1, Landroid/os/Message;->arg1:I

    const-string v2, "3017"

    .line 380
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 383
    iput v0, v1, Landroid/os/Message;->what:I

    .line 384
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$12;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v0}, Lcom/ocean/cmdrequest/CameraRequest;->access$000(Lcom/ocean/cmdrequest/CameraRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
