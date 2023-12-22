.class Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;
.super Landroid/os/Handler;
.source "PlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/PlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWorkHandler"
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
.method public constructor <init>(Landroid/os/Looper;Lcom/ocean/playback/PlaybackActivity;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 463
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/PlaybackActivity;

    .line 470
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 499
    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0075

    .line 500
    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b0098

    .line 501
    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b00a7

    .line 502
    invoke-virtual {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler$1;

    invoke-direct {v1, p0}, Lcom/ocean/playback/PlaybackActivity$MyWorkHandler$1;-><init>(Lcom/ocean/playback/PlaybackActivity$MyWorkHandler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 486
    :pswitch_1
    invoke-static {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->access$002(Lcom/ocean/playback/PlaybackActivity;Z)Z

    .line 487
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$900(Lcom/ocean/playback/PlaybackActivity;)V

    goto :goto_0

    .line 493
    :pswitch_2
    invoke-static {v0, v1}, Lcom/ocean/playback/PlaybackActivity;->access$002(Lcom/ocean/playback/PlaybackActivity;Z)Z

    .line 494
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$100(Lcom/ocean/playback/PlaybackActivity;)V

    goto :goto_0

    .line 477
    :pswitch_3
    sget-object p1, Lcom/ocean/playback/PlaybackActivity;->devicePhotoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 478
    sget-object p1, Lcom/ocean/playback/PlaybackActivity;->deviceVideoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 480
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$100(Lcom/ocean/playback/PlaybackActivity;)V

    .line 481
    invoke-static {v0}, Lcom/ocean/playback/PlaybackActivity;->access$900(Lcom/ocean/playback/PlaybackActivity;)V

    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
