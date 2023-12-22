.class Lcom/ocean/gamecamerapro2/MainActivity$19;
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

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;I)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$19;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iput p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$19;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1242
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$19;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$19;->val$pos:I

    invoke-static {p1, p2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1300(Lcom/ocean/gamecamerapro2/MainActivity;I)V

    .line 1243
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$19;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->adapterBluetooth:Lcom/ocean/ble/BLEDeviceAdapter;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/ocean/ble/BLEDeviceAdapter;->isDisconnect:Z

    return-void
.end method
