.class Lcom/ocean/gamecamerapro2/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->guide_initView()V
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

    .line 1677
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$28;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1681
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$28;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3400(Lcom/ocean/gamecamerapro2/MainActivity;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1682
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$28;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3500(Lcom/ocean/gamecamerapro2/MainActivity;)V

    :cond_0
    return-void
.end method
