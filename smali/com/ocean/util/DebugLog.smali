.class public Lcom/ocean/util/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static final MSG_FORMAT:Ljava/lang/String; = "%s: %s - %s"

.field private static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss"

.field private static sBufferedWriter:Ljava/io/BufferedWriter;

.field private static sCurrentPriority:I

.field private static sFileSizeLimit:I

.field private static sLogFilePath:Ljava/lang/String;

.field private static sTheLogFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFileSize()Z
    .locals 6

    const/4 v0, 0x0

    .line 260
    :try_start_0
    sget-object v1, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    sget v3, Lcom/ocean/util/DebugLog;->sFileSizeLimit:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 262
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ocean/util/DebugLog;->sLogFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 268
    :cond_0
    sget-object v2, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 270
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/ocean/util/DebugLog;->sLogFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    .line 271
    sget-object v1, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DebugLog"

    .line 278
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static close()V
    .locals 2

    .line 89
    :try_start_0
    sget-object v0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 92
    sget-object v0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 93
    sget-object v0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DebugLog"

    .line 98
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static createLogDirectory()V
    .locals 2

    .line 31
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->strDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x3

    .line 128
    invoke-static {v0, p0, p1}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x3

    .line 135
    invoke-static {v0, p0, p1, p2}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static delete()V
    .locals 1

    .line 104
    invoke-static {}, Lcom/ocean/util/DebugLog;->close()V

    .line 106
    sget-object v0, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x6

    .line 177
    invoke-static {v0, p0, p1}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x6

    .line 184
    invoke-static {v0, p0, p1, p2}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static formatMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s - %s"

    const/4 v1, 0x3

    .line 235
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/ocean/util/DebugLog;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCurrentTimeStamp()Ljava/lang/String;
    .locals 3

    .line 244
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 245
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DebugLog"

    .line 249
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 191
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x4

    .line 142
    invoke-static {v0, p0, p1}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x4

    .line 149
    invoke-static {v0, p0, p1, p2}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static open(Ljava/lang/String;II)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Debug_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ocean/util/DebugLog;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".txt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ocean/util/DebugLog;->sLogFilePath:Ljava/lang/String;

    .line 43
    sput p1, Lcom/ocean/util/DebugLog;->sCurrentPriority:I

    .line 44
    sput p2, Lcom/ocean/util/DebugLog;->sFileSizeLimit:I

    .line 46
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MyApplication;->strDownloadPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/ocean/util/DebugLog;->sLogFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    .line 56
    sget-object p0, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 60
    :try_start_1
    sget-object p0, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "DebugLog"

    .line 64
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    :goto_1
    invoke-static {}, Lcom/ocean/util/DebugLog;->checkFileSize()Z

    .line 72
    :try_start_2
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/FileWriter;

    sget-object p2, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string p1, "DebugLog"

    .line 76
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static setCurrentPriority(I)V
    .locals 0

    .line 82
    sput p0, Lcom/ocean/util/DebugLog;->sCurrentPriority:I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    .line 114
    invoke-static {v0, p0, p1}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x2

    .line 121
    invoke-static {v0, p0, p1, p2}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x5

    .line 156
    invoke-static {v0, p0, p1}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x5

    .line 163
    invoke-static {v0, p0, p1, p2}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    const-string v0, ""

    const/4 v1, 0x5

    .line 170
    invoke-static {v1, p0, v0, p1}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static writeToFile(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, p1, p2, v0}, Lcom/ocean/util/DebugLog;->writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static writeToFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 201
    sget v0, Lcom/ocean/util/DebugLog;->sCurrentPriority:I

    if-lt p0, v0, :cond_2

    sget-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    if-eqz p0, :cond_2

    .line 205
    :try_start_0
    invoke-static {}, Lcom/ocean/util/DebugLog;->checkFileSize()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 207
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/ocean/util/DebugLog;->sTheLogFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    .line 210
    :cond_0
    sget-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-static {p1, p2}, Lcom/ocean/util/DebugLog;->formatMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 211
    sget-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    if-eqz p3, :cond_1

    .line 215
    sget-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 216
    sget-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 219
    :cond_1
    sget-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DebugLog"

    .line 223
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2
    :goto_0
    sget-object p0, Lcom/ocean/util/DebugLog;->sBufferedWriter:Ljava/io/BufferedWriter;

    if-nez p0, :cond_3

    const-string p0, "DebugLog"

    const-string p1, "You have to call DebugLog.open(...) before starting to log"

    .line 229
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
