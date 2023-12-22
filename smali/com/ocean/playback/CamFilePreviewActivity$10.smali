.class Lcom/ocean/playback/CamFilePreviewActivity$10;
.super Ljava/lang/Object;
.source "CamFilePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 757
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 761
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 763
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 767
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1900(Lcom/ocean/playback/CamFilePreviewActivity;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 768
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2000(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f060023

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 769
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1900(Lcom/ocean/playback/CamFilePreviewActivity;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 770
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 771
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 772
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 773
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 776
    :cond_1
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2000(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/Button;

    move-result-object p1

    const v1, 0x7f060021

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 777
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1900(Lcom/ocean/playback/CamFilePreviewActivity;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 778
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 779
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->start()V

    .line 780
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 781
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$10;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
