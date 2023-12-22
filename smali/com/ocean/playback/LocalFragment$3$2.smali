.class Lcom/ocean/playback/LocalFragment$3$2;
.super Ljava/lang/Object;
.source "LocalFragment.java"

# interfaces
.implements Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/LocalFragment$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ocean/playback/LocalFragment$3;

.field final synthetic val$item_pos:I

.field final synthetic val$item_select:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/ocean/playback/LocalFragment$3;ILandroid/widget/ImageView;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$3$2;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iput p2, p0, Lcom/ocean/playback/LocalFragment$3$2;->val$item_pos:I

    iput-object p3, p0, Lcom/ocean/playback/LocalFragment$3$2;->val$item_select:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3$2;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iget-object p1, p1, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/ocean/playback/LocalFragment$3$2;->val$item_pos:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3$2;->val$item_select:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3$2;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iget-object p1, p1, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3$2;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iget-object p1, p1, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    iput-boolean v0, p1, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3$2;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iget-object p1, p1, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    :goto_0
    return-void
.end method
