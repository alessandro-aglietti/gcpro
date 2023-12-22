.class Lcom/ocean/gamecamerapro2/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->camDidGetModelIDFail()V
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

    .line 704
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 707
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1002(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z

    .line 708
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v0, -0x1

    iput v0, p1, Lcom/ocean/gamecamerapro2/MainActivity;->G_nDevMode:I

    .line 709
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 710
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Mcu Name"

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v2, v2, Lcom/ocean/gamecamerapro2/MainActivity;->G_strMcuName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 711
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Project ID"

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v2, v2, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 712
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Project Ver"

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v2, v2, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectVer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Build Time"

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v2, v2, Lcom/ocean/gamecamerapro2/MainActivity;->G_strBuildTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 714
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OTG"

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v2, v2, Lcom/ocean/gamecamerapro2/MainActivity;->G_strOTG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 715
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Camera Mode"

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget v2, v2, Lcom/ocean/gamecamerapro2/MainActivity;->G_nDevMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 716
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isEnterFromLogin"

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1000(Lcom/ocean/gamecamerapro2/MainActivity;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 717
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$13;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const-class v2, Lcom/ocean/playback/PlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
