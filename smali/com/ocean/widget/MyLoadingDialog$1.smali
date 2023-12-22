.class Lcom/ocean/widget/MyLoadingDialog$1;
.super Ljava/lang/Object;
.source "MyLoadingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/MyLoadingDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/MyLoadingDialog;


# direct methods
.method constructor <init>(Lcom/ocean/widget/MyLoadingDialog;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ocean/widget/MyLoadingDialog$1;->this$0:Lcom/ocean/widget/MyLoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/ocean/widget/MyLoadingDialog$1;->this$0:Lcom/ocean/widget/MyLoadingDialog;

    invoke-static {p1}, Lcom/ocean/widget/MyLoadingDialog;->access$000(Lcom/ocean/widget/MyLoadingDialog;)Lcom/ocean/cmdrequest/ForCancelDownload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/ocean/widget/MyLoadingDialog$1;->this$0:Lcom/ocean/widget/MyLoadingDialog;

    invoke-static {p1}, Lcom/ocean/widget/MyLoadingDialog;->access$000(Lcom/ocean/widget/MyLoadingDialog;)Lcom/ocean/cmdrequest/ForCancelDownload;

    move-result-object p1

    invoke-interface {p1}, Lcom/ocean/cmdrequest/ForCancelDownload;->cancelDownload()V

    .line 73
    iget-object p1, p0, Lcom/ocean/widget/MyLoadingDialog$1;->this$0:Lcom/ocean/widget/MyLoadingDialog;

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
