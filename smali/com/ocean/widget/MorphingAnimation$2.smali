.class Lcom/ocean/widget/MorphingAnimation$2;
.super Ljava/lang/Object;
.source "MorphingAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/MorphingAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/MorphingAnimation;


# direct methods
.method constructor <init>(Lcom/ocean/widget/MorphingAnimation;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ocean/widget/MorphingAnimation$2;->this$0:Lcom/ocean/widget/MorphingAnimation;

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

    .line 133
    iget-object p1, p0, Lcom/ocean/widget/MorphingAnimation$2;->this$0:Lcom/ocean/widget/MorphingAnimation;

    invoke-static {p1}, Lcom/ocean/widget/MorphingAnimation;->access$400(Lcom/ocean/widget/MorphingAnimation;)Lcom/ocean/widget/OnAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/ocean/widget/MorphingAnimation$2;->this$0:Lcom/ocean/widget/MorphingAnimation;

    invoke-static {p1}, Lcom/ocean/widget/MorphingAnimation;->access$400(Lcom/ocean/widget/MorphingAnimation;)Lcom/ocean/widget/OnAnimationEndListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ocean/widget/OnAnimationEndListener;->onAnimationEnd()V

    :cond_0
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
