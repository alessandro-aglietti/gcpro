.class public Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;
.super Ljava/lang/Object;
.source "DownloadServiceNotConnectedHelper.java"


# static fields
.field private static final CAUSE:Ljava/lang/String; = ", but the download service isn\'t connected yet."

.field private static final TIPS:Ljava/lang/String; = "\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your code invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllTaskData()Z
    .locals 3

    const-string v0, "request clear all tasks data in the database"

    const/4 v1, 0x0

    .line 102
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static clearTaskData(I)Z
    .locals 3

    const-string v0, "request clear the task[%d] data in the database"

    const/4 v1, 0x1

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static getSofar(I)J
    .locals 3

    const-string v0, "request get the downloaded so far byte for the task[%d] in the download service"

    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getStatus(I)B
    .locals 3

    const-string v0, "request get the status for the task[%d] in the download service"

    const/4 v1, 0x1

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static getTotal(I)J
    .locals 3

    const-string v0, "request get the total byte for the task[%d] in the download service"

    const/4 v1, 0x1

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "request check the task([%s], [%s]) is downloading in the download service"

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static isIdle()Z
    .locals 2

    const-string v0, "request check the download service is idle"

    const/4 v1, 0x0

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 107
    const-class v0, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", but the download service isn\'t connected yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your code invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static pause(I)Z
    .locals 3

    const-string v0, "request pause the task[%d] in the download service"

    const/4 v1, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static pauseAllTasks()V
    .locals 2

    const-string v0, "request pause all tasks in the download service"

    const/4 v1, 0x0

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setMaxNetworkThreadCount(I)Z
    .locals 3

    const-string v0, "request set the max network thread count[%d] in the download service"

    const/4 v1, 0x1

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "request start the task([%s], [%s], [%B]) in the download service"

    const/4 v1, 0x3

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 43
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    .line 42
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static startForeground(ILandroid/app/Notification;)V
    .locals 3

    const-string v0, "request set the download service as the foreground service([%d],[%s]),"

    const/4 v1, 0x2

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 82
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static stopForeground(Z)V
    .locals 3

    const-string v0, "request cancel the foreground status[%B] for the download service"

    const/4 v1, 0x1

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 87
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
