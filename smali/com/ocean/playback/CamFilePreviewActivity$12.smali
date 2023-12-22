.class Lcom/ocean/playback/CamFilePreviewActivity$12;
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

    .line 803
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$12;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 807
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$12;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 809
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$12;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$12;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 812
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$12;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2300(Lcom/ocean/playback/CamFilePreviewActivity;)V

    return-void
.end method
