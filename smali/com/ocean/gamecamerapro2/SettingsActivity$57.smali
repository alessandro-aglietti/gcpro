.class Lcom/ocean/gamecamerapro2/SettingsActivity$57;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_set901x(I)V
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

    .line 1622
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iput-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->val$item:Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1626
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ocean/wheel/WheelView;->getCurrentItem()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2000(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/wheel/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ocean/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2302(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 1628
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 1629
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->val$item:Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$57;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2300(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p2, v2, v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
