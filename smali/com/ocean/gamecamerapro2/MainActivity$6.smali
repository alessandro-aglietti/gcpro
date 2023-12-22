.class Lcom/ocean/gamecamerapro2/MainActivity$6;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->initViews()V
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

    .line 291
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$6;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$6;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    new-instance v1, Lcom/ocean/gamecamerapro2/MainActivity$6$1;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/MainActivity$6$1;-><init>(Lcom/ocean/gamecamerapro2/MainActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
