.class Lcom/ocean/gamecamerapro2/SettingsActivity$53;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_set9002(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

.field final synthetic val$item:Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iput-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->val$item:Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1473
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2000(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ocean/wheel/WheelView;->getCurrentItem()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/wheel/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ocean/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1902(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 1475
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "9001"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    iget-object p2, p2, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const v0, 0x7f0b001d

    const v1, 0x7f0b0012

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1900(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result p2

    const/4 v3, 0x5

    if-ge p2, v3, :cond_0

    .line 1476
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2, v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1902(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 1477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {v3, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1900(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1479
    :cond_0
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object p2

    const-string v3, "9001"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    iget-object p2, p2, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1900(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result p2

    const/16 v3, 0xa

    if-ge p2, v3, :cond_1

    .line 1480
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2, v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1902(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 1481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {v3, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1900(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_2

    .line 1485
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1486
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1487
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1488
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    .line 1489
    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ocean/gamecamerapro2/SettingsActivity$53$1;

    invoke-direct {v1, p0}, Lcom/ocean/gamecamerapro2/SettingsActivity$53$1;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity$53;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1495
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1497
    :cond_2
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 1498
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->val$item:Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$53;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1900(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method