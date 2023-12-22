.class Lcom/ocean/widget/RotateLoading$1;
.super Ljava/lang/Object;
.source "RotateLoading.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/RotateLoading;->stopAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/RotateLoading;


# direct methods
.method constructor <init>(Lcom/ocean/widget/RotateLoading;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/ocean/widget/RotateLoading$1;->this$0:Lcom/ocean/widget/RotateLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/ocean/widget/RotateLoading$1;->this$0:Lcom/ocean/widget/RotateLoading;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ocean/widget/RotateLoading;->access$002(Lcom/ocean/widget/RotateLoading;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
