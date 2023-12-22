.class Lcom/ocean/widget/MorphingAnimation;
.super Ljava/lang/Object;
.source "MorphingAnimation.java"


# static fields
.field public static final DURATION_INSTANT:I = 0x1

.field public static final DURATION_NORMAL:I = 0x190


# instance fields
.field private mDrawable:Lcom/ocean/widget/StrokeGradientDrawable;

.field private mDuration:I

.field private mFromColor:I

.field private mFromCornerRadius:F

.field private mFromStrokeColor:I

.field private mFromWidth:I

.field private mListener:Lcom/ocean/widget/OnAnimationEndListener;

.field private mPadding:F

.field private mToColor:I

.field private mToCornerRadius:F

.field private mToStrokeColor:I

.field private mToWidth:I

.field private mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/ocean/widget/StrokeGradientDrawable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ocean/widget/MorphingAnimation;->mView:Landroid/widget/TextView;

    .line 39
    iput-object p2, p0, Lcom/ocean/widget/MorphingAnimation;->mDrawable:Lcom/ocean/widget/StrokeGradientDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/widget/MorphingAnimation;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/ocean/widget/MorphingAnimation;->mFromWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/ocean/widget/MorphingAnimation;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/ocean/widget/MorphingAnimation;->mToWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/ocean/widget/MorphingAnimation;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/ocean/widget/MorphingAnimation;->mPadding:F

    return p0
.end method

.method static synthetic access$300(Lcom/ocean/widget/MorphingAnimation;)Landroid/widget/TextView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ocean/widget/MorphingAnimation;->mView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ocean/widget/MorphingAnimation;)Lcom/ocean/widget/OnAnimationEndListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ocean/widget/MorphingAnimation;->mListener:Lcom/ocean/widget/OnAnimationEndListener;

    return-object p0
.end method


# virtual methods
.method public setDuration(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mDuration:I

    return-void
.end method

.method public setFromColor(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mFromColor:I

    return-void
.end method

.method public setFromCornerRadius(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mFromCornerRadius:F

    return-void
.end method

.method public setFromStrokeColor(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mFromStrokeColor:I

    return-void
.end method

.method public setFromWidth(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mFromWidth:I

    return-void
.end method

.method public setListener(Lcom/ocean/widget/OnAnimationEndListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ocean/widget/MorphingAnimation;->mListener:Lcom/ocean/widget/OnAnimationEndListener;

    return-void
.end method

.method public setPadding(F)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mPadding:F

    return-void
.end method

.method public setToColor(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mToColor:I

    return-void
.end method

.method public setToCornerRadius(F)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mToCornerRadius:F

    return-void
.end method

.method public setToStrokeColor(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mToStrokeColor:I

    return-void
.end method

.method public setToWidth(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/ocean/widget/MorphingAnimation;->mToWidth:I

    return-void
.end method

.method public start()V
    .locals 10

    const/4 v0, 0x2

    .line 87
    new-array v1, v0, [I

    iget v2, p0, Lcom/ocean/widget/MorphingAnimation;->mFromWidth:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/ocean/widget/MorphingAnimation;->mToWidth:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/ocean/widget/MorphingAnimation;->mDrawable:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 89
    new-instance v5, Lcom/ocean/widget/MorphingAnimation$1;

    invoke-direct {v5, p0, v2}, Lcom/ocean/widget/MorphingAnimation$1;-><init>(Lcom/ocean/widget/MorphingAnimation;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v5, "color"

    .line 112
    new-array v6, v0, [I

    iget v7, p0, Lcom/ocean/widget/MorphingAnimation;->mFromColor:I

    aput v7, v6, v3

    iget v7, p0, Lcom/ocean/widget/MorphingAnimation;->mToColor:I

    aput v7, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 113
    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 115
    iget-object v6, p0, Lcom/ocean/widget/MorphingAnimation;->mDrawable:Lcom/ocean/widget/StrokeGradientDrawable;

    const-string v7, "strokeColor"

    new-array v8, v0, [I

    iget v9, p0, Lcom/ocean/widget/MorphingAnimation;->mFromStrokeColor:I

    aput v9, v8, v3

    iget v9, p0, Lcom/ocean/widget/MorphingAnimation;->mToStrokeColor:I

    aput v9, v8, v4

    .line 116
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 117
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-string v7, "cornerRadius"

    .line 119
    new-array v8, v0, [F

    iget v9, p0, Lcom/ocean/widget/MorphingAnimation;->mFromCornerRadius:F

    aput v9, v8, v3

    iget v9, p0, Lcom/ocean/widget/MorphingAnimation;->mToCornerRadius:F

    aput v9, v8, v4

    .line 120
    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 122
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 123
    iget v8, p0, Lcom/ocean/widget/MorphingAnimation;->mDuration:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v8, 0x4

    .line 124
    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v1, v8, v3

    aput-object v5, v8, v4

    aput-object v6, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 125
    new-instance v0, Lcom/ocean/widget/MorphingAnimation$2;

    invoke-direct {v0, p0}, Lcom/ocean/widget/MorphingAnimation$2;-><init>(Lcom/ocean/widget/MorphingAnimation;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
