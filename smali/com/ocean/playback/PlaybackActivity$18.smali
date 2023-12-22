.class Lcom/ocean/playback/PlaybackActivity$18;
.super Landroid/os/Handler;
.source "PlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity;->system_initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$18;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1277
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 1279
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$18;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-nez p1, :cond_0

    .line 1280
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$18;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$2300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraMode()V

    :cond_0
    return-void
.end method
