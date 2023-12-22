.class public Lcom/ocean/playback/LocalFragment$MyMainHandler;
.super Landroid/os/Handler;
.source "LocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/LocalFragment;
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
            "Lcom/ocean/playback/LocalFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ocean/playback/LocalFragment;)V
    .locals 1

    .line 397
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 398
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ocean/playback/LocalFragment$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/LocalFragment;

    .line 404
    iget p1, p1, Landroid/os/Message;->what:I

    const v1, 0x10001

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$400(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
