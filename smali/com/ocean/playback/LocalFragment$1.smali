.class Lcom/ocean/playback/LocalFragment$1;
.super Ljava/lang/Object;
.source "LocalFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    .line 153
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$1;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$1;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$000(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnScrollStopListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$1;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$000(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnScrollStopListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ocean/playback/LocalFragment$OnScrollStopListener;->didStopScrolling(Z)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$1;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$000(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnScrollStopListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$1;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$000(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnScrollStopListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/ocean/playback/LocalFragment$OnScrollStopListener;->didStopScrolling(Z)V

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
