.class Lcom/ocean/playback/CamFilePreviewActivity$7;
.super Ljava/util/TimerTask;
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

    .line 578
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$7;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$7;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$600(Lcom/ocean/playback/CamFilePreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$7;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$708(Lcom/ocean/playback/CamFilePreviewActivity;)I

    .line 582
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$7;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$700(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$7;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ocean/playback/CamFilePreviewActivity;->access$702(Lcom/ocean/playback/CamFilePreviewActivity;I)I

    .line 584
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$7;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$800(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
