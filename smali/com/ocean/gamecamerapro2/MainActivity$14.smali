.class Lcom/ocean/gamecamerapro2/MainActivity$14;
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

    .line 696
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$14;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 699
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->isLoginSetWiFi:Z

    .line 700
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$14;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
