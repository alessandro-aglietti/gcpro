.class Lcom/ocean/gamecamerapro2/PreviewActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/PreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 663
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    .line 667
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 668
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1400(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 670
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 672
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 674
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f060096

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 675
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 677
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f060097

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 680
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f060098

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 683
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1500(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f060099

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 684
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$1;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_0
    return-void
.end method
