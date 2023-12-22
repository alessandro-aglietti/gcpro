.class Lcom/ocean/playback/PlaybackActivity$10;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity;->initPlaybackTopBar()V
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

    .line 880
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$10;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 883
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$10;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1000(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 885
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$10;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1100(Lcom/ocean/playback/PlaybackActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 886
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$10;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-wide/16 v2, 0xc8

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$10;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 888
    :cond_1
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 889
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    const v0, 0x10004

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    .line 893
    :cond_3
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$10;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment;->doDownloadClick()V

    const/4 p1, 0x1

    .line 894
    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$802(Z)Z

    :cond_4
    return-void
.end method
