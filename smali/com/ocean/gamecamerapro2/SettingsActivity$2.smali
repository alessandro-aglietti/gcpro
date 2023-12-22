.class Lcom/ocean/gamecamerapro2/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 559
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 562
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 567
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 571
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    .line 572
    iget-boolean p2, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->isCanSelected:Z

    if-eqz p2, :cond_c

    iget p1, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto/16 :goto_2

    .line 575
    :cond_2
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1, p3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$802(Lcom/ocean/gamecamerapro2/SettingsActivity;I)I

    .line 576
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$800(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$500(Lcom/ocean/gamecamerapro2/SettingsActivity;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_b

    .line 577
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$500(Lcom/ocean/gamecamerapro2/SettingsActivity;)[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p4}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$800(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result p4

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 578
    iget-object p2, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 p4, 0x2332

    if-ne p2, p4, :cond_3

    .line 580
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object p3, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    iget-object p4, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object p4, p4, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strCameraName:Ljava/lang/String;

    invoke-static {p2, p3, p1, p4}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$900(Lcom/ocean/gamecamerapro2/SettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 p4, 0xbc3

    if-ne p2, p4, :cond_4

    .line 582
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object p3, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->system_setCmd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 p4, 0xbc2

    if-ne p2, p4, :cond_5

    .line 584
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object p3, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->system_setCmd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 p1, 0x2330

    if-ne p2, p1, :cond_6

    .line 586
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1, p3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1000(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V

    goto :goto_1

    :cond_6
    const/16 p1, 0x232a

    if-ne p2, p1, :cond_7

    .line 588
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1, p3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1100(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V

    goto :goto_1

    :cond_7
    const/16 p1, 0x232c

    if-ne p2, p1, :cond_8

    .line 590
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1, p3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1200(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V

    goto :goto_1

    :cond_8
    const/16 p1, 0x2335

    if-eq p2, p1, :cond_a

    const/16 p1, 0x2336

    if-eq p2, p1, :cond_a

    const/16 p1, 0x2337

    if-eq p2, p1, :cond_a

    const/16 p1, 0x2338

    if-ne p2, p1, :cond_9

    goto :goto_0

    .line 594
    :cond_9
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->handleShowCmdParamers()V

    goto :goto_1

    .line 592
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1, p3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1300(Lcom/ocean/gamecamerapro2/SettingsActivity;I)V

    .line 596
    :goto_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$2;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1400(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->notifyDataSetChanged()V

    :cond_b
    return-void

    :cond_c
    :goto_2
    return-void
.end method
