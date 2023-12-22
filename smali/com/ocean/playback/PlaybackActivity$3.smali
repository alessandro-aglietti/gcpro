.class Lcom/ocean/playback/PlaybackActivity$3;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/ocean/playback/DeviceFragment$OnCamDeleteFileListener;


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

    .line 246
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$3;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public camDidDeleteAllSucc()V
    .locals 1

    .line 250
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public camDidDeleteFileSucc(I)V
    .locals 1

    .line 256
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
