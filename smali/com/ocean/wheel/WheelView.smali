.class public Lcom/ocean/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final ADDITIONAL_ITEMS_SPACE:I = 0xa

.field private static final ADDITIONAL_ITEM_HEIGHT:I = 0xf

.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEMS_TEXT_COLOR:I = -0x1000000

.field private static final LABEL_OFFSET:I = 0x8

.field private static final MIN_DELTA_FOR_SCROLLING:I = 0x0

.field private static final PADDING:I = 0xa

.field private static final SCROLLING_DURATION:I = 0x190

.field private static final SHADOWS_COLORS:[I

.field private static final VALUE_TEXT_COLOR:I = -0x10000000


# instance fields
.field private ITEM_OFFSET:I

.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private TEXT_SIZE:I

.field private adapter:Lcom/ocean/wheel/WheelAdapter;

.field private animationHandler:Landroid/os/Handler;

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ocean/wheel/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/text/StaticLayout;

.field private itemsPaint:Landroid/text/TextPaint;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field private labelLayout:Landroid/text/StaticLayout;

.field private labelWidth:I

.field private lastScrollY:I

.field private scroller:Landroid/widget/Scroller;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ocean/wheel/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private valueLayout:Landroid/text/StaticLayout;

.field private valuePaint:Landroid/text/TextPaint;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ocean/wheel/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 162
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x24

    .line 77
    iput v0, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    .line 81
    iget v0, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/ocean/wheel/WheelView;->ITEM_OFFSET:I

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    .line 100
    iput v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 101
    iput v0, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    const/4 v1, 0x5

    .line 104
    iput v1, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    .line 107
    iput v0, p0, Lcom/ocean/wheel/WheelView;->itemHeight:I

    .line 136
    iput-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    .line 139
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ocean/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 140
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ocean/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 819
    new-instance v1, Lcom/ocean/wheel/WheelView$1;

    invoke-direct {v1, p0}, Lcom/ocean/wheel/WheelView$1;-><init>(Lcom/ocean/wheel/WheelView;)V

    iput-object v1, p0, Lcom/ocean/wheel/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 846
    iput v0, p0, Lcom/ocean/wheel/WheelView;->MESSAGE_SCROLL:I

    const/4 v0, 0x1

    .line 847
    iput v0, p0, Lcom/ocean/wheel/WheelView;->MESSAGE_JUSTIFY:I

    .line 868
    new-instance v0, Lcom/ocean/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/ocean/wheel/WheelView$2;-><init>(Lcom/ocean/wheel/WheelView;)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->animationHandler:Landroid/os/Handler;

    .line 163
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x24

    .line 77
    iput p2, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    .line 81
    iget p2, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    div-int/lit8 p2, p2, 0x14

    iput p2, p0, Lcom/ocean/wheel/WheelView;->ITEM_OFFSET:I

    const/4 p2, 0x0

    .line 96
    iput-object p2, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    const/4 p2, 0x0

    .line 97
    iput p2, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    .line 100
    iput p2, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 101
    iput p2, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    const/4 v0, 0x5

    .line 104
    iput v0, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    .line 107
    iput p2, p0, Lcom/ocean/wheel/WheelView;->itemHeight:I

    .line 136
    iput-boolean p2, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 819
    new-instance v0, Lcom/ocean/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/ocean/wheel/WheelView$1;-><init>(Lcom/ocean/wheel/WheelView;)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 846
    iput p2, p0, Lcom/ocean/wheel/WheelView;->MESSAGE_SCROLL:I

    const/4 p2, 0x1

    .line 847
    iput p2, p0, Lcom/ocean/wheel/WheelView;->MESSAGE_JUSTIFY:I

    .line 868
    new-instance p2, Lcom/ocean/wheel/WheelView$2;

    invoke-direct {p2, p0}, Lcom/ocean/wheel/WheelView$2;-><init>(Lcom/ocean/wheel/WheelView;)V

    iput-object p2, p0, Lcom/ocean/wheel/WheelView;->animationHandler:Landroid/os/Handler;

    .line 155
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x24

    .line 77
    iput p2, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    .line 81
    iget p2, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    div-int/lit8 p2, p2, 0x14

    iput p2, p0, Lcom/ocean/wheel/WheelView;->ITEM_OFFSET:I

    const/4 p2, 0x0

    .line 96
    iput-object p2, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    const/4 p2, 0x0

    .line 97
    iput p2, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    .line 100
    iput p2, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 101
    iput p2, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    const/4 p3, 0x5

    .line 104
    iput p3, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    .line 107
    iput p2, p0, Lcom/ocean/wheel/WheelView;->itemHeight:I

    .line 136
    iput-boolean p2, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    .line 139
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/ocean/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 140
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/ocean/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 819
    new-instance p3, Lcom/ocean/wheel/WheelView$1;

    invoke-direct {p3, p0}, Lcom/ocean/wheel/WheelView$1;-><init>(Lcom/ocean/wheel/WheelView;)V

    iput-object p3, p0, Lcom/ocean/wheel/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 846
    iput p2, p0, Lcom/ocean/wheel/WheelView;->MESSAGE_SCROLL:I

    const/4 p2, 0x1

    .line 847
    iput p2, p0, Lcom/ocean/wheel/WheelView;->MESSAGE_JUSTIFY:I

    .line 868
    new-instance p2, Lcom/ocean/wheel/WheelView$2;

    invoke-direct {p2, p0}, Lcom/ocean/wheel/WheelView$2;-><init>(Lcom/ocean/wheel/WheelView;)V

    iput-object p2, p0, Lcom/ocean/wheel/WheelView;->animationHandler:Landroid/os/Handler;

    .line 147
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/wheel/WheelView;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ocean/wheel/WheelView;)Landroid/widget/Scroller;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ocean/wheel/WheelView;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ocean/wheel/WheelView;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ocean/wheel/WheelView;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ocean/wheel/WheelView;->animationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ocean/wheel/WheelView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->justify()V

    return-void
.end method

.method static synthetic access$200(Lcom/ocean/wheel/WheelView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->clearMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/ocean/wheel/WheelView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->startScrolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/ocean/wheel/WheelView;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/ocean/wheel/WheelView;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/ocean/wheel/WheelView;->lastScrollY:I

    return p0
.end method

.method static synthetic access$502(Lcom/ocean/wheel/WheelView;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/ocean/wheel/WheelView;->lastScrollY:I

    return p1
.end method

.method static synthetic access$600(Lcom/ocean/wheel/WheelView;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    return p0
.end method

.method static synthetic access$700(Lcom/ocean/wheel/WheelView;)I
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getItemHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ocean/wheel/WheelView;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$900(Lcom/ocean/wheel/WheelView;)Lcom/ocean/wheel/WheelAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    return-object p0
.end method

.method private buildText(Z)Ljava/lang/String;
    .locals 4

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    iget v1, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 477
    iget v2, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    sub-int/2addr v2, v1

    :goto_0
    iget v3, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    add-int/2addr v3, v1

    if-gt v2, v3, :cond_3

    if-nez p1, :cond_0

    .line 478
    iget v3, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    if-eq v2, v3, :cond_1

    .line 479
    :cond_0
    invoke-direct {p0, v2}, Lcom/ocean/wheel/WheelView;->getTextItem(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_1
    iget v3, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    const-string v3, "\n"

    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    .line 542
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->initResourcesIfNecessary()V

    .line 546
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getMaxTextLength()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-string v2, "0"

    .line 548
    iget-object v3, p0, Lcom/ocean/wheel/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 549
    iput v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    goto :goto_0

    .line 551
    :cond_0
    iput v1, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 553
    :goto_0
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 555
    iput v1, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    .line 556
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-static {v0, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 565
    :cond_2
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    iget v3, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x14

    .line 566
    iget v3, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    if-lez v3, :cond_3

    add-int/lit8 v0, v0, 0x8

    .line 571
    :cond_3
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_4

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    add-int/lit8 p2, p1, -0x8

    add-int/lit8 p2, p2, -0x14

    if-gtz p2, :cond_5

    .line 583
    iput v1, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    iput v1, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 585
    :cond_5
    iget v0, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    if-lez v0, :cond_6

    .line 586
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    int-to-double v0, v0

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget v2, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    iget v3, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 588
    iput v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 589
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, 0x8

    .line 591
    iput p2, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    .line 595
    :cond_7
    :goto_2
    iget p2, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    if-lez p2, :cond_8

    .line 596
    iget p2, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    iget v0, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    invoke-direct {p0, p2, v0}, Lcom/ocean/wheel/WheelView;->createLayouts(II)V

    :cond_8
    return p1
.end method

.method private clearMessages()V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private createLayouts(II)V
    .locals 10

    .line 608
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_3

    .line 609
    :cond_1
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    invoke-direct {p0, v1}, Lcom/ocean/wheel/WheelView;->buildText(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ocean/wheel/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-lez p2, :cond_2

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v8, 0x0

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 616
    :goto_3
    iget-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_7

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getAdapter()Lcom/ocean/wheel/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getAdapter()Lcom/ocean/wheel/WheelAdapter;

    move-result-object v0

    iget v1, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    invoke-interface {v0, v1}, Lcom/ocean/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    :cond_4
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    :goto_4
    move-object v3, v1

    goto :goto_5

    :cond_5
    const-string v1, ""

    goto :goto_4

    :goto_5
    iget-object v4, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-lez p2, :cond_6

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_6
    move-object v6, v1

    goto :goto_7

    :cond_6
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_6

    :goto_7
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v9, 0x0

    move-object v2, v0

    move v5, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_8

    .line 622
    :cond_7
    iget-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_8

    .line 623
    iput-object v1, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_8

    .line 625
    :cond_8
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    :goto_8
    if-lez p2, :cond_b

    .line 629
    iget-object p1, p0, Lcom/ocean/wheel/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ocean/wheel/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p1

    if-le p1, p2, :cond_9

    goto :goto_9

    .line 634
    :cond_9
    iget-object p1, p0, Lcom/ocean/wheel/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_a

    .line 630
    :cond_a
    :goto_9
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v7, 0x0

    move-object v0, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/ocean/wheel/WheelView;->labelLayout:Landroid/text/StaticLayout;

    :cond_b
    :goto_a
    return-void
.end method

.method private doScroll(I)V
    .locals 4

    .line 779
    iget v0, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    .line 781
    iget p1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getItemHeight()I

    move-result v0

    div-int/2addr p1, v0

    .line 782
    iget v0, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    sub-int/2addr v0, p1

    .line 783
    iget-boolean v1, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    if-gez v0, :cond_0

    .line 786
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_1

    .line 789
    :cond_1
    iget-boolean v1, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    if-eqz v1, :cond_3

    if-gez v0, :cond_2

    .line 792
    iget p1, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    const/4 v0, 0x0

    goto :goto_1

    .line 794
    :cond_2
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 795
    iget p1, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 796
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 800
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 804
    :cond_4
    :goto_1
    iget v1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    .line 805
    iget v3, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    if-eq v0, v3, :cond_5

    .line 806
    invoke-virtual {p0, v0, v2}, Lcom/ocean/wheel/WheelView;->setCurrentItem(IZ)V

    goto :goto_2

    .line 808
    :cond_5
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->invalidate()V

    .line 812
    :goto_2
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getItemHeight()I

    move-result v0

    mul-int p1, p1, v0

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    .line 813
    iget p1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v0

    if-le p1, v0, :cond_6

    .line 814
    iget p1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    :cond_6
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 5

    .line 755
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 756
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 757
    iget-object v2, p0, Lcom/ocean/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v3, v0, v1

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getWidth()I

    move-result v4

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 758
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 2

    .line 734
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 736
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    neg-int v0, v0

    .line 737
    iget v1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 739
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 740
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 741
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 743
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5

    .line 693
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 694
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 696
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    div-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 697
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v4

    .line 696
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 698
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    const/high16 v1, -0x10000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 707
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 709
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 710
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 713
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 715
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 716
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 717
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 723
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 724
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 725
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getItemHeight()I

    move-result p1

    iget v0, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    mul-int p1, p1, v0

    iget v0, p0, Lcom/ocean/wheel/WheelView;->ITEM_OFFSET:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0xf

    .line 440
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemHeight()I
    .locals 3

    .line 525
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 526
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemHeight:I

    return v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ocean/wheel/WheelView;->itemHeight:I

    .line 529
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemHeight:I

    return v0

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getMaxTextLength()I
    .locals 7

    .line 497
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getAdapter()Lcom/ocean/wheel/WheelAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 502
    :cond_0
    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getMaximumLength()I

    move-result v2

    if-lez v2, :cond_1

    return v2

    :cond_1
    const/4 v2, 0x0

    .line 508
    iget v3, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    div-int/lit8 v3, v3, 0x2

    .line 509
    iget v4, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 510
    :goto_0
    iget v4, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    iget v5, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 511
    invoke-interface {v0, v3}, Lcom/ocean/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    .line 512
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    :cond_2
    move-object v2, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 517
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_5
    return v1
.end method

.method private getTextItem(I)Ljava/lang/String;
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_2

    .line 455
    :cond_1
    iget-boolean v2, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :goto_0
    if-gez p1, :cond_3

    add-int/2addr p1, v0

    goto :goto_0

    .line 463
    :cond_3
    rem-int/2addr p1, v0

    .line 464
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/ocean/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2

    .line 171
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/ocean/wheel/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    .line 172
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 174
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsPaint:Landroid/text/TextPaint;

    .line 398
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 402
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    .line 405
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 406
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->valuePaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const v2, -0x3f3f40

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3

    .line 414
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/ocean/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_4

    .line 418
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/ocean/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_4
    const v0, 0x7f060093

    .line 421
    invoke-virtual {p0, v0}, Lcom/ocean/wheel/WheelView;->setBackgroundResource(I)V

    return-void
.end method

.method private invalidateLayouts()V
    .locals 1

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 386
    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->valueLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    return-void
.end method

.method private justify()V
    .locals 10

    .line 898
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 902
    iput v0, p0, Lcom/ocean/wheel/WheelView;->lastScrollY:I

    .line 903
    iget v1, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    .line 904
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getItemHeight()I

    move-result v2

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 905
    iget v4, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    iget-object v5, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v5}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    if-lez v4, :cond_1

    goto :goto_0

    .line 906
    :goto_1
    iget-boolean v5, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    int-to-float v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    if-gez v1, :cond_4

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_2

    :cond_4
    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    :cond_5
    :goto_2
    move v8, v1

    .line 912
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_6

    .line 913
    iget-object v4, p0, Lcom/ocean/wheel/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x190

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 914
    invoke-direct {p0, v3}, Lcom/ocean/wheel/WheelView;->setNextMessage(I)V

    goto :goto_3

    .line 916
    :cond_6
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->finishScrolling()V

    :goto_3
    return-void
.end method

.method private setNextMessage(I)V
    .locals 1

    .line 855
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->clearMessages()V

    .line 856
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startScrolling()V
    .locals 1

    .line 924
    iget-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 925
    iput-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    .line 926
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->notifyScrollingListenersAboutStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/ocean/wheel/OnWheelChangedListener;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/ocean/wheel/OnWheelScrollListener;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method finishScrolling()V
    .locals 1

    .line 934
    iget-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->notifyScrollingListenersAboutEnd()V

    const/4 v0, 0x0

    .line 936
    iput-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isScrollingPerformed:Z

    .line 938
    :cond_0
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->invalidateLayouts()V

    .line 939
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public getAdapter()Lcom/ocean/wheel/WheelAdapter;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    return v0
.end method

.method public getCurrentItemValue()Ljava/lang/String;
    .locals 2

    .line 747
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getAdapter()Lcom/ocean/wheel/WheelAdapter;

    move-result-object v0

    check-cast v0, Lcom/ocean/wheel/StrericWheelAdapter;

    invoke-virtual {v0}, Lcom/ocean/wheel/StrericWheelAdapter;->getStrContents()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/OnWheelChangedListener;

    .line 270
    invoke-interface {v1, p0, p1, p2}, Lcom/ocean/wheel/OnWheelChangedListener;->onChanged(Lcom/ocean/wheel/WheelView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/OnWheelScrollListener;

    .line 304
    invoke-interface {v1, p0}, Lcom/ocean/wheel/OnWheelScrollListener;->onScrollingFinished(Lcom/ocean/wheel/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/wheel/OnWheelScrollListener;

    .line 295
    invoke-interface {v1, p0}, Lcom/ocean/wheel/OnWheelScrollListener;->onScrollingStarted(Lcom/ocean/wheel/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 664
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 666
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    .line 667
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/ocean/wheel/WheelView;->calculateLayoutWidth(II)I

    goto :goto_0

    .line 670
    :cond_0
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    iget v1, p0, Lcom/ocean/wheel/WheelView;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lcom/ocean/wheel/WheelView;->createLayouts(II)V

    .line 674
    :cond_1
    :goto_0
    iget v0, p0, Lcom/ocean/wheel/WheelView;->itemsWidth:I

    if-lez v0, :cond_2

    .line 676
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41200000    # 10.0f

    .line 678
    iget v1, p0, Lcom/ocean/wheel/WheelView;->ITEM_OFFSET:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 679
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 680
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->drawValue(Landroid/graphics/Canvas;)V

    .line 681
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 684
    :cond_2
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 641
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 642
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 643
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 644
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 646
    invoke-direct {p0, p1, v0}, Lcom/ocean/wheel/WheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v0}, Lcom/ocean/wheel/WheelView;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 655
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 659
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ocean/wheel/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 763
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getAdapter()Lcom/ocean/wheel/WheelAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->justify()V

    :cond_1
    return v1
.end method

.method public removeChangingListener(Lcom/ocean/wheel/OnWheelChangedListener;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/ocean/wheel/OnWheelScrollListener;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 6

    .line 949
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 951
    iget v0, p0, Lcom/ocean/wheel/WheelView;->scrollingOffset:I

    iput v0, p0, Lcom/ocean/wheel/WheelView;->lastScrollY:I

    .line 952
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->getItemHeight()I

    move-result v0

    mul-int p1, p1, v0

    .line 954
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->scroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/ocean/wheel/WheelView;->lastScrollY:I

    iget v1, p0, Lcom/ocean/wheel/WheelView;->lastScrollY:I

    sub-int v4, p1, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x0

    .line 955
    invoke-direct {p0, p1}, Lcom/ocean/wheel/WheelView;->setNextMessage(I)V

    .line 957
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->startScrolling()V

    return-void
.end method

.method public setAdapter(Lcom/ocean/wheel/WheelAdapter;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    .line 191
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->invalidateLayouts()V

    .line 192
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/ocean/wheel/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 328
    :cond_1
    iget-boolean v0, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    if-eqz v0, :cond_6

    :goto_0
    if-gez p1, :cond_2

    .line 330
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->adapter:Lcom/ocean/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/ocean/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 337
    :cond_3
    iget v0, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    if-eq p1, v0, :cond_5

    if-eqz p2, :cond_4

    .line 339
    iget p2, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    sub-int/2addr p1, p2

    const/16 p2, 0x190

    invoke-virtual {p0, p1, p2}, Lcom/ocean/wheel/WheelView;->scroll(II)V

    goto :goto_1

    .line 341
    :cond_4
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->invalidateLayouts()V

    .line 343
    iget p2, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    .line 344
    iput p1, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    .line 346
    iget p1, p0, Lcom/ocean/wheel/WheelView;->currentItem:I

    invoke-virtual {p0, p2, p1}, Lcom/ocean/wheel/WheelView;->notifyChangingListeners(II)V

    .line 348
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->invalidate()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/ocean/wheel/WheelView;->isCyclic:Z

    .line 377
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->invalidate()V

    .line 378
    invoke-direct {p0}, Lcom/ocean/wheel/WheelView;->invalidateLayouts()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 201
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/ocean/wheel/WheelView;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/ocean/wheel/WheelView;->label:Ljava/lang/String;

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/ocean/wheel/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 243
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p1, 0x24

    .line 962
    iput p1, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x48

    .line 966
    iput p1, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x36

    .line 964
    iput p1, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    .line 967
    :goto_1
    iget p1, p0, Lcom/ocean/wheel/WheelView;->TEXT_SIZE:I

    div-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/ocean/wheel/WheelView;->ITEM_OFFSET:I

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/ocean/wheel/WheelView;->visibleItems:I

    .line 221
    invoke-virtual {p0}, Lcom/ocean/wheel/WheelView;->invalidate()V

    return-void
.end method
