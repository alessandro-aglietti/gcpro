.class Lcom/ocean/widget/CircularAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ANGLE_ANIMATOR_DURATION:I = 0x7d0

.field private static final ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MIN_SWEEP_ANGLE:I = 0x1e

.field private static final SWEEP_ANIMATOR_DURATION:I = 0x258

.field private static final SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAngleProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/ocean/widget/CircularAnimatedDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderWidth:F

.field private mCurrentGlobalAngle:F

.field private mCurrentGlobalAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mModeAppearing:Z

.field private mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

.field private mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mSweepProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/ocean/widget/CircularAnimatedDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/ocean/widget/CircularAnimatedDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 22
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/ocean/widget/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Lcom/ocean/widget/CircularAnimatedDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lcom/ocean/widget/CircularAnimatedDrawable$1;-><init>(Lcom/ocean/widget/CircularAnimatedDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mAngleProperty:Landroid/util/Property;

    .line 107
    new-instance v0, Lcom/ocean/widget/CircularAnimatedDrawable$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lcom/ocean/widget/CircularAnimatedDrawable$2;-><init>(Lcom/ocean/widget/CircularAnimatedDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mSweepProperty:Landroid/util/Property;

    .line 39
    iput p2, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mBorderWidth:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object p2, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-direct {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->setupAnimations()V

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/widget/CircularAnimatedDrawable;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->toggleAppearingMode()V

    return-void
.end method

.method private setupAnimations()V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mAngleProperty:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    .line 122
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/ocean/widget/CircularAnimatedDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 125
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 127
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mSweepProperty:Landroid/util/Property;

    new-array v4, v1, [F

    const/high16 v5, 0x43960000    # 300.0f

    aput v5, v4, v3

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    .line 128
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/ocean/widget/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 131
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 132
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/ocean/widget/CircularAnimatedDrawable$3;

    invoke-direct {v1, p0}, Lcom/ocean/widget/CircularAnimatedDrawable$3;-><init>(Lcom/ocean/widget/CircularAnimatedDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private toggleAppearingMode()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mModeAppearing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mModeAppearing:Z

    .line 80
    iget-boolean v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mModeAppearing:Z

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 52
    iget v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentGlobalAngle:F

    iget v1, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    sub-float/2addr v0, v1

    .line 53
    iget v1, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    .line 54
    iget-boolean v2, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mModeAppearing:Z

    const/high16 v3, 0x41f00000    # 30.0f

    if-nez v2, :cond_0

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    :goto_0
    move v5, v0

    move v6, v2

    goto :goto_1

    :cond_0
    add-float v2, v1, v3

    goto :goto_0

    .line 60
    :goto_1
    iget-object v4, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCurrentGlobalAngle()F
    .locals 1

    .line 188
    iget v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentGlobalAngle:F

    return v0
.end method

.method public getCurrentSweepAngle()F
    .locals 1

    .line 197
    iget v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 87
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mBorderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 89
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v4, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 90
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v4, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 91
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v1, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentGlobalAngle:F

    .line 184
    invoke-virtual {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    .line 193
    invoke-virtual {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mRunning:Z

    .line 161
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 162
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    invoke-virtual {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mRunning:Z

    .line 172
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 173
    iget-object v0, p0, Lcom/ocean/widget/CircularAnimatedDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 174
    invoke-virtual {p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->invalidateSelf()V

    return-void
.end method
