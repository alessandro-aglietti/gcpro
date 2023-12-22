.class Lorg/videolan/libvlc/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lorg/videolan/libvlc/AWindow$SurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
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

    .line 425
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfacesCreated(Lorg/videolan/libvlc/AWindow;)V
    .locals 3

    .line 430
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    monitor-enter p1

    .line 431
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$200(Lorg/videolan/libvlc/MediaPlayer;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$300(Lorg/videolan/libvlc/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$400(Lorg/videolan/libvlc/MediaPlayer;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 435
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 437
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 439
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrackEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 435
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfacesDestroyed(Lorg/videolan/libvlc/AWindow;)V
    .locals 2

    .line 445
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    monitor-enter p1

    .line 446
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$400(Lorg/videolan/libvlc/MediaPlayer;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 448
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 450
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrackEnabled(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 448
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
