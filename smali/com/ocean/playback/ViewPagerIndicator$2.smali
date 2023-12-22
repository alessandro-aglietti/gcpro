.class Lcom/ocean/playback/ViewPagerIndicator$2;
.super Ljava/lang/Object;
.source "ViewPagerIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/ViewPagerIndicator;->setItemClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/ViewPagerIndicator;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/ocean/playback/ViewPagerIndicator;I)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$2;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    iput p2, p0, Lcom/ocean/playback/ViewPagerIndicator$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$2;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-virtual {p1}, Lcom/ocean/playback/ViewPagerIndicator;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$2;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {p1}, Lcom/ocean/playback/ViewPagerIndicator;->access$000(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$2;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {p1}, Lcom/ocean/playback/ViewPagerIndicator;->access$000(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;->onPageChange(I)V

    :cond_0
    return-void

    .line 262
    :cond_1
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$2;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    iget-object p1, p1, Lcom/ocean/playback/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/ocean/playback/ViewPagerIndicator$2;->val$pos:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
