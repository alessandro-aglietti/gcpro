.class Lcom/ocean/gamecamerapro2/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;
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

    .line 745
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 748
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 751
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$500(Lcom/ocean/gamecamerapro2/SettingsActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$800(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 752
    iget-object v0, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 754
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 755
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    if-gez p2, :cond_2

    .line 758
    iget-object v0, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    return-void

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget v0, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->firstradiobutton:I

    if-nez v0, :cond_3

    .line 763
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const/4 p2, 0x1

    iput p2, p1, Lcom/ocean/gamecamerapro2/SettingsActivity;->firstradiobutton:I

    return-void

    .line 767
    :cond_3
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 769
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$002(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 770
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$4;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$100(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ocean/cmdrequest/CameraRequest;->sendCmd(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
