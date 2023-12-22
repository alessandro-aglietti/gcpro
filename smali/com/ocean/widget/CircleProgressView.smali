.class public Lcom/ocean/widget/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANIM_FADE_IN:I = 0x2

.field private static final ANIM_INCREMENTAL:I = 0x3

.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_ROLL:I = 0x1

.field private static final ANIM_THICKNESS_EXPAND:I = 0x4

.field private static final DEFAULT_COLOR:I = -0xbbbbbc

.field private static final DEFAULT_START_ANGLE:I = -0x5a

.field private static final DEFAULT_START_ANIMATION_DURATION:I = 0x1f4

.field private static final DEFAULT_TEXT_SIZE:I = 0x2d

.field private static final DEFAULT_THICKNESS:I = 0x14

.field private static final DEFAULT_VALUE:I


# instance fields
.field private mColor:I

.field private final mDrawRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mStartAngle:I

.field private mStartAnimation:I

.field private mStartAnimationDuration:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mThickness:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/ocean/widget/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/ocean/widget/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/ocean/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/ocean/widget/CircleProgressView;->mPath:Landroid/graphics/Path;

    .line 41
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/ocean/widget/CircleProgressView;->mDrawRect:Landroid/graphics/RectF;

    .line 66
    sget-object p3, Lcom/ocean/gamecamerapro2/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    const/16 p3, 0x14

    .line 69
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    const p2, -0xbbbbbc

    const/4 p3, 0x0

    .line 70
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mColor:I

    const/4 p2, 0x5

    .line 71
    iget v1, p0, Lcom/ocean/widget/CircleProgressView;->mColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mTextColor:I

    const/16 p2, 0x8

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mValue:I

    const/16 p2, -0x5a

    .line 73
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mStartAngle:I

    const/4 p2, 0x6

    const/16 v0, 0x2d

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mTextSize:I

    const/4 p2, 0x4

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ocean/widget/CircleProgressView;->mText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mStartAnimation:I

    const/4 p2, 0x3

    const/16 p3, 0x1f4

    .line 77
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircleProgressView;->mStartAnimationDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    iget p1, p0, Lcom/ocean/widget/CircleProgressView;->mValue:I

    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircleProgressView;->setValue(I)V

    .line 84
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ocean/widget/CircleProgressView;->mColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ocean/widget/CircleProgressView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ocean/widget/CircleProgressView;->mTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    :catchall_0
    move-exception p2

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    throw p2
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mColor:I

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mStartAngle:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/ocean/widget/CircleProgressView;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 238
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/CircleProgressView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mTextSize:I

    return v0
.end method

.method public getThickness()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mValue:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 122
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    .line 130
    :cond_0
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mStartAnimation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "thickness"

    .line 143
    new-array v2, v2, [I

    aput v3, v2, v3

    iget v3, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    aput v3, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "value"

    .line 139
    new-array v2, v2, [I

    aput v3, v2, v3

    iget v3, p0, Lcom/ocean/widget/CircleProgressView;->mValue:I

    aput v3, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "alpha"

    .line 136
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "startAngle"

    .line 132
    new-array v2, v2, [I

    iget v4, p0, Lcom/ocean/widget/CircleProgressView;->mStartAngle:I

    add-int/lit16 v4, v4, -0xb4

    aput v4, v2, v3

    iget v3, p0, Lcom/ocean/widget/CircleProgressView;->mStartAngle:I

    aput v3, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 151
    iget v1, p0, Lcom/ocean/widget/CircleProgressView;->mStartAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mValue:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 99
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 100
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 101
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getText()Ljava/lang/String;

    move-result-object v3

    .line 103
    iget-object v4, p0, Lcom/ocean/widget/CircleProgressView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 105
    iget-object v4, p0, Lcom/ocean/widget/CircleProgressView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 106
    iget-object v4, p0, Lcom/ocean/widget/CircleProgressView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 107
    iget-object v4, p0, Lcom/ocean/widget/CircleProgressView;->mDrawRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 108
    iget-object v2, p0, Lcom/ocean/widget/CircleProgressView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 110
    iget-object v1, p0, Lcom/ocean/widget/CircleProgressView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ocean/widget/CircleProgressView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/ocean/widget/CircleProgressView;->mStartAngle:I

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 111
    iget-object v0, p0, Lcom/ocean/widget/CircleProgressView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ocean/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 114
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget-object v4, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float v0, v0

    int-to-float v1, v1

    .line 116
    iget-object v2, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 207
    iput p1, p0, Lcom/ocean/widget/CircleProgressView;->mColor:I

    .line 208
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/ocean/widget/CircleProgressView;->mStartAngle:I

    .line 290
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mText:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 248
    iput p1, p0, Lcom/ocean/widget/CircleProgressView;->mTextColor:I

    .line 249
    iget-object p1, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/ocean/widget/CircleProgressView;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 266
    iput p1, p0, Lcom/ocean/widget/CircleProgressView;->mTextSize:I

    .line 267
    iget-object v0, p0, Lcom/ocean/widget/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setThickness(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 189
    iput p1, p0, Lcom/ocean/widget/CircleProgressView;->mThickness:I

    .line 190
    iget-object v0, p0, Lcom/ocean/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->invalidate()V

    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Thickness was %d but must be positive"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 167
    iput p1, p0, Lcom/ocean/widget/CircleProgressView;->mValue:I

    .line 168
    invoke-virtual {p0}, Lcom/ocean/widget/CircleProgressView;->invalidate()V

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Value was %d but must be in the 0-100 range"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
