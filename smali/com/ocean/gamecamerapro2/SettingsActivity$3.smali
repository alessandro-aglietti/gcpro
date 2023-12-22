.class Lcom/ocean/gamecamerapro2/SettingsActivity$3;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->CreatMessageHander()V
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

    .line 618
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 621
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 669
    :pswitch_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1500(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V

    goto/16 :goto_0

    .line 666
    :pswitch_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1500(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->show()V

    goto/16 :goto_0

    .line 660
    :pswitch_2
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getItemsStatus()V

    .line 661
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 643
    :pswitch_3
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1500(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V

    .line 644
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 646
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->finish()V

    .line 648
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    const/4 v0, 0x1

    iput v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    goto/16 :goto_0

    .line 655
    :pswitch_4
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1500(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V

    .line 656
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 652
    :pswitch_5
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1400(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 639
    :pswitch_6
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 636
    :pswitch_7
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1600(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    goto :goto_0

    .line 632
    :pswitch_8
    sget-object p1, Lcom/ocean/gamecamerapro2/SettingsActivity;->_instance:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 623
    :pswitch_9
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$1500(Lcom/ocean/gamecamerapro2/SettingsActivity;)Lcom/ocean/widget/MyLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/MyLoadingDialog;->dismiss()V

    .line 624
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$3;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
