.class Lcom/ocean/playback/PlaybackActivity$5;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;


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

    .line 289
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public camDidFilePlaySucc(I)V
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    iget-object v2, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ocean/playback/PlaybackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 296
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "Preview Url"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isVideoFiles"

    iget-object v4, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {v4}, Lcom/ocean/playback/PlaybackActivity;->access$400(Lcom/ocean/playback/PlaybackActivity;)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Preview Index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    const-class v1, Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-virtual {v0, p1}, Lcom/ocean/playback/PlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 304
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$5;->this$0:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1, v3}, Lcom/ocean/playback/PlaybackActivity;->access$502(Lcom/ocean/playback/PlaybackActivity;Z)Z

    return-void
.end method
