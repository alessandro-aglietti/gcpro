.class Lcom/ocean/util/CrashLog$1;
.super Ljava/lang/Thread;
.source "CrashLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/util/CrashLog;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/util/CrashLog;


# direct methods
.method constructor <init>(Lcom/ocean/util/CrashLog;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ocean/util/CrashLog$1;->this$0:Lcom/ocean/util/CrashLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 113
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
