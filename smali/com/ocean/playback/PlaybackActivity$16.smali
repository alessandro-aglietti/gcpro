.class Lcom/ocean/playback/PlaybackActivity$16;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity;->local_GetFiles()V
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

    .line 1192
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$16;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1195
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$16;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$1800(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/util/LocalFilesBrower;

    move-result-object v0

    const-string v1, "MOVIE"

    sget-object v2, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/ocean/util/LocalFilesBrower;->getLocalFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1196
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$16;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$1800(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/util/LocalFilesBrower;

    move-result-object v0

    const-string v1, "PHOTO"

    sget-object v2, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1, v2}, Lcom/ocean/util/LocalFilesBrower;->getLocalFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1197
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$16;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localPhotoList:Ljava/util/ArrayList;

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->localFileList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1200
    :cond_0
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->localVideoList:Ljava/util/ArrayList;

    sput-object v0, Lcom/ocean/playback/PlaybackActivity;->localFileList:Ljava/util/ArrayList;

    .line 1202
    :goto_0
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$16;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$1900(Lcom/ocean/playback/PlaybackActivity;)V

    return-void
.end method
