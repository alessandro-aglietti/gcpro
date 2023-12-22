.class public Lcom/ocean/lib/LibInstance;
.super Ljava/lang/Object;
.source "LibInstance.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Makoto/util/LibInstance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized testCompatibleCPU(Landroid/content/Context;)Z
    .locals 0

    const-class p0, Lcom/ocean/lib/LibInstance;

    monitor-enter p0

    .line 19
    monitor-exit p0

    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized updateLibVlcSettings()V
    .locals 1

    const-class v0, Lcom/ocean/lib/LibInstance;

    monitor-enter v0

    .line 26
    monitor-exit v0

    return-void
.end method
