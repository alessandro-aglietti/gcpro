.class final Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->interceptBlockCompleteMessage(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$messenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;->val$messenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;->val$messenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->handoverMessage()V

    return-void
.end method
