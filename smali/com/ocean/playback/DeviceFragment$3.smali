.class Lcom/ocean/playback/DeviceFragment$3;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/DeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/ocean/playback/DeviceFragment;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1, p2}, Lcom/ocean/playback/DeviceFragment;->access$602(Lcom/ocean/playback/DeviceFragment;I)I

    .line 326
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/ocean/playback/DeviceFragment;->access$702(Lcom/ocean/playback/DeviceFragment;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$400(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ocean/playback/DeviceFragment;->access$502(Lcom/ocean/playback/DeviceFragment;Z)Z

    .line 316
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$400(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;->didStopScrolling(Z)V

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$400(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ocean/playback/DeviceFragment;->access$502(Lcom/ocean/playback/DeviceFragment;Z)Z

    .line 303
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$3;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$400(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;->didStopScrolling(Z)V

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
