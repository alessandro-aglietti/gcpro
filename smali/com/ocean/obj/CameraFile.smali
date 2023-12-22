.class public Lcom/ocean/obj/CameraFile;
.super Ljava/lang/Object;
.source "CameraFile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/ocean/obj/CameraFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x14cd0e5fL


# instance fields
.field private downloadProgress:I

.field private fileCatch:Ljava/lang/String;

.field private fileDownloadPath:Ljava/lang/String;

.field private fileDuration:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileSize:Ljava/lang/String;

.field private fileTime:Ljava/lang/String;

.field private fileTimeCode:Ljava/lang/String;

.field private thumbDownloaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/ocean/obj/CameraFile;->downloadProgress:I

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/ocean/obj/CameraFile;->thumbDownloaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/ocean/obj/CameraFile;->downloadProgress:I

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/ocean/obj/CameraFile;->thumbDownloaded:Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/ocean/obj/CameraFile;->setFileName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ocean/obj/CameraFile;)I
    .locals 1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ocean/obj/CameraFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p0, p1}, Lcom/ocean/obj/CameraFile;->compareTo(Lcom/ocean/obj/CameraFile;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 160
    instance-of v0, p1, Lcom/ocean/obj/CameraFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    check-cast p1, Lcom/ocean/obj/CameraFile;

    .line 164
    invoke-virtual {p0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getDownloadProgress()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/ocean/obj/CameraFile;->downloadProgress:I

    return v0
.end method

.method public getFileCatch()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileCatch:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDownloadPath()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDuration()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getFileTime()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileTimeCode()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ocean/obj/CameraFile;->fileTimeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbDownloaded()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/ocean/obj/CameraFile;->thumbDownloaded:Z

    return v0
.end method

.method public setDownloadProgress(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/ocean/obj/CameraFile;->downloadProgress:I

    return-void
.end method

.method public setFileCatch(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->fileCatch:Ljava/lang/String;

    return-void
.end method

.method public setFileDownloadPath(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->fileDownloadPath:Ljava/lang/String;

    return-void
.end method

.method public setFileDuration(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->fileDuration:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->fileSize:Ljava/lang/String;

    return-void
.end method

.method public setFileTime(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->fileTime:Ljava/lang/String;

    return-void
.end method

.method public setFileTimeCode(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ocean/obj/CameraFile;->fileTimeCode:Ljava/lang/String;

    return-void
.end method

.method public setThumbDownloaded(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/ocean/obj/CameraFile;->thumbDownloaded:Z

    return-void
.end method
