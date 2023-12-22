.class public Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;
.super Landroid/os/Handler;
.source "CamFilePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/CamFilePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyMainHandler"
.end annotation


# instance fields
.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ocean/playback/CamFilePreviewActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ocean/playback/CamFilePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/ocean/playback/CamFilePreviewActivity;Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    .line 1121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1122
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1127
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/CamFilePreviewActivity;

    .line 1128
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 1131
    :cond_0
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$400(Lcom/ocean/playback/CamFilePreviewActivity;)V

    .line 1132
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2500(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1133
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2602(Lcom/ocean/playback/CamFilePreviewActivity;I)I

    .line 1135
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2600(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1137
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1402(Lcom/ocean/playback/CamFilePreviewActivity;J)J

    .line 1138
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1, v2, v3}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1502(Lcom/ocean/playback/CamFilePreviewActivity;J)J

    .line 1139
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1600(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1140
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$400(Lcom/ocean/playback/CamFilePreviewActivity;)V

    .line 1141
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2400(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->isStart()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1144
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 1145
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 1146
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    invoke-static {p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1148
    :cond_1
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    const v2, 0x7f0b00a4

    invoke-virtual {p1, v2}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1151
    :cond_2
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2500(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result p1

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2600(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 1152
    invoke-static {v0, v1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2502(Lcom/ocean/playback/CamFilePreviewActivity;I)I

    .line 1154
    :cond_3
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2600(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result p1

    if-lez p1, :cond_4

    .line 1155
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2500(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p1}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2702(Lcom/ocean/playback/CamFilePreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1157
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2800(Lcom/ocean/playback/CamFilePreviewActivity;)V

    :cond_4
    :goto_0
    return-void
.end method
