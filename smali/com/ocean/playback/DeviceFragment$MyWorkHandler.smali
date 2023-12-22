.class public Lcom/ocean/playback/DeviceFragment$MyWorkHandler;
.super Landroid/os/Handler;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/DeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyWorkHandler"
.end annotation


# instance fields
.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ocean/playback/DeviceFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/ocean/playback/DeviceFragment;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 472
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$MyWorkHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 478
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$MyWorkHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/DeviceFragment;

    .line 479
    iget p1, p1, Landroid/os/Message;->what:I

    const v1, 0x10001

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    .line 504
    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 505
    iget-object v2, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 508
    iget-object v4, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    :cond_1
    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$1100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ocean/cmdrequest/CameraRequest;->delCameraFile(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    iget-object v2, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 513
    iget-object v2, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 514
    iget-object v2, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 515
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "[DeviceFragment]:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MyWorkHandler() - remove list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_2
    iget-object v4, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 521
    :cond_3
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "[DeviceFragment]:"

    const-string v3, "MyWorkHandler() - delete part success."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 525
    :cond_4
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "[DeviceFragment]:"

    const-string v3, "MyWorkHandler() - delete part failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 528
    iget-object p1, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 529
    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$1200(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$MyMainHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ocean/playback/DeviceFragment$MyMainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 532
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[DeviceFragment]:"

    const-string v1, "MyWorkHandler() - delete error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
