.class public Lcom/ocean/playback/ViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "ViewPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;,
        Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;
    }
.end annotation


# static fields
.field private static final COLOR_TEXT_HIGHLIGHTCOLOR:I = -0x1

.field private static final COLOR_TEXT_NORMAL:I = -0x55000001

.field private static final COUNT_DEFAULT_TAB:I = 0x4

.field private static final RADIO_TRIANGEL:F = 0.16666667f


# instance fields
.field private final DIMENSION_TRIANGEL_WIDTH:I

.field private mInitTranslationX:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mTabTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTabVisibleCount:I

.field private mTranslationX:F

.field private mTriangleHeight:I

.field private mTriangleWidth:I

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private myPagerChangeListener:Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

.field private onPageChangeListener:Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/ocean/playback/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    const v1, 0x3e2aaaab

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->DIMENSION_TRIANGEL_WIDTH:I

    const/4 v0, 0x4

    .line 54
    iput v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    .line 75
    sget-object v1, Lcom/ocean/gamecamerapro2/R$styleable;->ViewPagerIndicator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    .line 77
    iget p2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    if-gez p2, :cond_0

    .line 78
    iput v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPaint:Landroid/graphics/Paint;

    .line 82
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPaint:Landroid/graphics/Paint;

    const-string p2, "#ffffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/CornerPathEffect;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p2, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ocean/playback/ViewPagerIndicator;->myPagerChangeListener:Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ocean/playback/ViewPagerIndicator;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/ocean/playback/ViewPagerIndicator;->resetTextViewColor()V

    return-void
.end method

.method static synthetic access$200(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ocean/playback/ViewPagerIndicator;->onPageChangeListener:Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    return-object p0
.end method

.method private generateTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 270
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getScreenWidth()I

    move-result v2

    iget v3, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 274
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, -0x55000001

    .line 275
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 277
    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private initTriangle()V
    .locals 4

    .line 284
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPath:Landroid/graphics/Path;

    .line 286
    iget v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleHeight:I

    .line 287
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 288
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 290
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private resetTextViewColor()V
    .locals 3

    const/4 v0, 0x0

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 234
    invoke-virtual {p0, v0}, Lcom/ocean/playback/ViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 235
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 237
    check-cast v1, Landroid/widget/TextView;

    const v2, -0x55000001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    iget v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mInitTranslationX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTranslationX:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 97
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getScreenWidth()I
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 348
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 349
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 350
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method protected highLightTextView(I)V
    .locals 2

    .line 218
    invoke-virtual {p0, p1}, Lcom/ocean/playback/ViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 221
    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->myPagerChangeListener:Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->myPagerChangeListener:Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    invoke-interface {v0, p1}, Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;->onPageChange(I)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const-string v0, "TAG"

    const-string v1, "onFinishInflate"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 326
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 333
    invoke-virtual {p0, v1}, Lcom/ocean/playback/ViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    .line 336
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 337
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getScreenWidth()I

    move-result v4

    iget v5, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    div-int/2addr v4, v5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 338
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->setItemClickEvent()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 104
    iget p2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    div-int/2addr p1, p2

    int-to-float p1, p1

    const p2, 0x3e2aaaab

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleWidth:I

    .line 106
    iget p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->DIMENSION_TRIANGEL_WIDTH:I

    iget p2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleWidth:I

    .line 108
    invoke-direct {p0}, Lcom/ocean/playback/ViewPagerIndicator;->initTriangle()V

    .line 109
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    div-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTriangleWidth:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mInitTranslationX:I

    return-void
.end method

.method public scroll(IF)V
    .locals 4

    .line 300
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    mul-float v0, v0, v1

    iput v0, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTranslationX:F

    .line 302
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getScreenWidth()I

    move-result v0

    iget v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 304
    iget v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    add-int/lit8 v1, v1, -0x2

    if-lt p1, v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    if-le v1, v2, :cond_1

    .line 307
    iget v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 309
    iget v1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr p1, v1

    mul-int p1, p1, v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v3}, Lcom/ocean/playback/ViewPagerIndicator;->scrollTo(II)V

    goto :goto_0

    :cond_0
    mul-int p1, p1, v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    add-int/2addr p1, p2

    .line 313
    invoke-virtual {p0, p1, v3}, Lcom/ocean/playback/ViewPagerIndicator;->scrollTo(II)V

    .line 317
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->invalidate()V

    return-void
.end method

.method public setItemClickEvent()V
    .locals 4

    .line 244
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Lcom/ocean/playback/ViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 249
    new-instance v3, Lcom/ocean/playback/ViewPagerIndicator$2;

    invoke-direct {v3, p0, v1}, Lcom/ocean/playback/ViewPagerIndicator$2;-><init>(Lcom/ocean/playback/ViewPagerIndicator;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnMyPagerChangeListener(Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->myPagerChangeListener:Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->onPageChangeListener:Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    return-void
.end method

.method public setTabItemTitles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->removeAllViews()V

    .line 123
    iput-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabTitles:Ljava/util/List;

    .line 125
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabTitles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    invoke-direct {p0, v0}, Lcom/ocean/playback/ViewPagerIndicator;->generateTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ocean/playback/ViewPagerIndicator;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/ocean/playback/ViewPagerIndicator;->setItemClickEvent()V

    :cond_1
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 162
    new-instance v0, Lcom/ocean/playback/ViewPagerIndicator$1;

    invoke-direct {v0, p0}, Lcom/ocean/playback/ViewPagerIndicator$1;-><init>(Lcom/ocean/playback/ViewPagerIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 212
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 213
    invoke-virtual {p0, p2}, Lcom/ocean/playback/ViewPagerIndicator;->highLightTextView(I)V

    return-void
.end method

.method public setVisibleTabCount(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/ocean/playback/ViewPagerIndicator;->mTabVisibleCount:I

    return-void
.end method
