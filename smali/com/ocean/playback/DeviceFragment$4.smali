.class Lcom/ocean/playback/DeviceFragment$4;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/DeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/ocean/playback/DeviceFragment;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$4;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 335
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$4;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-boolean p1, p1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-eqz p1, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$4;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p1, p1, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$4;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1, p2, p3}, Lcom/ocean/playback/DeviceFragment;->access$800(Lcom/ocean/playback/DeviceFragment;Landroid/view/View;I)V

    return-void

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$4;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$900(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 345
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$4;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$900(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;->camDidFilePlaySucc(I)V

    :cond_2
    return-void
.end method
