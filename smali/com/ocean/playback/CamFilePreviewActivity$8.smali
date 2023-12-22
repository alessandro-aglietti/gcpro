.class Lcom/ocean/playback/CamFilePreviewActivity$8;
.super Landroid/os/Handler;
.source "CamFilePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/CamFilePreviewActivity;->system_initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/CamFilePreviewActivity;


# direct methods
.method constructor <init>(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$8;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 597
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 598
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$8;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$900(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraMode()V

    goto :goto_0

    .line 600
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 602
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$8;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1000(Lcom/ocean/playback/CamFilePreviewActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
