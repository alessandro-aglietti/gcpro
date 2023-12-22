.class Lcom/ocean/playback/CamFilePreviewActivity$5;
.super Ljava/lang/Object;
.source "CamFilePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/CamFilePreviewActivity;->btnDeleteFile()V
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

    .line 524
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$5;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 528
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$5;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$400(Lcom/ocean/playback/CamFilePreviewActivity;)V

    .line 529
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$5;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$500(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;

    move-result-object p1

    const v0, 0x10001

    invoke-virtual {p1, v0}, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;->sendEmptyMessage(I)Z

    return-void
.end method
