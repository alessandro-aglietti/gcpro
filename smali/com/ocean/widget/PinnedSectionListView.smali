.class public Lcom/ocean/widget/PinnedSectionListView;
.super Landroid/widget/ListView;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/widget/PinnedSectionListView$PinnedSection;,
        Lcom/ocean/widget/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 66
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 89
    new-instance p1, Lcom/ocean/widget/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/ocean/widget/PinnedSectionListView$1;-><init>(Lcom/ocean/widget/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 132
    new-instance p1, Lcom/ocean/widget/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/ocean/widget/PinnedSectionListView$2;-><init>(Lcom/ocean/widget/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 145
    invoke-direct {p0}, Lcom/ocean/widget/PinnedSectionListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 66
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 89
    new-instance p1, Lcom/ocean/widget/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/ocean/widget/PinnedSectionListView$1;-><init>(Lcom/ocean/widget/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 132
    new-instance p1, Lcom/ocean/widget/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/ocean/widget/PinnedSectionListView$2;-><init>(Lcom/ocean/widget/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 150
    invoke-direct {p0}, Lcom/ocean/widget/PinnedSectionListView;->initView()V

    return-void
.end method

.method private clearTouchTarget()V
    .locals 2

    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 495
    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 497
    iput-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/ocean/widget/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchSlop:I

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, v0}, Lcom/ocean/widget/PinnedSectionListView;->initShadow(Z)V

    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 1

    .line 518
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 519
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 521
    :cond_0
    check-cast p0, Lcom/ocean/widget/PinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {p0, p1}, Lcom/ocean/widget/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result p0

    return p0
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 485
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 487
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTranslateY:I

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 488
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 489
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 490
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private performPinnedItemClick()Z
    .locals 8

    .line 502
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget v3, v3, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v4, v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 507
    invoke-virtual {p0, v1}, Lcom/ocean/widget/PinnedSectionListView;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz v4, :cond_1

    .line 509
    invoke-virtual {v4, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget v5, v1, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->position:I

    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-wide v6, v1, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->id:J

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method createPinnedShadow(I)V
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mRecycleSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mRecycleSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    invoke-direct {v0}, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;-><init>()V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v1, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :cond_1
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 206
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_3

    move v2, v5

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getListPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 215
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 216
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 217
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 218
    iput v4, p0, Lcom/ocean/widget/PinnedSectionListView;->mTranslateY:I

    .line 221
    iput-object v1, v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 222
    iput p1, v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->position:I

    .line 223
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->id:J

    .line 226
    iput-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    return-void
.end method

.method destroyPinnedShadow()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iput-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mRecycleSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 389
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 391
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v0

    .line 395
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v1

    .line 396
    iget-object v2, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 401
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowHeight:I

    iget v5, p0, Lcom/ocean/widget/PinnedSectionListView;->mSectionsDistanceY:I

    .line 402
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 403
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v0, v0

    .line 405
    iget v2, p0, Lcom/ocean/widget/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v0, v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ocean/widget/PinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 408
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v1, v1, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 410
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 411
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 412
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    .line 409
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 413
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 416
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 429
    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 432
    invoke-direct {p0, v3, v0, v1}, Lcom/ocean/widget/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 436
    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 437
    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 440
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 443
    :cond_0
    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 444
    iget-object v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-direct {p0, v3, v0, v1}, Lcom/ocean/widget/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 449
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 450
    invoke-direct {p0}, Lcom/ocean/widget/PinnedSectionListView;->performPinnedItemClick()Z

    .line 451
    invoke-direct {p0}, Lcom/ocean/widget/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 454
    invoke-direct {p0}, Lcom/ocean/widget/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 457
    iget-object v2, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 460
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 461
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 462
    iget-object v2, p0, Lcom/ocean/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 463
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 466
    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 467
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 468
    invoke-direct {p0}, Lcom/ocean/widget/PinnedSectionListView;->clearTouchTarget()V

    :cond_4
    :goto_0
    return v0

    .line 477
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method ensureShadowForPosition(III)V
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->destroyPinnedShadow()V

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget v0, v0, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->position:I

    if-eq v0, p1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_2

    .line 251
    invoke-virtual {p0, p1}, Lcom/ocean/widget/PinnedSectionListView;->createPinnedShadow(I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    sub-int v0, p1, p2

    sub-int/2addr p3, v0

    .line 257
    invoke-virtual {p0, p1, p3}, Lcom/ocean/widget/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result p1

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-le p1, p3, :cond_4

    sub-int/2addr p1, p2

    .line 260
    invoke-virtual {p0, p1}, Lcom/ocean/widget/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 261
    iget-object p2, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object p2, p2, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getPaddingTop()I

    move-result p3

    add-int/2addr p2, p3

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mSectionsDistanceY:I

    .line 263
    iget p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez p1, :cond_3

    .line 265
    iget p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mSectionsDistanceY:I

    iput p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 268
    :cond_3
    iput v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 272
    :cond_4
    iput v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mTranslateY:I

    const p1, 0x7fffffff

    .line 273
    iput p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mSectionsDistanceY:I

    :cond_5
    :goto_0
    return-void
.end method

.method findCurrentSectionPosition(I)I
    .locals 4

    .line 298
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-lt p1, v1, :cond_0

    return v2

    .line 302
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 304
    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    .line 305
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 306
    invoke-interface {v1, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 307
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 308
    invoke-static {v0, v3}, Lcom/ocean/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    :goto_0
    if-ltz p1, :cond_3

    .line 315
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 316
    invoke-static {v0, v1}, Lcom/ocean/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method findFirstVisibleSectionPosition(II)I
    .locals 5

    .line 280
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 283
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v1, :cond_0

    return v3

    :cond_0
    add-int v2, p1, p2

    if-lt v2, v1, :cond_1

    sub-int p2, v1, p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    add-int v2, p1, v1

    .line 291
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 292
    invoke-static {v0, v4}, Lcom/ocean/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public initShadow(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    .line 174
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    .line 175
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "#50a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "#00a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    invoke-direct {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p1, 0x41000000    # 8.0f

    .line 176
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowHeight:I

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 181
    iput v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 377
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 378
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    .line 379
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    .line 380
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object p1, p1, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eq p4, p1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->recreatePinnedShadow()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 344
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    new-instance p1, Lcom/ocean/widget/PinnedSectionListView$3;

    invoke-direct {p1, p0}, Lcom/ocean/widget/PinnedSectionListView$3;-><init>(Lcom/ocean/widget/PinnedSectionListView;)V

    invoke-virtual {p0, p1}, Lcom/ocean/widget/PinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method recreatePinnedShadow()V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 323
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getFirstVisiblePosition()I

    move-result v0

    .line 326
    invoke-virtual {p0, v0}, Lcom/ocean/widget/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 328
    invoke-virtual {p0, v1, v0, v2}, Lcom/ocean/widget/PinnedSectionListView;->ensureShadowForPosition(III)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/ocean/widget/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 357
    instance-of v0, p1, Lcom/ocean/widget/PinnedSectionListView$PinnedSectionListAdapter;

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Does your adapter handle at least two types of views in getViewTypeCount() method: items and sections?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Does your adapter implement PinnedSectionListAdapter?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 366
    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    if-eq v0, p1, :cond_5

    .line 370
    invoke-virtual {p0}, Lcom/ocean/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 372
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/ocean/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    .line 336
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    :goto_0
    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 4

    .line 162
    invoke-virtual {p0, p1}, Lcom/ocean/widget/PinnedSectionListView;->initShadow(Z)V

    .line 163
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/ocean/widget/PinnedSectionListView;->mPinnedSection:Lcom/ocean/widget/PinnedSectionListView$PinnedSection;

    iget-object p1, p1, Lcom/ocean/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v3, p0, Lcom/ocean/widget/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ocean/widget/PinnedSectionListView;->invalidate(IIII)V

    :cond_0
    return-void
.end method
