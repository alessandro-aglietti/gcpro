.class public Lcom/ocean/wheel/StrericWheelAdapter;
.super Ljava/lang/Object;
.source "StrericWheelAdapter.java"

# interfaces
.implements Lcom/ocean/wheel/WheelAdapter;


# instance fields
.field private strContents:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ocean/wheel/StrericWheelAdapter;->strContents:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/ocean/wheel/StrericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ocean/wheel/StrericWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ocean/wheel/StrericWheelAdapter;->strContents:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getMaximumLength()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getStrContents()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ocean/wheel/StrericWheelAdapter;->strContents:[Ljava/lang/String;

    return-object v0
.end method

.method public setStrContents([Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ocean/wheel/StrericWheelAdapter;->strContents:[Ljava/lang/String;

    return-void
.end method
