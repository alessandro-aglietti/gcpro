.class Lcom/ocean/playback/CamFilePreviewActivity$13;
.super Ljava/lang/Object;
.source "CamFilePreviewActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/CamFilePreviewActivity;->playCamFile()V
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

    .line 1033
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1064
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1066
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 1067
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 1068
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1053
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1055
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 1056
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 1057
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2400(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 1043
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1045
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 1046
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 1047
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1036
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->start()V

    .line 1037
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 1038
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$13;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
