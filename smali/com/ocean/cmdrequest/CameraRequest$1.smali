.class Lcom/ocean/cmdrequest/CameraRequest$1;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/cmdrequest/CameraRequest;->setCameraMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/cmdrequest/CameraRequest;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/ocean/cmdrequest/CameraRequest;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$1;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    iput p2, p0, Lcom/ocean/cmdrequest/CameraRequest$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$1;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/?custom=1&cmd=3001&par="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ocean/cmdrequest/CameraRequest$1;->val$mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xbb9

    if-eqz v0, :cond_0

    const-string v3, "3001"

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3001"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput v0, v1, Landroid/os/Message;->what:I

    .line 79
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 80
    iget v0, p0, Lcom/ocean/cmdrequest/CameraRequest$1;->val$mode:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput v0, v1, Landroid/os/Message;->what:I

    .line 84
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 85
    iget v0, p0, Lcom/ocean/cmdrequest/CameraRequest$1;->val$mode:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$1;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v0}, Lcom/ocean/cmdrequest/CameraRequest;->access$000(Lcom/ocean/cmdrequest/CameraRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
