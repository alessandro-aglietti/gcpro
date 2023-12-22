.class Lcom/ocean/playback/PlaybackActivity$MyMainHandler;
.super Landroid/os/Handler;
.source "PlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/PlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyMainHandler"
.end annotation


# instance fields
.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ocean/playback/PlaybackActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ocean/playback/PlaybackActivity;)V
    .locals 1

    .line 400
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 401
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/PlaybackActivity;

    .line 408
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p1, 0x7f0b000e

    .line 444
    invoke-virtual {v0, p1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 428
    :pswitch_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0075

    .line 429
    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b0005

    .line 430
    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b00a7

    .line 431
    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/playback/PlaybackActivity$MyMainHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler$2;-><init>(Lcom/ocean/playback/PlaybackActivity$MyMainHandler;Lcom/ocean/playback/PlaybackActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b0092

    .line 435
    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$MyMainHandler$1;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$MyMainHandler$1;-><init>(Lcom/ocean/playback/PlaybackActivity$MyMainHandler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 420
    :pswitch_2
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 421
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    sget-object v1, Lcom/ocean/playback/PlaybackActivity;->deviceFileList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/ocean/playback/DeviceFragment;->setAlbumData(Ljava/util/ArrayList;)V

    .line 422
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$300(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/DeviceFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment;->scroll2Top()V

    goto :goto_0

    .line 411
    :pswitch_3
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$700(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/LocalFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 412
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$700(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/LocalFragment;

    move-result-object p1

    sget-object v2, Lcom/ocean/playback/PlaybackActivity;->localFileList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ocean/playback/PlaybackActivity;->access$800()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/ocean/playback/LocalFragment;->setAlbumData(Ljava/util/ArrayList;Z)V

    .line 413
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$700(Lcom/ocean/playback/PlaybackActivity;)Lcom/ocean/playback/LocalFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/playback/LocalFragment;->scroll2Top()V

    .line 414
    invoke-static {v1}, Lcom/ocean/playback/PlaybackActivity;->access$802(Z)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
