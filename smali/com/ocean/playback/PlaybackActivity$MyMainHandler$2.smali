.class Lcom/ocean/playback/PlaybackActivity$MyMainHandler$2;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

.field final synthetic val$main:Lcom/ocean/playback/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/ocean/playback/PlaybackActivity$MyMainHandler;Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$MyMainHandler$2;->this$0:Lcom/ocean/playback/PlaybackActivity$MyMainHandler;

    iput-object p2, p0, Lcom/ocean/playback/PlaybackActivity$MyMainHandler$2;->val$main:Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 433
    iget-object p1, p0, Lcom/ocean/playback/PlaybackActivity$MyMainHandler$2;->val$main:Lcom/ocean/playback/PlaybackActivity;

    invoke-static {p1}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment;->doPauseDownload()V

    return-void
.end method
