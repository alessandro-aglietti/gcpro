.class Lcom/ocean/gamecamerapro2/MainActivity$26;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->system_initTimer()V
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

    .line 1586
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1589
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1591
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/ocean/gamecamerapro2/MainActivity;->ui_showWaitProcessDialog(ZLjava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_0

    .line 1593
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_1

    .line 1595
    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2900()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1596
    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ocean/gamecamerapro2/MainActivity;->access$2900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Sec)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1598
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 1600
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_0

    .line 1603
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    const v3, 0x7f0b0020

    if-ne v0, v2, :cond_3

    .line 1605
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v2, v3}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1607
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    const/4 v4, 0x4

    if-ne v0, v2, :cond_4

    .line 1609
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0, v3}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1611
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$200(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/widget/CircularProgressButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ocean/widget/CircularProgressButton;->setVisibility(I)V

    .line 1612
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1, v4}, Lcom/ocean/gamecamerapro2/MainActivity;->access$602(Lcom/ocean/gamecamerapro2/MainActivity;I)I

    .line 1613
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$700(Lcom/ocean/gamecamerapro2/MainActivity;)V

    goto :goto_0

    .line 1615
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 1617
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3200(Lcom/ocean/gamecamerapro2/MainActivity;)V

    goto :goto_0

    .line 1619
    :cond_5
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v4, :cond_6

    .line 1621
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$26;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$3300(Lcom/ocean/gamecamerapro2/MainActivity;I)V

    :cond_6
    :goto_0
    return-void
.end method
