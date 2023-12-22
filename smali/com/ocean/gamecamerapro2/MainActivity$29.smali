.class Lcom/ocean/gamecamerapro2/MainActivity$29;
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

    .line 1687
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$29;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1691
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$29;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$800(Lcom/ocean/gamecamerapro2/MainActivity;I)Z

    return-void
.end method
