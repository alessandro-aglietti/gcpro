.class Lcom/ocean/playback/DeviceFragment$1;
.super Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/DeviceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/ocean/playback/DeviceFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 7

    .line 180
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadListener() - completed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-boolean v0, v0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 184
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 186
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DeviceFragment]:"

    const-string v3, "downloadListener() - download finish"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0, v1}, Lcom/ocean/obj/CameraFile;->setDownloadProgress(I)V

    .line 188
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0, v3, v1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;I)V

    .line 190
    new-instance v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v3, v3, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 192
    iget-object v3, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v3, v3, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    move-result-object v0

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-interface {v0, v3}, Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;->camDidDownloadFileSucc(Lcom/ocean/obj/CameraFile;)V

    goto :goto_0

    .line 201
    :cond_4
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "[DeviceFragment]:"

    const-string v3, "downloadListener() - download error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0, v3, v2}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;Z)V

    .line 206
    :cond_6
    :goto_0
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "[DeviceFragment]:"

    const-string v3, "downloadListener() -  check task."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 209
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "[DeviceFragment]:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadListener() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_9
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v3

    if-ltz v3, :cond_8

    .line 211
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iput-boolean v2, p1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    .line 212
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object p1

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-boolean v0, v0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 213
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "[DeviceFragment]:"

    const-string v0, "downloadListener() - task error."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 218
    :cond_b
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    .line 219
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v3, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-boolean v3, v3, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0, p1, v1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;I)V

    .line 224
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;->camDidDownloadFinished()V

    .line 232
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$300(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$ReflashListListener;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 233
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$300(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$ReflashListListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ocean/playback/DeviceFragment$ReflashListListener;->Reflash()V

    :cond_c
    return-void
.end method

.method protected error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;Z)V

    const-string v0, "[DeviceFragment]:"

    .line 240
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 244
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p2, p2, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 247
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p2, p2, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p1, p1, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 250
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    .line 251
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object p1

    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-boolean p2, p2, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 252
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p1, p1, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 253
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p1, p1, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 255
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;->camDidDownloadError()V

    :cond_2
    return-void
.end method

.method protected paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
    .locals 0

    return-void
.end method

.method protected pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
    .locals 0

    .line 159
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p2, p2, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;Z)V

    return-void
.end method

.method protected progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
    .locals 0

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 166
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p3, p2}, Lcom/ocean/obj/CameraFile;->setDownloadProgress(I)V

    .line 167
    iget-object p3, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-boolean p3, p3, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-eqz p3, :cond_0

    .line 168
    iget-object p3, p0, Lcom/ocean/playback/DeviceFragment$1;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p3, p3, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p3, p1, p2}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;I)V

    :cond_0
    return-void
.end method

.method protected warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    return-void
.end method
