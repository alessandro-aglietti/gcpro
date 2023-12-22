.class Lcom/ocean/widget/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# instance fields
.field private mIsEnabled:Z

.field private mProgress:I


# direct methods
.method public constructor <init>(Lcom/ocean/widget/CircularProgressButton;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ocean/widget/StateManager;->mIsEnabled:Z

    .line 10
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/ocean/widget/StateManager;->mProgress:I

    return-void
.end method


# virtual methods
.method public checkState(Lcom/ocean/widget/CircularProgressButton;)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/ocean/widget/StateManager;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/ocean/widget/StateManager;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ocean/widget/CircularProgressButton;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getProgress()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/ocean/widget/StateManager;->mProgress:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/ocean/widget/StateManager;->mIsEnabled:Z

    return v0
.end method

.method public saveProgress(Lcom/ocean/widget/CircularProgressButton;)V
    .locals 0

    .line 14
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/ocean/widget/StateManager;->mProgress:I

    return-void
.end method
