.class Lcom/ocean/widget/CircularProgressButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ocean/widget/CircularProgressButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigurationChanged:Z

.field private mIndeterminateProgressMode:Z

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 683
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$SavedState$1;

    invoke-direct {v0}, Lcom/ocean/widget/CircularProgressButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/ocean/widget/CircularProgressButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 669
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mProgress:I

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ocean/widget/CircularProgressButton$1;)V
    .locals 0

    .line 658
    invoke-direct {p0, p1}, Lcom/ocean/widget/CircularProgressButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 665
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ocean/widget/CircularProgressButton$SavedState;)Z
    .locals 0

    .line 658
    iget-boolean p0, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/ocean/widget/CircularProgressButton$SavedState;Z)Z
    .locals 0

    .line 658
    iput-boolean p1, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ocean/widget/CircularProgressButton$SavedState;)Z
    .locals 0

    .line 658
    iget-boolean p0, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/ocean/widget/CircularProgressButton$SavedState;Z)Z
    .locals 0

    .line 658
    iput-boolean p1, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/ocean/widget/CircularProgressButton$SavedState;)I
    .locals 0

    .line 658
    iget p0, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mProgress:I

    return p0
.end method

.method static synthetic access$902(Lcom/ocean/widget/CircularProgressButton$SavedState;I)I
    .locals 0

    .line 658
    iput p1, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mProgress:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 677
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 678
    iget p2, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-boolean p2, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget-boolean p2, p0, Lcom/ocean/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
