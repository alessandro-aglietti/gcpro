.class Lcom/ocean/gamecamerapro2/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->cellDidDisconnect(I)V
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

    .line 1248
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$18;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1252
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$18;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/ocean/ble/BLEDeviceAdapter;->isDisconnect:Z

    return-void
.end method
