.class Lcom/ocean/gamecamerapro2/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/MainActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget p2, p2, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget p2, p2, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/ble/BLEDeviceObject;

    iget p1, p1, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p2, p2, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 214
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget p2, p2, Lcom/ocean/gamecamerapro2/MainActivity;->nDeviceDetailPos:I

    invoke-static {p1, p2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$000(Lcom/ocean/gamecamerapro2/MainActivity;I)V

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$2;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
