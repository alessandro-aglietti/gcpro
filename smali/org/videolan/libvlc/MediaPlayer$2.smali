.class Lorg/videolan/libvlc/MediaPlayer$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/MediaPlayer;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$2;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 492
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v0, 0x0

    .line 496
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 498
    :cond_2
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$2;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    const-string v0, "android.media.extra.ENCODINGS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-static {p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->access$500(Lorg/videolan/libvlc/MediaPlayer;[I)J

    move-result-wide p1

    .line 499
    :goto_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$2;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    const-string v1, "stereo"

    invoke-static {v0, p1, p2, v1}, Lorg/videolan/libvlc/MediaPlayer;->access$600(Lorg/videolan/libvlc/MediaPlayer;JLjava/lang/String;)V

    :cond_3
    return-void
.end method
