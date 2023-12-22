.class Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;
.super Landroid/os/Handler;
.source "PreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/PreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CamReqHandler"
.end annotation


# instance fields
.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ocean/gamecamerapro2/PreviewActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;


# direct methods
.method public constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity;Landroid/os/Looper;Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    .line 598
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 599
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/gamecamerapro2/PreviewActivity;

    .line 607
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 616
    :pswitch_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1302(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 617
    sget-boolean p1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz p1, :cond_0

    sput-boolean v1, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const v2, 0x7f0b0098

    invoke-virtual {p1, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 619
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 621
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput v1, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    .line 623
    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->finish()V

    goto :goto_0

    .line 610
    :pswitch_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1100(Lcom/ocean/gamecamerapro2/PreviewActivity;)V

    .line 611
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$CamReqHandler;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$600(Lcom/ocean/gamecamerapro2/PreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1200(Lcom/ocean/gamecamerapro2/PreviewActivity;Lcom/ocean/cmdrequest/CameraRequest;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
