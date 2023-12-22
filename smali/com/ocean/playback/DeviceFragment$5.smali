.class Lcom/ocean/playback/DeviceFragment$5;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 350
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$5;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 354
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$5;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-boolean p1, p1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    return p4

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$5;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1, p2, p3}, Lcom/ocean/playback/DeviceFragment;->access$800(Lcom/ocean/playback/DeviceFragment;Landroid/view/View;I)V

    return p4
.end method
