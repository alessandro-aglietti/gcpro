.class public final enum Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;
.super Ljava/lang/Enum;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/widget/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SheetItemColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

.field public static final enum Blue:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

.field public static final enum Red:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 201
    new-instance v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    const-string v1, "Blue"

    const-string v2, "#037BFF"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->Blue:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    new-instance v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    const-string v1, "Red"

    const-string v2, "#FD4A2E"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->Red:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    const/4 v0, 0x2

    .line 200
    new-array v0, v0, [Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    sget-object v1, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->Blue:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->Red:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->$VALUES:[Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 206
    iput-object p3, p0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;
    .locals 1

    .line 200
    const-class v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    return-object p0
.end method

.method public static values()[Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;
    .locals 1

    .line 200
    sget-object v0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->$VALUES:[Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    invoke-virtual {v0}, [Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-void
.end method
