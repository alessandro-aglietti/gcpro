.class Lcom/ocean/playback/PlaybackActivity$6;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/ocean/playback/LocalFragment$OnScrollStopListener;


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
.method constructor <init>(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$6;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didStopScrolling(Z)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$6;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0, p1}, Lcom/ocean/playback/PlaybackActivity;->access$002(Lcom/ocean/playback/PlaybackActivity;Z)Z

    return-void
.end method
