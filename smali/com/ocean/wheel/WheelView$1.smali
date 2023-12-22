.class Lcom/ocean/wheel/WheelView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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

    .line 819
    iput-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 821
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$000(Lcom/ocean/wheel/WheelView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 822
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 823
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$200(Lcom/ocean/wheel/WheelView;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 836
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    iget-object p2, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p2}, Lcom/ocean/wheel/WheelView;->access$600(Lcom/ocean/wheel/WheelView;)I

    move-result p2

    iget-object p3, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p3}, Lcom/ocean/wheel/WheelView;->access$700(Lcom/ocean/wheel/WheelView;)I

    move-result p3

    mul-int p2, p2, p3

    iget-object p3, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p3}, Lcom/ocean/wheel/WheelView;->access$800(Lcom/ocean/wheel/WheelView;)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/ocean/wheel/WheelView;->access$502(Lcom/ocean/wheel/WheelView;I)I

    .line 837
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    iget-boolean p1, p1, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    const v8, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$900(Lcom/ocean/wheel/WheelView;)Lcom/ocean/wheel/WheelAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result p1

    iget-object p2, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p2}, Lcom/ocean/wheel/WheelView;->access$700(Lcom/ocean/wheel/WheelView;)I

    move-result p2

    mul-int p1, p1, p2

    move v8, p1

    .line 838
    :goto_0
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    iget-boolean p1, p1, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    neg-int p1, v8

    move v7, p1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 839
    :goto_1
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$500(Lcom/ocean/wheel/WheelView;)I

    move-result v2

    const/4 v3, 0x0

    neg-float p1, p4

    float-to-int p1, p1

    div-int/lit8 v4, p1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 840
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1, p2}, Lcom/ocean/wheel/WheelView;->access$1000(Lcom/ocean/wheel/WheelView;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 830
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    invoke-static {p1}, Lcom/ocean/wheel/WheelView;->access$300(Lcom/ocean/wheel/WheelView;)V

    .line 831
    iget-object p1, p0, Lcom/ocean/wheel/WheelView$1;->this$0:Lcom/ocean/wheel/WheelView;

    neg-float p2, p4

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/ocean/wheel/WheelView;->access$400(Lcom/ocean/wheel/WheelView;I)V

    const/4 p1, 0x1

    return p1
.end method
