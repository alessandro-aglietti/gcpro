.class public abstract Lcom/liulishuo/filedownloader/event/IDownloadEvent;
.super Ljava/lang/Object;
.source "IDownloadEvent.java"


# instance fields
.field public callback:Ljava/lang/Runnable;

.field protected final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "do not handle ORDER any more, %s"

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, p2, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    return-object v0
.end method
