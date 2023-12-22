.class Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$1;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;I)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$1;->this$1:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    iput p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 788
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$1;->this$1:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    iget-object p1, p1, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p1, p1, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    iget p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$1;->val$position:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ocean/obj/CameraFile;->setThumbDownloaded(Z)V

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
