.class Lcom/ocean/gamecamerapro2/MainActivity$30;
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

    .line 1696
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$30;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1700
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$30;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3200(Lcom/ocean/gamecamerapro2/MainActivity;)V

    .line 1701
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$30;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2602(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z

    .line 1702
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$30;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2702(Lcom/ocean/gamecamerapro2/MainActivity;I)I

    return-void
.end method
