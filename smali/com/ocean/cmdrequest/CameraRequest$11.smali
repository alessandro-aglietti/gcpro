.class Lcom/ocean/cmdrequest/CameraRequest$11;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/cmdrequest/CameraRequest;->setCameraTime()V
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

    .line 309
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$11;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 313
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 314
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const-string v1, "%02d:%02d:%02d"

    const/4 v2, 0x3

    .line 316
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v0, v0, Landroid/text/format/Time;->second:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.8.120/?custom=1&cmd=3006&str="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/ocean/cmdrequest/CameraRequest$11;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v1, v0}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xbbe

    if-eqz v0, :cond_0

    const-string v3, "3006"

    .line 321
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3006"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iput v4, v1, Landroid/os/Message;->what:I

    .line 323
    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 326
    :cond_0
    iput v5, v1, Landroid/os/Message;->what:I

    .line 327
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/ocean/cmdrequest/CameraRequest$11;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v0}, Lcom/ocean/cmdrequest/CameraRequest;->access$000(Lcom/ocean/cmdrequest/CameraRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
