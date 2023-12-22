.class Lcom/ocean/playback/PlaybackActivity$15;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/ocean/playback/ViewPagerIndicator$MyPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity;->initPlaybackMiddleView()V
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

    .line 1049
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChange(I)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$1400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1055
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1056
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    const v0, 0x10005

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1068
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ocean/playback/PlaybackActivity;->access$1002(Lcom/ocean/playback/PlaybackActivity;Z)Z

    goto :goto_0

    .line 1070
    :cond_2
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ocean/playback/PlaybackActivity;->access$1002(Lcom/ocean/playback/PlaybackActivity;Z)Z

    .line 1072
    :goto_0
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1700(Lcom/ocean/playback/PlaybackActivity;)V

    .line 1073
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1000(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1075
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1076
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$15;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ocean/playback/DeviceFragment;->startLoadingView(Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    const v0, 0x10004

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1082
    :cond_3
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1083
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    const v0, 0x10003

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void
.end method
