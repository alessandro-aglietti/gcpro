.class public final enum Lcom/ocean/util/StateTag$CameraVersion;
.super Ljava/lang/Enum;
.source "StateTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/util/StateTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ocean/util/StateTag$CameraVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ocean/util/StateTag$CameraVersion;

.field public static final enum _660:Lcom/ocean/util/StateTag$CameraVersion;

.field public static final enum _M20:Lcom/ocean/util/StateTag$CameraVersion;

.field public static final enum _SJ5000WIFI:Lcom/ocean/util/StateTag$CameraVersion;

.field public static final enum _V1:Lcom/ocean/util/StateTag$CameraVersion;

.field public static final enum _X2000:Lcom/ocean/util/StateTag$CameraVersion;

.field public static final enum _other:Lcom/ocean/util/StateTag$CameraVersion;


# instance fields
.field private ManaName:Ljava/lang/String;

.field private OriginInfo:Ljava/lang/String;

.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 61
    new-instance v0, Lcom/ocean/util/StateTag$CameraVersion;

    const-string v1, "_660"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ocean/util/StateTag$CameraVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ocean/util/StateTag$CameraVersion;->_660:Lcom/ocean/util/StateTag$CameraVersion;

    new-instance v0, Lcom/ocean/util/StateTag$CameraVersion;

    const-string v1, "_M20"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/ocean/util/StateTag$CameraVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ocean/util/StateTag$CameraVersion;->_M20:Lcom/ocean/util/StateTag$CameraVersion;

    new-instance v0, Lcom/ocean/util/StateTag$CameraVersion;

    const-string v1, "_other"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/ocean/util/StateTag$CameraVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ocean/util/StateTag$CameraVersion;->_other:Lcom/ocean/util/StateTag$CameraVersion;

    new-instance v0, Lcom/ocean/util/StateTag$CameraVersion;

    const-string v1, "_SJ5000WIFI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/ocean/util/StateTag$CameraVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ocean/util/StateTag$CameraVersion;->_SJ5000WIFI:Lcom/ocean/util/StateTag$CameraVersion;

    new-instance v0, Lcom/ocean/util/StateTag$CameraVersion;

    const-string v1, "_X2000"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/ocean/util/StateTag$CameraVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ocean/util/StateTag$CameraVersion;->_X2000:Lcom/ocean/util/StateTag$CameraVersion;

    new-instance v0, Lcom/ocean/util/StateTag$CameraVersion;

    const-string v1, "_V1"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/ocean/util/StateTag$CameraVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ocean/util/StateTag$CameraVersion;->_V1:Lcom/ocean/util/StateTag$CameraVersion;

    .line 60
    new-array v0, v8, [Lcom/ocean/util/StateTag$CameraVersion;

    sget-object v1, Lcom/ocean/util/StateTag$CameraVersion;->_660:Lcom/ocean/util/StateTag$CameraVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ocean/util/StateTag$CameraVersion;->_M20:Lcom/ocean/util/StateTag$CameraVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ocean/util/StateTag$CameraVersion;->_other:Lcom/ocean/util/StateTag$CameraVersion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ocean/util/StateTag$CameraVersion;->_SJ5000WIFI:Lcom/ocean/util/StateTag$CameraVersion;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ocean/util/StateTag$CameraVersion;->_X2000:Lcom/ocean/util/StateTag$CameraVersion;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ocean/util/StateTag$CameraVersion;->_V1:Lcom/ocean/util/StateTag$CameraVersion;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ocean/util/StateTag$CameraVersion;->$VALUES:[Lcom/ocean/util/StateTag$CameraVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "no"

    .line 68
    iput-object p1, p0, Lcom/ocean/util/StateTag$CameraVersion;->ManaName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/ocean/util/StateTag$CameraVersion;->OriginInfo:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/ocean/util/StateTag$CameraVersion;->nCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ocean/util/StateTag$CameraVersion;
    .locals 1

    .line 60
    const-class v0, Lcom/ocean/util/StateTag$CameraVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ocean/util/StateTag$CameraVersion;

    return-object p0
.end method

.method public static values()[Lcom/ocean/util/StateTag$CameraVersion;
    .locals 1

    .line 60
    sget-object v0, Lcom/ocean/util/StateTag$CameraVersion;->$VALUES:[Lcom/ocean/util/StateTag$CameraVersion;

    invoke-virtual {v0}, [Lcom/ocean/util/StateTag$CameraVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ocean/util/StateTag$CameraVersion;

    return-object v0
.end method


# virtual methods
.method public getManaName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->ManaName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginInfo()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->OriginInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPicDPI(I)Ljava/lang/String;
    .locals 2

    .line 166
    iget v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->nCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "1.3M"

    return-object p1

    :pswitch_1
    const-string p1, "VGA"

    return-object p1

    :pswitch_2
    const-string p1, "2MHD"

    return-object p1

    :pswitch_3
    const-string p1, "3M"

    return-object p1

    :pswitch_4
    const-string p1, "5M"

    return-object p1

    :pswitch_5
    const-string p1, "8M"

    return-object p1

    :pswitch_6
    const-string p1, "10M"

    return-object p1

    :pswitch_7
    const-string p1, "12M"

    return-object p1

    :pswitch_8
    const-string p1, "14M"

    return-object p1

    .line 189
    :cond_0
    iget v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->nCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_9
    const-string p1, "1.3M"

    return-object p1

    :pswitch_a
    const-string p1, "VGA"

    return-object p1

    :pswitch_b
    const-string p1, "2MHD"

    return-object p1

    :pswitch_c
    const-string p1, "3M"

    return-object p1

    :pswitch_d
    const-string p1, "5M"

    return-object p1

    :pswitch_e
    const-string p1, "8M"

    return-object p1

    :pswitch_f
    const-string p1, "10M"

    return-object p1

    :pswitch_10
    const-string p1, "12M"

    return-object p1

    :pswitch_11
    const-string p1, "14M"

    return-object p1

    :pswitch_12
    const-string p1, "16M"

    return-object p1

    :cond_1
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_13
    const-string p1, "14M"

    return-object p1

    :pswitch_14
    const-string p1, "1.3M"

    return-object p1

    :pswitch_15
    const-string p1, "VGA"

    return-object p1

    :pswitch_16
    const-string p1, "2MHD"

    return-object p1

    :pswitch_17
    const-string p1, "3M"

    return-object p1

    :pswitch_18
    const-string p1, "5M"

    return-object p1

    :pswitch_19
    const-string p1, "8M"

    return-object p1

    :pswitch_1a
    const-string p1, "10M"

    return-object p1

    :pswitch_1b
    const-string p1, "12M"

    return-object p1

    :goto_0
    const-string p1, "unknow"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getPicDelay(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "/3S"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "/5S"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "/10S"

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "/20S"

    return-object p1

    :cond_3
    const-string p1, "/unknow"

    return-object p1
.end method

.method public getVideoDPI(I)Ljava/lang/String;
    .locals 2

    .line 93
    iget v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->nCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "VGA 240fps"

    return-object p1

    :pswitch_1
    const-string p1, "720P 30fps"

    return-object p1

    :pswitch_2
    const-string p1, "720P 60fps"

    return-object p1

    :pswitch_3
    const-string p1, "720P 120fps"

    return-object p1

    :pswitch_4
    const-string p1, "1080P 30fps"

    return-object p1

    :pswitch_5
    const-string p1, "1080P 60fps"

    return-object p1

    :pswitch_6
    const-string p1, "2K 30fps"

    return-object p1

    .line 112
    :cond_0
    iget v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->nCode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    const-string p1, "2K"

    return-object p1

    :pswitch_8
    const-string p1, "720P 30fps"

    return-object p1

    :pswitch_9
    const-string p1, "720P 60fps"

    return-object p1

    :pswitch_a
    const-string p1, "720P 120fps"

    return-object p1

    :pswitch_b
    const-string p1, "1080P 30fps"

    return-object p1

    :pswitch_c
    const-string p1, "1080P 60fps"

    return-object p1

    .line 129
    :cond_1
    iget v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->nCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_d
    const-string p1, "720P 30fps"

    return-object p1

    :pswitch_e
    const-string p1, "720P 60fps"

    return-object p1

    :pswitch_f
    const-string p1, "720P 120fps"

    return-object p1

    :pswitch_10
    const-string p1, "1080P 30fps"

    return-object p1

    :pswitch_11
    const-string p1, "1080P 60fps"

    return-object p1

    :pswitch_12
    const-string p1, "2K"

    return-object p1

    :cond_2
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_13
    const-string p1, "VGA"

    return-object p1

    :pswitch_14
    const-string p1, "WVGA"

    return-object p1

    :pswitch_15
    const-string p1, "720P 30fps"

    return-object p1

    :pswitch_16
    const-string p1, "720P 60fps"

    return-object p1

    :pswitch_17
    const-string p1, "1080P"

    return-object p1

    :goto_0
    const-string p1, "unknow"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getVideoDelay(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "/1s"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "/2s"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "/3s"

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "/10s"

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string p1, "/30s"

    return-object p1

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const-string p1, "/60s"

    return-object p1

    :cond_5
    const-string p1, "/unknow"

    return-object p1
.end method

.method public setManaName(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ocean/util/StateTag$CameraVersion;->ManaName:Ljava/lang/String;

    return-void
.end method

.method public setOriginInfo(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/ocean/util/StateTag$CameraVersion;->OriginInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget v0, p0, Lcom/ocean/util/StateTag$CameraVersion;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
