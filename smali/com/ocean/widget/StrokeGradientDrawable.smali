.class public Lcom/ocean/widget/StrokeGradientDrawable;
.super Ljava/lang/Object;
.source "StrokeGradientDrawable.java"


# instance fields
.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mStrokeColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mStrokeWidth:I

    return v0
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 30
    iput p1, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mStrokeColor:I

    .line 31
    iget-object v0, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/ocean/widget/StrokeGradientDrawable;->getStrokeWidth()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .line 21
    iput p1, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mStrokeWidth:I

    .line 22
    iget-object v0, p0, Lcom/ocean/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/ocean/widget/StrokeGradientDrawable;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method
