.class Lcom/ocean/playback/ViewPagerIndicator$1;
.super Ljava/lang/Object;
.source "ViewPagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/ViewPagerIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/ocean/playback/ViewPagerIndicator;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {v0}, Lcom/ocean/playback/ViewPagerIndicator;->access$200(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {v0}, Lcom/ocean/playback/ViewPagerIndicator;->access$200(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/ocean/playback/ViewPagerIndicator;->scroll(IF)V

    .line 194
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {v0}, Lcom/ocean/playback/ViewPagerIndicator;->access$200(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {v0}, Lcom/ocean/playback/ViewPagerIndicator;->access$200(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-virtual {v0}, Lcom/ocean/playback/ViewPagerIndicator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {p1}, Lcom/ocean/playback/ViewPagerIndicator;->access$000(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {p1}, Lcom/ocean/playback/ViewPagerIndicator;->access$000(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;->onPageChange(I)V

    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {v0}, Lcom/ocean/playback/ViewPagerIndicator;->access$100(Lcom/ocean/playback/ViewPagerIndicator;)V

    .line 177
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/ocean/playback/ViewPagerIndicator;->highLightTextView(I)V

    .line 179
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {v0}, Lcom/ocean/playback/ViewPagerIndicator;->access$200(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/ocean/playback/ViewPagerIndicator$1;->this$0:Lcom/ocean/playback/ViewPagerIndicator;

    invoke-static {v0}, Lcom/ocean/playback/ViewPagerIndicator;->access$200(Lcom/ocean/playback/ViewPagerIndicator;)Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ocean/playback/ViewPagerIndicator$PageChangeListener;->onPageSelected(I)V

    :cond_2
    return-void
.end method
