.class Lcom/ocean/playback/PlaybackActivity$14;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity;->initPlaybackBottomBar()V
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

    .line 959
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 963
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$000(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    const v0, 0x10003

    if-nez p1, :cond_1

    .line 965
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 966
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    .line 970
    :cond_1
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-eqz p1, :cond_3

    .line 972
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 973
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    .line 977
    :cond_3
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$500(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 979
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 980
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1200()Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_4
    return-void

    .line 984
    :cond_5
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v1}, Lcom/ocean/playback/PlaybackActivity;->access$400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/ocean/playback/PlaybackActivity;->access$402(Lcom/ocean/playback/PlaybackActivity;Z)Z

    .line 985
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1500(Lcom/ocean/playback/PlaybackActivity;)V

    .line 986
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1000(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 988
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 989
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$14;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ocean/playback/DeviceFragment;->startLoadingView(Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    const v0, 0x10004

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 995
    :cond_6
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 996
    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$1600()Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_0
    return-void
.end method
