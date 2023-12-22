.class Lcom/ocean/playback/PlaybackActivity$11;
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

    .line 910
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$11;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 913
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$11;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$1000(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 914
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$11;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment;->doDeleteClick()V

    goto :goto_0

    .line 916
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$11;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$700(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/LocalFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/playback/LocalFragment;->doDeleteClick()V

    :goto_0
    return-void
.end method
