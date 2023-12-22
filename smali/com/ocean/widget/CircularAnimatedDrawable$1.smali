.class Lcom/ocean/widget/CircularAnimatedDrawable$1;
.super Landroid/util/Property;
.source "CircularAnimatedDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/widget/CircularAnimatedDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/ocean/widget/CircularAnimatedDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/CircularAnimatedDrawable;


# direct methods
.method constructor <init>(Lcom/ocean/widget/CircularAnimatedDrawable;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ocean/widget/CircularAnimatedDrawable$1;->this$0:Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/ocean/widget/CircularAnimatedDrawable;)Ljava/lang/Float;
    .locals 0

    .line 98
    invoke-virtual {p1}, Lcom/ocean/widget/CircularAnimatedDrawable;->getCurrentGlobalAngle()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularAnimatedDrawable$1;->get(Lcom/ocean/widget/CircularAnimatedDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/ocean/widget/CircularAnimatedDrawable;Ljava/lang/Float;)V
    .locals 0

    .line 103
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ocean/widget/CircularAnimatedDrawable;->setCurrentGlobalAngle(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/ocean/widget/CircularAnimatedDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/ocean/widget/CircularAnimatedDrawable$1;->set(Lcom/ocean/widget/CircularAnimatedDrawable;Ljava/lang/Float;)V

    return-void
.end method
