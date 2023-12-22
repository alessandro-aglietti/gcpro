.class Lcom/ocean/playback/CamFilePreviewActivity$9;
.super Ljava/lang/Object;
.source "CamFilePreviewActivity.java"

# interfaces
.implements Lorg/videolan/libvlc/MediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/CamFilePreviewActivity;->vlcInit()V
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

    .line 705
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 8

    .line 708
    iget v0, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x103

    if-ne v0, v2, :cond_0

    .line 710
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1100(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "%d%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->isStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->start()V

    .line 713
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 717
    :cond_0
    iget v0, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    const/16 v2, 0x10b

    const/16 v3, 0x8

    if-ne v0, v2, :cond_2

    .line 718
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->isStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 720
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 724
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getTimeChanged()J

    move-result-wide v4

    .line 725
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1400(Lcom/ocean/playback/CamFilePreviewActivity;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 726
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0, v4, v5}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1402(Lcom/ocean/playback/CamFilePreviewActivity;J)J

    const-string v0, "[CamFilePreview]:"

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v4}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1400(Lcom/ocean/playback/CamFilePreviewActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / total: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v4}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1500(Lcom/ocean/playback/CamFilePreviewActivity;)J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1600(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v2, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v2}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1400(Lcom/ocean/playback/CamFilePreviewActivity;)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 729
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1800(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    iget-object v4, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v4}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1400(Lcom/ocean/playback/CamFilePreviewActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1700(Lcom/ocean/playback/CamFilePreviewActivity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[CamFilePreview]:"

    .line 732
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_2
    :goto_0
    iget p1, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    const/16 v0, 0x106

    if-ne p1, v0, :cond_3

    .line 738
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1900(Lcom/ocean/playback/CamFilePreviewActivity;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getPlayerState()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 740
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1402(Lcom/ocean/playback/CamFilePreviewActivity;J)J

    .line 741
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1600(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 742
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1800(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {v1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1400(Lcom/ocean/playback/CamFilePreviewActivity;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1700(Lcom/ocean/playback/CamFilePreviewActivity;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1900(Lcom/ocean/playback/CamFilePreviewActivity;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    .line 744
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1900(Lcom/ocean/playback/CamFilePreviewActivity;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 745
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 746
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 747
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 748
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$9;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2000(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f060023

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;)V
    .locals 0

    .line 705
    check-cast p1, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-virtual {p0, p1}, Lcom/ocean/playback/CamFilePreviewActivity$9;->onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V

    return-void
.end method
