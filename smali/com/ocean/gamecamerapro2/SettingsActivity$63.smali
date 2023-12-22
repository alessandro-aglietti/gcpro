.class Lcom/ocean/gamecamerapro2/SettingsActivity$63;
.super Ljava/util/TimerTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->system_initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 0

    .line 2139
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$63;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2142
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$63;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2800(Lcom/ocean/gamecamerapro2/SettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$63;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$008(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    .line 2145
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$63;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$000(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$63;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 2147
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$63;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2900(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
