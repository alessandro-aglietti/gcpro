.class Lcom/ocean/ble/BLEDeviceAdapter$lvButtonListener;
.super Ljava/lang/Object;
.source "BLEDeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/ble/BLEDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "lvButtonListener"
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lcom/ocean/ble/BLEDeviceAdapter;


# direct methods
.method constructor <init>(Lcom/ocean/ble/BLEDeviceAdapter;I)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonListener;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 251
    iput p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonListener;->pos:I

    .line 254
    iput p2, p0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonListener;->pos:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method
