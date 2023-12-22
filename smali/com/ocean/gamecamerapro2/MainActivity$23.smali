.class Lcom/ocean/gamecamerapro2/MainActivity$23;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/MainActivity;
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

    .line 1443
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$23;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1445
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$23;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1408(Lcom/ocean/gamecamerapro2/MainActivity;)I

    .line 1446
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$23;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1500(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/ble/BeepManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/ble/BeepManager;->playBeepSoundAndVibrate()V

    .line 1447
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$23;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1400(Lcom/ocean/gamecamerapro2/MainActivity;)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1448
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$23;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1600(Lcom/ocean/gamecamerapro2/MainActivity;)V

    :cond_0
    return-void
.end method
