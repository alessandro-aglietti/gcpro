.class Lcom/ocean/playback/PlaybackActivity$4;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;


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

    .line 261
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$4;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public camDidDownloadError()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$4;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$200(Lcom/ocean/playback/PlaybackActivity;)V

    .line 282
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$4;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->camDidSetModeFail(I)V

    return-void
.end method

.method public camDidDownloadFileSucc(Lcom/ocean/obj/CameraFile;)V
    .locals 3

    .line 265
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v2, v2, Lcom/ocean/gamecamerapro2/MyApplication;->strDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ocean/obj/CameraFile;->getFileTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 268
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$4;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-virtual {v0, p1}, Lcom/ocean/playback/PlaybackActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public camDidDownloadFinished()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$4;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$100(Lcom/ocean/playback/PlaybackActivity;)V

    return-void
.end method
