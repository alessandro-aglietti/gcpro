.class public Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;
.super Landroid/os/Handler;
.source "CamFilePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/CamFilePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDeleteHandler"
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
.method public constructor <init>(Lcom/ocean/playback/CamFilePreviewActivity;Landroid/os/Looper;Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    .line 1172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1173
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/playback/CamFilePreviewActivity;

    .line 1180
    iget p1, p1, Landroid/os/Message;->what:I

    const v1, 0x10001

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1184
    :cond_0
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1185
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;->this$0:Lcom/ocean/playback/CamFilePreviewActivity;

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1189
    :cond_1
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2500(Lcom/ocean/playback/CamFilePreviewActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p1}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 1190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$900(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ocean/cmdrequest/CameraRequest;->delCameraFile(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1195
    invoke-static {v0}, Lcom/ocean/playback/CamFilePreviewActivity;->access$2900(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method
