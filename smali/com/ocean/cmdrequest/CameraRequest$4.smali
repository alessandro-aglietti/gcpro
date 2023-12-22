.class Lcom/ocean/cmdrequest/CameraRequest$4;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/cmdrequest/CameraRequest;->setCameraSnapshot()V
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

    .line 143
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$4;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$4;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    const-string v1, "http://192.168.8.120/?custom=1&cmd=1001"

    invoke-virtual {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x3e9

    if-eqz v0, :cond_1

    const-string v4, "1001"

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1001"

    .line 149
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 150
    iput v2, v1, Landroid/os/Message;->what:I

    .line 151
    iput v3, v1, Landroid/os/Message;->arg1:I

    const-string v2, "1001"

    .line 152
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 154
    :cond_0
    iput v2, v1, Landroid/os/Message;->what:I

    .line 155
    iput v3, v1, Landroid/os/Message;->arg1:I

    const-string v2, "1001"

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 160
    :cond_1
    iput v2, v1, Landroid/os/Message;->what:I

    .line 161
    iput v3, v1, Landroid/os/Message;->arg1:I

    const/16 v0, -0x63

    .line 162
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$4;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v0}, Lcom/ocean/cmdrequest/CameraRequest;->access$000(Lcom/ocean/cmdrequest/CameraRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
