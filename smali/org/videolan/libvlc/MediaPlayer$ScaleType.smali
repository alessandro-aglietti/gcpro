.class public final enum Lorg/videolan/libvlc/MediaPlayer$ScaleType;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/videolan/libvlc/MediaPlayer$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_16_9:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_4_3:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_FILL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_FIT_SCREEN:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_ORIGINAL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 396
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    const-string v1, "SURFACE_BEST_FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 397
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    const-string v1, "SURFACE_FIT_SCREEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 398
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    const-string v1, "SURFACE_FILL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FILL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 399
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    const-string v1, "SURFACE_16_9"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_16_9:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 400
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    const-string v1, "SURFACE_4_3"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_4_3:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 401
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    const-string v1, "SURFACE_ORIGINAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    const/4 v0, 0x6

    .line 395
    new-array v0, v0, [Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FILL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_16_9:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_4_3:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    aput-object v1, v0, v7

    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->$VALUES:[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$ScaleType;
    .locals 1

    .line 395
    const-class v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    return-object p0
.end method

.method public static values()[Lorg/videolan/libvlc/MediaPlayer$ScaleType;
    .locals 1

    .line 395
    sget-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->$VALUES:[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    invoke-virtual {v0}, [Lorg/videolan/libvlc/MediaPlayer$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    return-object v0
.end method
