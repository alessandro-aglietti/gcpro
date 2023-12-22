.class Lcom/ocean/playback/PlaybackActivity$8;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "PlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity;->initDatas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/ocean/playback/PlaybackActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$8;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$8;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$600(Lcom/ocean/playback/PlaybackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$8;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$600(Lcom/ocean/playback/PlaybackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
