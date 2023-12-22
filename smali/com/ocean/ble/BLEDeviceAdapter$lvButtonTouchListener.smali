.class Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;
.super Ljava/lang/Object;
.source "BLEDeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/ble/BLEDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "lvButtonTouchListener"
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lcom/ocean/ble/BLEDeviceAdapter;


# direct methods
.method constructor <init>(Lcom/ocean/ble/BLEDeviceAdapter;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p2, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->pos:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 188
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->access$000(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDevName2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 190
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    iput-boolean v1, v0, Lcom/ocean/ble/BLEDeviceAdapter;->isEditName:Z

    .line 193
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->access$100(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

    move-result-object v0

    iget v2, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->pos:I

    invoke-interface {v0, v2}, Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;->cellDidRename(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->access$000(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    iput-boolean v1, p1, Lcom/ocean/ble/BLEDeviceAdapter;->isDisconnect:Z

    .line 202
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {p1}, Lcom/ocean/ble/BLEDeviceAdapter;->access$100(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

    move-result-object p1

    iget p2, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->pos:I

    invoke-interface {p1, p2}, Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;->cellDidDisconnect(I)V

    return v1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->access$000(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 211
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    iget p2, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->pos:I

    iput p2, p1, Lcom/ocean/ble/BLEDeviceAdapter;->nSoundPos:I

    return v1

    .line 214
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 216
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 217
    new-instance p2, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener$1;

    invoke-direct {p2, p0}, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener$1;-><init>(Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, p2, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return v1

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->access$000(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivEraseFlash:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 232
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {p1}, Lcom/ocean/ble/BLEDeviceAdapter;->access$100(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

    move-result-object p1

    iget p2, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->pos:I

    invoke-interface {p1, p2}, Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;->cellDidSetGpio2(I)V

    return v1

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {v0}, Lcom/ocean/ble/BLEDeviceAdapter;->access$000(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDiskInfo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    .line 241
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-static {p1}, Lcom/ocean/ble/BLEDeviceAdapter;->access$100(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

    move-result-object p1

    iget p2, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->pos:I

    invoke-interface {p1, p2}, Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;->cellDidSetGpio3(I)V

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
