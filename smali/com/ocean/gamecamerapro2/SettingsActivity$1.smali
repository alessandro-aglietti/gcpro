.class Lcom/ocean/gamecamerapro2/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->system_setCmd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$1;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iput-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$1;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 283
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$1;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 284
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$1;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$1;->val$cmd:Ljava/lang/String;

    const-string v0, "1"

    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2, v0}, Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
