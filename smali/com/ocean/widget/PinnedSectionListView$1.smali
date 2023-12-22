.class Lcom/ocean/widget/PinnedSectionListView$1;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/widget/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/ocean/widget/PinnedSectionListView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/ocean/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/ocean/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p1}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p4

    invoke-static {p1, p4}, Lcom/ocean/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/ocean/widget/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p4, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p4}, Lcom/ocean/widget/PinnedSectionListView;->getPaddingTop()I

    move-result p4

    if-ne p1, p4, :cond_2

    .line 114
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p1}, Lcom/ocean/widget/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p1, p2, p2, p3}, Lcom/ocean/widget/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p1, p2}, Lcom/ocean/widget/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result p1

    const/4 p4, -0x1

    if-le p1, p4, :cond_4

    .line 122
    iget-object p4, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p4, p1, p2, p3}, Lcom/ocean/widget/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    .line 124
    :cond_4
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    invoke-virtual {p1}, Lcom/ocean/widget/PinnedSectionListView;->destroyPinnedShadow()V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/ocean/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView$1;->this$0:Lcom/ocean/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/ocean/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
