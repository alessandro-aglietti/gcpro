.class public Lcom/ocean/playback/LocalFragment$MyWorkHandler;
.super Landroid/os/Handler;
.source "LocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/LocalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyWorkHandler"
.end annotation


# instance fields
.field public mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ocean/playback/LocalFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/ocean/playback/LocalFragment;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 423
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$MyWorkHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$MyWorkHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/LocalFragment;

    .line 430
    iget p1, p1, Landroid/os/Message;->what:I

    const v1, 0x10001

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 433
    :cond_0
    invoke-virtual {v0}, Lcom/ocean/playback/LocalFragment;->getPickFileList()Ljava/util/ArrayList;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    .line 437
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 441
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$500(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 442
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$500(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;->localDidDeleteFile(Lcom/ocean/obj/CameraFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 446
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 452
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 453
    iput-boolean p1, v0, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    .line 454
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$600(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$MyMainHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ocean/playback/LocalFragment$MyMainHandler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method
