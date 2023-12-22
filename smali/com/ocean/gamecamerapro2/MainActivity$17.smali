.class Lcom/ocean/gamecamerapro2/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->btlist_initBluetoothListView()V
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

    .line 1204
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$17;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1207
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$17;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1200(Lcom/ocean/gamecamerapro2/MainActivity;IZ)V

    return-void
.end method
