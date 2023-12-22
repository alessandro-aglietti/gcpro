.class Lcom/ocean/gamecamerapro2/SettingsActivity$60;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->system_setCamName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$inputServer:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .line 1664
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iput-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->val$inputServer:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1667
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->val$inputServer:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1668
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2500(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1669
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2602(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1671
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 1672
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    const/4 p2, -0x3

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->val$cmd:Ljava/lang/String;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    :cond_0
    sget-object p1, Lcom/ocean/gamecamerapro2/SettingsActivity;->_instance:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const p2, 0x7f0b009b

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1676
    :goto_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$60;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2400(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    return-void
.end method
