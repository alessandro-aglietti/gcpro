.class Lcom/ocean/gamecamerapro2/MainActivity$24;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->system_startVibrator()V
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

    .line 1457
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$24;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1460
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 1461
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1462
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$24;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1700(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
