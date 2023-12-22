.class Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener$1;
.super Ljava/util/TimerTask;
.source "BLEDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;


# direct methods
.method constructor <init>(Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener$1;->this$1:Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener$1;->this$1:Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ocean/ble/BLEDeviceAdapter;->nSoundPos:I

    return-void
.end method
