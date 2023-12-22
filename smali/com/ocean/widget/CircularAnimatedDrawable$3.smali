.class Lcom/ocean/widget/CircularAnimatedDrawable$3;
.super Ljava/lang/Object;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/CircularAnimatedDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/CircularAnimatedDrawable;


# direct methods
.method constructor <init>(Lcom/ocean/widget/CircularAnimatedDrawable;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ocean/widget/CircularAnimatedDrawable$3;->this$0:Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/ocean/widget/CircularAnimatedDrawable$3;->this$0:Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-static {p1}, Lcom/ocean/widget/CircularAnimatedDrawable;->access$000(Lcom/ocean/widget/CircularAnimatedDrawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
