.class final enum Lcom/ocean/widget/CircularProgressButton$State;
.super Ljava/lang/Enum;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ocean/widget/CircularProgressButton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ocean/widget/CircularProgressButton$State;

.field public static final enum COMPLETE:Lcom/ocean/widget/CircularProgressButton$State;

.field public static final enum ERROR:Lcom/ocean/widget/CircularProgressButton$State;

.field public static final enum IDLE:Lcom/ocean/widget/CircularProgressButton$State;

.field public static final enum PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 58
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$State;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ocean/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    new-instance v0, Lcom/ocean/widget/CircularProgressButton$State;

    const-string v1, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ocean/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    new-instance v0, Lcom/ocean/widget/CircularProgressButton$State;

    const-string v1, "COMPLETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ocean/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ocean/widget/CircularProgressButton$State;->COMPLETE:Lcom/ocean/widget/CircularProgressButton$State;

    new-instance v0, Lcom/ocean/widget/CircularProgressButton$State;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ocean/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ocean/widget/CircularProgressButton$State;->ERROR:Lcom/ocean/widget/CircularProgressButton$State;

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->COMPLETE:Lcom/ocean/widget/CircularProgressButton$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->ERROR:Lcom/ocean/widget/CircularProgressButton$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ocean/widget/CircularProgressButton$State;->$VALUES:[Lcom/ocean/widget/CircularProgressButton$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ocean/widget/CircularProgressButton$State;
    .locals 1

    .line 57
    const-class v0, Lcom/ocean/widget/CircularProgressButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ocean/widget/CircularProgressButton$State;

    return-object p0
.end method

.method public static values()[Lcom/ocean/widget/CircularProgressButton$State;
    .locals 1

    .line 57
    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->$VALUES:[Lcom/ocean/widget/CircularProgressButton$State;

    invoke-virtual {v0}, [Lcom/ocean/widget/CircularProgressButton$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ocean/widget/CircularProgressButton$State;

    return-object v0
.end method
