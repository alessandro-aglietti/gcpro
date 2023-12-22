.class Lcom/ocean/playback/PlaybackActivity$17;
.super Ljava/util/TimerTask;
.source "PlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity;->system_initTimer()V
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

    .line 1255
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$17;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$17;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$2000(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$17;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$1400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$17;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$2108(Lcom/ocean/playback/PlaybackActivity;)I

    .line 1261
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$17;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$2100(Lcom/ocean/playback/PlaybackActivity;)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$17;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ocean/playback/PlaybackActivity;->access$2102(Lcom/ocean/playback/PlaybackActivity;I)I

    .line 1263
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$17;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$2200(Lcom/ocean/playback/PlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
