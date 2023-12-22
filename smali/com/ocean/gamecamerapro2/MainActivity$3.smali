.class Lcom/ocean/gamecamerapro2/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/MainActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$3;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$3;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$3;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$300(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;

    move-result-object p1

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->sendEmptyMessage(I)Z

    return-void
.end method
