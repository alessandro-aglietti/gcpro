.class Lcom/ocean/cmdrequest/CameraRequest$8;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/cmdrequest/CameraRequest;->getCameraModelID()V
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

    .line 239
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$8;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$8;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=3012"

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 243
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xbc4

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 245
    iput v3, v1, Landroid/os/Message;->what:I

    .line 246
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 247
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 250
    iput v0, v1, Landroid/os/Message;->what:I

    .line 251
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$8;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v0}, Lcom/ocean/cmdrequest/CameraRequest;->access$000(Lcom/ocean/cmdrequest/CameraRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
