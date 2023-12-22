.class Lcom/ocean/wheel/WheelView$2;
.super Landroid/os/Handler;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/ocean/wheel/WheelView;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v0}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 871
    iget-object v0, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v0}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 872
    iget-object v1, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v1}, Lcom/ocean/wheel/WheelView;->access$500(Lcom/ocean/wheel/WheelView;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 873
    iget-object v2, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v2, v0}, Lcom/ocean/wheel/WheelView;->access$502(Lcom/ocean/wheel/WheelView;I)I

    if-eqz v1, :cond_0

    .line 875
    iget-object v2, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v2, v1}, Lcom/ocean/wheel/WheelView;->access$400(Lcom/ocean/wheel/WheelView;I)V

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v1}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v0}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 882
    iget-object v0, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v0}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v0}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {v0}, Lcom/ocean/wheel/WheelView;->access$1100(Lcom/ocean/wheel/WheelView;)Landroid/os/Handler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 886
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    .line 887
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$1200(Lcom/ocean/wheel/WheelView;)V

    goto :goto_0

    .line 889
    :cond_3
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$2;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-virtual {p1}, Lcom/ocean/wheel/WheelView;->finishScrolling()V

    :goto_0
    return-void
.end method
