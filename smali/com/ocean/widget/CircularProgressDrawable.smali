.class Lcom/ocean/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mSize:I

.field private mStartAngle:F

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    iput p1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mSize:I

    .line 21
    iput p2, p0, Lcom/ocean/widget/CircularProgressDrawable;->mStrokeWidth:I

    .line 22
    iput p3, p0, Lcom/ocean/widget/CircularProgressDrawable;->mStrokeColor:I

    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 23
    iput p1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mStartAngle:F

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mSweepAngle:F

    return-void
.end method

.method private createPaint()Landroid/graphics/Paint;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getRect()Landroid/graphics/RectF;
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 68
    iget v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 69
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressDrawable;->getSize()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressDrawable;->getSize()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mRectF:Landroid/graphics/RectF;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 37
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 43
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressDrawable;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, p0, Lcom/ocean/widget/CircularProgressDrawable;->mStartAngle:F

    iget v4, p0, Lcom/ocean/widget/CircularProgressDrawable;->mSweepAngle:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 44
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 45
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressDrawable;->createPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/ocean/widget/CircularProgressDrawable;->mSize:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/ocean/widget/CircularProgressDrawable;->mSweepAngle:F

    return-void
.end method
