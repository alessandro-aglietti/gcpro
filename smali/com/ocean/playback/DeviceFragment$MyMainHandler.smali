.class public Lcom/ocean/playback/DeviceFragment$MyMainHandler;
.super Landroid/os/Handler;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/DeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyMainHandler"
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
.method public constructor <init>(Lcom/ocean/playback/DeviceFragment;)V
    .locals 1

    .line 432
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ocean/playback/DeviceFragment$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/DeviceFragment;

    .line 439
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 453
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_0

    .line 454
    iget-object p1, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataPickMark(Z)V

    goto :goto_1

    .line 456
    :cond_0
    iget-object p1, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataPickMark(Z)V

    goto :goto_1

    .line 447
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/ocean/obj/CameraFile;

    if-nez v1, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ocean/obj/CameraFile;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;I)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 442
    :pswitch_2
    iget-object p1, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
