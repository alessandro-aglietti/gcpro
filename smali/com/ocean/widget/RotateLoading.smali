.class public Lcom/ocean/widget/RotateLoading;
.super Landroid/view/View;
.source "RotateLoading.java"


# static fields
.field private static final DEFAULT_SHADOW_POSITION:I = 0x2

.field private static final DEFAULT_SPEED_OF_DEGREE:I = 0xa

.field private static final DEFAULT_WIDTH:I = 0x6


# instance fields
.field private arc:F

.field private bottomDegree:I

.field private changeBigger:Z

.field private color:I

.field private isStart:Z

.field private loadingRectF:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private shadowPosition:I

.field private shadowRectF:Landroid/graphics/RectF;

.field private speedOfArc:F

.field private speedOfDegree:I

.field private topDegree:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    const/16 v0, 0xbe

    .line 30
    iput v0, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/ocean/widget/RotateLoading;->changeBigger:Z

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ocean/widget/RotateLoading;->isStart:Z

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/ocean/widget/RotateLoading;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    const/16 v0, 0xbe

    .line 30
    iput v0, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/ocean/widget/RotateLoading;->changeBigger:Z

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ocean/widget/RotateLoading;->isStart:Z

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/ocean/widget/RotateLoading;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 29
    iput p3, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    const/16 p3, 0xbe

    .line 30
    iput p3, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    const/4 p3, 0x1

    .line 36
    iput-boolean p3, p0, Lcom/ocean/widget/RotateLoading;->changeBigger:Z

    const/4 p3, 0x0

    .line 40
    iput-boolean p3, p0, Lcom/ocean/widget/RotateLoading;->isStart:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/ocean/widget/RotateLoading;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/ocean/widget/RotateLoading;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/ocean/widget/RotateLoading;->isStart:Z

    return p1
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/ocean/widget/RotateLoading;->color:I

    const/high16 v1, 0x40c00000    # 6.0f

    .line 65
    invoke-virtual {p0, p1, v1}, Lcom/ocean/widget/RotateLoading;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/ocean/widget/RotateLoading;->width:I

    .line 66
    invoke-virtual {p0}, Lcom/ocean/widget/RotateLoading;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v2, v3}, Lcom/ocean/widget/RotateLoading;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/ocean/widget/RotateLoading;->shadowPosition:I

    const/16 v2, 0xa

    .line 67
    iput v2, p0, Lcom/ocean/widget/RotateLoading;->speedOfDegree:I

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 70
    sget-object v4, Lcom/ocean/gamecamerapro2/R$styleable;->RotateLoading:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v4, 0x0

    .line 71
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ocean/widget/RotateLoading;->color:I

    .line 72
    invoke-virtual {p0, p1, v1}, Lcom/ocean/widget/RotateLoading;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->width:I

    const/4 p1, 0x3

    .line 73
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->shadowPosition:I

    .line 74
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->speedOfDegree:I

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    :cond_0
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->speedOfDegree:I

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->speedOfArc:F

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object p1, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ocean/widget/RotateLoading;->color:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object p1, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object p1, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object p1, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ocean/widget/RotateLoading;->width:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object p1, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private startAnimator()V
    .locals 6

    const-string v0, "scaleX"

    const/4 v1, 0x2

    .line 163
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "scaleY"

    .line 164
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 165
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 166
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 168
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 170
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 171
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopAnimator()V
    .locals 6

    const-string v0, "scaleX"

    const/4 v1, 0x2

    .line 175
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "scaleY"

    .line 176
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 177
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 180
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 182
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 183
    new-instance v0, Lcom/ocean/widget/RotateLoading$1;

    invoke-direct {v0, p0}, Lcom/ocean/widget/RotateLoading$1;-><init>(Lcom/ocean/widget/RotateLoading;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public dpToPx(Landroid/content/Context;F)I
    .locals 1

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getLoadingColor()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/ocean/widget/RotateLoading;->color:I

    return v0
.end method

.method public isStart()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/ocean/widget/RotateLoading;->isStart:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-boolean v0, p0, Lcom/ocean/widget/RotateLoading;->isStart:Z

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#1a000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v3, p0, Lcom/ocean/widget/RotateLoading;->shadowRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    int-to-float v4, v0

    iget v5, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    iget-object v9, p0, Lcom/ocean/widget/RotateLoading;->shadowRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    int-to-float v10, v0

    iget v11, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v3, p0, Lcom/ocean/widget/RotateLoading;->loadingRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    int-to-float v4, v0

    iget v5, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    iget-object v7, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 111
    iget-object v9, p0, Lcom/ocean/widget/RotateLoading;->loadingRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    int-to-float v10, v0

    iget v11, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    iget-object v13, p0, Lcom/ocean/widget/RotateLoading;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->speedOfDegree:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    .line 114
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->speedOfDegree:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    .line 115
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    .line 116
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->topDegree:I

    .line 118
    :cond_1
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    if-le p1, v0, :cond_2

    .line 119
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->bottomDegree:I

    .line 122
    :cond_2
    iget-boolean p1, p0, Lcom/ocean/widget/RotateLoading;->changeBigger:Z

    const/high16 v0, 0x43200000    # 160.0f

    if-eqz p1, :cond_3

    .line 123
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 124
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->speedOfArc:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    .line 125
    invoke-virtual {p0}, Lcom/ocean/widget/RotateLoading;->invalidate()V

    goto :goto_0

    .line 128
    :cond_3
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->speedOfDegree:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    .line 129
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/ocean/widget/RotateLoading;->speedOfArc:F

    mul-float v2, v2, v1

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    .line 130
    invoke-virtual {p0}, Lcom/ocean/widget/RotateLoading;->invalidate()V

    .line 133
    :cond_4
    :goto_0
    iget p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    cmpl-float p1, p1, v0

    if-gez p1, :cond_5

    iget p1, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_6

    .line 134
    :cond_5
    iget-boolean p1, p0, Lcom/ocean/widget/RotateLoading;->changeBigger:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/ocean/widget/RotateLoading;->changeBigger:Z

    .line 135
    invoke-virtual {p0}, Lcom/ocean/widget/RotateLoading;->invalidate()V

    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/high16 p3, 0x41200000    # 10.0f

    .line 90
    iput p3, p0, Lcom/ocean/widget/RotateLoading;->arc:F

    .line 92
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-direct {p3, p4, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/ocean/widget/RotateLoading;->loadingRectF:Landroid/graphics/RectF;

    .line 93
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 p4, p4, 0x2

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->shadowPosition:I

    add-int/2addr p4, v0

    int-to-float p4, p4

    iget v0, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->shadowPosition:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->shadowPosition:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->width:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/ocean/widget/RotateLoading;->shadowPosition:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/ocean/widget/RotateLoading;->shadowRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setLoadingColor(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/ocean/widget/RotateLoading;->color:I

    return-void
.end method

.method public start()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/ocean/widget/RotateLoading;->startAnimator()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/ocean/widget/RotateLoading;->isStart:Z

    .line 150
    invoke-virtual {p0}, Lcom/ocean/widget/RotateLoading;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/ocean/widget/RotateLoading;->stopAnimator()V

    .line 155
    invoke-virtual {p0}, Lcom/ocean/widget/RotateLoading;->invalidate()V

    return-void
.end method
