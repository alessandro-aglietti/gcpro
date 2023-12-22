.class Lcom/ocean/gamecamerapro2/MainActivity$31;
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

    .line 1707
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$31;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1711
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$31;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$31;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget v0, v0, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->cellDidRename(I)V

    return-void
.end method
