.class Lcom/ocean/playback/LocalFragment$3;
.super Ljava/lang/Object;
.source "LocalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/LocalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/LocalFragment;


# direct methods
.method constructor <init>(Lcom/ocean/playback/LocalFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const p1, 0x7f070090

    .line 236
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 239
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 241
    new-instance p2, Lcom/ocean/widget/ActionSheetDialog;

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-virtual {v0}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ocean/widget/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/ocean/widget/ActionSheetDialog;->builder()Lcom/ocean/widget/ActionSheetDialog;

    move-result-object p2

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    const v1, 0x7f0b00a8

    .line 242
    invoke-virtual {v0, v1}, Lcom/ocean/playback/LocalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ocean/widget/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/ocean/widget/ActionSheetDialog;

    move-result-object p2

    .line 243
    invoke-virtual {p2, p5}, Lcom/ocean/widget/ActionSheetDialog;->setCancelable(Z)Lcom/ocean/widget/ActionSheetDialog;

    move-result-object p2

    .line 244
    invoke-virtual {p2, p4}, Lcom/ocean/widget/ActionSheetDialog;->setCanceledOnTouchOutside(Z)Lcom/ocean/widget/ActionSheetDialog;

    move-result-object p2

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    const v1, 0x7f0b00ac

    .line 275
    invoke-virtual {v0, v1}, Lcom/ocean/playback/LocalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->Blue:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/ocean/playback/LocalFragment$3$2;

    invoke-direct {v2, p0, p3, p1}, Lcom/ocean/playback/LocalFragment$3$2;-><init>(Lcom/ocean/playback/LocalFragment$3;ILandroid/widget/ImageView;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/ocean/widget/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;)Lcom/ocean/widget/ActionSheetDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    const v0, 0x7f0b00ad

    .line 330
    invoke-virtual {p2, v0}, Lcom/ocean/playback/LocalFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->Blue:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    new-instance v1, Lcom/ocean/playback/LocalFragment$3$1;

    invoke-direct {v1, p0, p3}, Lcom/ocean/playback/LocalFragment$3$1;-><init>(Lcom/ocean/playback/LocalFragment$3;I)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/ocean/widget/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;)Lcom/ocean/widget/ActionSheetDialog;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lcom/ocean/widget/ActionSheetDialog;->show()V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 353
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 354
    iget-object p3, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p3}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 p2, 0x8

    .line 355
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 359
    :cond_2
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :goto_0
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 365
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    iput-boolean p5, p1, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    goto :goto_1

    .line 367
    :cond_3
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    iput-boolean p4, p1, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    :goto_1
    return p4
.end method
