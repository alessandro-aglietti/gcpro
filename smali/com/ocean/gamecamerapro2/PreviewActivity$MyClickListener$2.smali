.class Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener$2;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener$2;->this$1:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 558
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ocean/gamecamerapro2/MyApplication;->isPreviewExit:Z

    .line 559
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener$2;->this$1:Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/PreviewActivity$MyClickListener;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->finish()V

    return-void
.end method
