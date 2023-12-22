.class public Lcom/ocean/widget/CircularProgressButton;
.super Landroid/widget/Button;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/widget/CircularProgressButton$SavedState;,
        Lcom/ocean/widget/CircularProgressButton$State;
    }
.end annotation


# static fields
.field public static final ERROR_STATE_PROGRESS:I = -0x1

.field public static final IDLE_STATE_PROGRESS:I = 0x0

.field public static final INDETERMINATE_STATE_PROGRESS:I = 0x32

.field public static final SUCCESS_STATE_PROGRESS:I = 0x64


# instance fields
.field private background:Lcom/ocean/widget/StrokeGradientDrawable;

.field private mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

.field private mColorIndicator:I

.field private mColorIndicatorBackground:I

.field private mColorProgress:I

.field private mCompleteColorState:Landroid/content/res/ColorStateList;

.field private mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mCompleteStateListener:Lcom/ocean/widget/OnAnimationEndListener;

.field private mCompleteText:Ljava/lang/String;

.field private mConfigurationChanged:Z

.field private mCornerRadius:F

.field private mErrorColorState:Landroid/content/res/ColorStateList;

.field private mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mErrorStateListener:Lcom/ocean/widget/OnAnimationEndListener;

.field private mErrorText:Ljava/lang/String;

.field private mIconComplete:I

.field private mIconError:I

.field private mIdleColorState:Landroid/content/res/ColorStateList;

.field private mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mIdleStateListener:Lcom/ocean/widget/OnAnimationEndListener;

.field private mIdleText:Ljava/lang/String;

.field private mIndeterminateProgressMode:Z

.field private mMaxProgress:I

.field private mMorphingInProgress:Z

.field private mPaddingProgress:I

.field private mProgress:I

.field private mProgressDrawable:Lcom/ocean/widget/CircularProgressDrawable;

.field private mProgressStateListener:Lcom/ocean/widget/OnAnimationEndListener;

.field private mProgressText:Ljava/lang/String;

.field private mState:Lcom/ocean/widget/CircularProgressButton$State;

.field private mStateManager:Lcom/ocean/widget/StateManager;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 358
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$1;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 398
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$2;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 444
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$3;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 484
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$4;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$4;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/ocean/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 358
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$1;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 398
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$2;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 444
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$3;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 484
    new-instance v0, Lcom/ocean/widget/CircularProgressButton$4;

    invoke-direct {v0, p0}, Lcom/ocean/widget/CircularProgressButton$4;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/ocean/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 358
    new-instance p3, Lcom/ocean/widget/CircularProgressButton$1;

    invoke-direct {p3, p0}, Lcom/ocean/widget/CircularProgressButton$1;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object p3, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 398
    new-instance p3, Lcom/ocean/widget/CircularProgressButton$2;

    invoke-direct {p3, p0}, Lcom/ocean/widget/CircularProgressButton$2;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object p3, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 444
    new-instance p3, Lcom/ocean/widget/CircularProgressButton$3;

    invoke-direct {p3, p0}, Lcom/ocean/widget/CircularProgressButton$3;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object p3, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 484
    new-instance p3, Lcom/ocean/widget/CircularProgressButton$4;

    invoke-direct {p3, p0}, Lcom/ocean/widget/CircularProgressButton$4;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object p3, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/ocean/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/ocean/widget/CircularProgressButton;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/ocean/widget/CircularProgressButton;->mMorphingInProgress:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ocean/widget/CircularProgressButton;Lcom/ocean/widget/CircularProgressButton$State;)Lcom/ocean/widget/CircularProgressButton$State;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ocean/widget/CircularProgressButton;)Lcom/ocean/widget/StateManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ocean/widget/CircularProgressButton;->mStateManager:Lcom/ocean/widget/StateManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ocean/widget/CircularProgressButton;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/ocean/widget/CircularProgressButton;->mIconComplete:I

    return p0
.end method

.method static synthetic access$400(Lcom/ocean/widget/CircularProgressButton;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/ocean/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ocean/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ocean/widget/CircularProgressButton;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/ocean/widget/CircularProgressButton;->mIconError:I

    return p0
.end method

.method static synthetic access$800(Lcom/ocean/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    return-object p0
.end method

.method private createDrawable(I)Lcom/ocean/widget/StrokeGradientDrawable;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 159
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 160
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 161
    new-instance v1, Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-direct {v1, v0}, Lcom/ocean/widget/StrokeGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    .line 162
    invoke-virtual {v1, p1}, Lcom/ocean/widget/StrokeGradientDrawable;->setStrokeColor(I)V

    .line 163
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mStrokeWidth:I

    invoke-virtual {v1, p1}, Lcom/ocean/widget/StrokeGradientDrawable;->setStrokeWidth(I)V

    return-object v1
.end method

.method private createMorphing()Lcom/ocean/widget/MorphingAnimation;
    .locals 3

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mMorphingInProgress:Z

    .line 300
    new-instance v1, Lcom/ocean/widget/MorphingAnimation;

    iget-object v2, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-direct {v1, p0, v2}, Lcom/ocean/widget/MorphingAnimation;-><init>(Landroid/widget/TextView;Lcom/ocean/widget/StrokeGradientDrawable;)V

    .line 301
    iget v2, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v1, v2}, Lcom/ocean/widget/MorphingAnimation;->setFromCornerRadius(F)V

    .line 302
    iget v2, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v1, v2}, Lcom/ocean/widget/MorphingAnimation;->setToCornerRadius(F)V

    .line 304
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ocean/widget/MorphingAnimation;->setFromWidth(I)V

    .line 305
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ocean/widget/MorphingAnimation;->setToWidth(I)V

    .line 307
    iget-boolean v2, p0, Lcom/ocean/widget/CircularProgressButton;->mConfigurationChanged:Z

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v1, v0}, Lcom/ocean/widget/MorphingAnimation;->setDuration(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    .line 310
    invoke-virtual {v1, v0}, Lcom/ocean/widget/MorphingAnimation;->setDuration(I)V

    :goto_0
    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mConfigurationChanged:Z

    return-object v1
.end method

.method private createProgressMorphing(FFII)Lcom/ocean/widget/MorphingAnimation;
    .locals 3

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mMorphingInProgress:Z

    .line 321
    new-instance v1, Lcom/ocean/widget/MorphingAnimation;

    iget-object v2, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-direct {v1, p0, v2}, Lcom/ocean/widget/MorphingAnimation;-><init>(Landroid/widget/TextView;Lcom/ocean/widget/StrokeGradientDrawable;)V

    .line 322
    invoke-virtual {v1, p1}, Lcom/ocean/widget/MorphingAnimation;->setFromCornerRadius(F)V

    .line 323
    invoke-virtual {v1, p2}, Lcom/ocean/widget/MorphingAnimation;->setToCornerRadius(F)V

    .line 325
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lcom/ocean/widget/MorphingAnimation;->setPadding(F)V

    .line 327
    invoke-virtual {v1, p3}, Lcom/ocean/widget/MorphingAnimation;->setFromWidth(I)V

    .line 328
    invoke-virtual {v1, p4}, Lcom/ocean/widget/MorphingAnimation;->setToWidth(I)V

    .line 330
    iget-boolean p1, p0, Lcom/ocean/widget/CircularProgressButton;->mConfigurationChanged:Z

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {v1, v0}, Lcom/ocean/widget/MorphingAnimation;->setDuration(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x190

    .line 333
    invoke-virtual {v1, p1}, Lcom/ocean/widget/MorphingAnimation;->setDuration(I)V

    :goto_0
    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Lcom/ocean/widget/CircularProgressButton;->mConfigurationChanged:Z

    return-object v1
.end method

.method private drawIndeterminateProgress(Landroid/graphics/Canvas;)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 257
    new-instance v0, Lcom/ocean/widget/CircularAnimatedDrawable;

    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicator:I

    iget v2, p0, Lcom/ocean/widget/CircularProgressButton;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/ocean/widget/CircularAnimatedDrawable;-><init>(IF)V

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

    .line 258
    iget v0, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    add-int/2addr v0, p1

    .line 259
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr v1, p1

    .line 260
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result p1

    iget v2, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr p1, v2

    .line 261
    iget v2, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    .line 262
    iget-object v3, p0, Lcom/ocean/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-virtual {v3, v0, v2, v1, p1}, Lcom/ocean/widget/CircularAnimatedDrawable;->setBounds(IIII)V

    .line 263
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-virtual {p1, p0}, Lcom/ocean/widget/CircularAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 264
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-virtual {p1}, Lcom/ocean/widget/CircularAnimatedDrawable;->start()V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

    invoke-virtual {v0, p1}, Lcom/ocean/widget/CircularAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressDrawable:Lcom/ocean/widget/CircularProgressDrawable;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 274
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 275
    new-instance v2, Lcom/ocean/widget/CircularProgressDrawable;

    iget v3, p0, Lcom/ocean/widget/CircularProgressButton;->mStrokeWidth:I

    iget v4, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicator:I

    invoke-direct {v2, v1, v3, v4}, Lcom/ocean/widget/CircularProgressDrawable;-><init>(III)V

    iput-object v2, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressDrawable:Lcom/ocean/widget/CircularProgressDrawable;

    .line 276
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    add-int/2addr v0, v1

    .line 277
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressDrawable:Lcom/ocean/widget/CircularProgressDrawable;

    iget v2, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    iget v3, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {v1, v0, v2, v0, v3}, Lcom/ocean/widget/CircularProgressDrawable;->setBounds(IIII)V

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    .line 279
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 280
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressDrawable:Lcom/ocean/widget/CircularProgressDrawable;

    invoke-virtual {v1, v0}, Lcom/ocean/widget/CircularProgressDrawable;->setSweepAngle(F)V

    .line 281
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressDrawable:Lcom/ocean/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/ocean/widget/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDisabledColor(Landroid/content/res/ColorStateList;)I
    .locals 3

    const/4 v0, 0x1

    .line 154
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private getFocusedColor(Landroid/content/res/ColorStateList;)I
    .locals 3

    const/4 v0, 0x1

    .line 150
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009c

    aput v2, v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private getNormalColor(Landroid/content/res/ColorStateList;)I
    .locals 3

    const/4 v0, 0x1

    .line 142
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private getPressedColor(Landroid/content/res/ColorStateList;)I
    .locals 3

    const/4 v0, 0x1

    .line 146
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ocean/widget/CircularProgressButton;->mStrokeWidth:I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/ocean/widget/CircularProgressButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 88
    iput p1, p0, Lcom/ocean/widget/CircularProgressButton;->mMaxProgress:I

    .line 89
    sget-object p1, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    iput-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    .line 90
    new-instance p1, Lcom/ocean/widget/StateManager;

    invoke-direct {p1, p0}, Lcom/ocean/widget/StateManager;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    iput-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mStateManager:Lcom/ocean/widget/StateManager;

    .line 92
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 94
    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setTextSize(F)V

    .line 95
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 97
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->initIdleStateDrawable()V

    .line 98
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 189
    sget-object v0, Lcom/ocean/gamecamerapro2/R$styleable;->CircularProgressButton:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/ocean/widget/CircularProgressButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xc

    .line 196
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    const/16 p2, 0xa

    .line 197
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    const/16 p2, 0xb

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    const/16 p2, 0xd

    .line 199
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressText:Ljava/lang/String;

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircularProgressButton;->mIconComplete:I

    const/4 p2, 0x5

    .line 202
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircularProgressButton;->mIconError:I

    const/4 p2, 0x3

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    const/4 p2, 0x6

    .line 204
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircularProgressButton;->mPaddingProgress:I

    const p2, 0x7f040005

    .line 206
    invoke-virtual {p0, p2}, Lcom/ocean/widget/CircularProgressButton;->getColor(I)I

    move-result p2

    const v1, 0x7f04000f

    .line 207
    invoke-virtual {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getColor(I)I

    move-result v1

    const v2, 0x7f04000b

    .line 208
    invoke-virtual {p0, v2}, Lcom/ocean/widget/CircularProgressButton;->getColor(I)I

    move-result v2

    const/16 v3, 0x9

    const v4, 0x7f04000c

    .line 210
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 212
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    const/4 v3, 0x7

    const v4, 0x7f040007

    .line 214
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 216
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    const/16 v3, 0x8

    const v4, 0x7f040008

    .line 218
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 220
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    .line 222
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorProgress:I

    .line 223
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicator:I

    const/4 p2, 0x1

    .line 225
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicatorBackground:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    throw p2
.end method

.method private initCompleteStateDrawable()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 114
    invoke-direct {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->createDrawable(I)Lcom/ocean/widget/StrokeGradientDrawable;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 117
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v0}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v2, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initErrorStateDrawable()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 104
    invoke-direct {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->createDrawable(I)Lcom/ocean/widget/StrokeGradientDrawable;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 107
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v0}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v2, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initIdleStateDrawable()V
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/ocean/widget/CircularProgressButton;->getFocusedColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 125
    iget-object v3, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/ocean/widget/CircularProgressButton;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v3

    .line 126
    iget-object v4, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    if-nez v4, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->createDrawable(I)Lcom/ocean/widget/StrokeGradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    .line 130
    :cond_0
    invoke-direct {p0, v3}, Lcom/ocean/widget/CircularProgressButton;->createDrawable(I)Lcom/ocean/widget/StrokeGradientDrawable;

    move-result-object v0

    .line 131
    invoke-direct {p0, v2}, Lcom/ocean/widget/CircularProgressButton;->createDrawable(I)Lcom/ocean/widget/StrokeGradientDrawable;

    move-result-object v2

    .line 132
    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->createDrawable(I)Lcom/ocean/widget/StrokeGradientDrawable;

    move-result-object v1

    .line 133
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 135
    iget-object v3, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a7

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v1}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v3, v4, [I

    const v5, 0x101009c

    aput v5, v3, v7

    invoke-virtual {v2}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v4, [I

    const v3, -0x101009e

    aput v3, v2, v7

    invoke-virtual {v0}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v2, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private morphCompleteToIdle()V
    .locals 2

    .line 415
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->createMorphing()Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 418
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 420
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 421
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 423
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 425
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private morphErrorToIdle()V
    .locals 2

    .line 430
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->createMorphing()Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 433
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 435
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 436
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 438
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 440
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private morphIdleToComplete()V
    .locals 2

    .line 384
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->createMorphing()Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 387
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 389
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 390
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 392
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 394
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private morphIdleToError()V
    .locals 2

    .line 457
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->createMorphing()Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 460
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 462
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 463
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 465
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 467
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private morphProgressToComplete()V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ocean/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 371
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 372
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 374
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 375
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 377
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 379
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private morphProgressToError()V
    .locals 4

    .line 472
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ocean/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 474
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 475
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 477
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 478
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 479
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 481
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private morphProgressToIdle()V
    .locals 4

    .line 501
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ocean/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 503
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 504
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 506
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 507
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 508
    new-instance v1, Lcom/ocean/widget/CircularProgressButton$5;

    invoke-direct {v1, p0}, Lcom/ocean/widget/CircularProgressButton$5;-><init>(Lcom/ocean/widget/CircularProgressButton;)V

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 520
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private morphToProgress()V
    .locals 4

    .line 342
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->setWidth(I)V

    .line 343
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget v0, p0, Lcom/ocean/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ocean/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/ocean/widget/MorphingAnimation;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromColor(I)V

    .line 348
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToColor(I)V

    .line 350
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/ocean/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setFromStrokeColor(I)V

    .line 351
    iget v1, p0, Lcom/ocean/widget/CircularProgressButton;->mColorIndicatorBackground:I

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setToStrokeColor(I)V

    .line 353
    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgressStateListener:Lcom/ocean/widget/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MorphingAnimation;->setListener(Lcom/ocean/widget/OnAnimationEndListener;)V

    .line 355
    invoke-virtual {v0}, Lcom/ocean/widget/MorphingAnimation;->start()V

    return-void
.end method

.method private setIcon(I)V
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/ocean/widget/CircularProgressButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 528
    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/ocean/widget/CircularProgressButton;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->COMPLETE:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->initCompleteStateDrawable()V

    .line 173
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->initIdleStateDrawable()V

    .line 176
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->ERROR:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->initErrorStateDrawable()V

    .line 179
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcom/ocean/widget/CircularProgressButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_3

    .line 183
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    :cond_3
    return-void
.end method

.method protected getColor(I)I
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getCompleteText()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleText()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    return v0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method public isIndeterminateProgressMode()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 242
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_1

    .line 245
    iget-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->drawIndeterminateProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->drawProgress(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 626
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 628
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 645
    instance-of v0, p1, Lcom/ocean/widget/CircularProgressButton$SavedState;

    if-eqz v0, :cond_0

    .line 646
    check-cast p1, Lcom/ocean/widget/CircularProgressButton$SavedState;

    .line 647
    invoke-static {p1}, Lcom/ocean/widget/CircularProgressButton$SavedState;->access$900(Lcom/ocean/widget/CircularProgressButton$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    .line 648
    invoke-static {p1}, Lcom/ocean/widget/CircularProgressButton$SavedState;->access$1000(Lcom/ocean/widget/CircularProgressButton$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    .line 649
    invoke-static {p1}, Lcom/ocean/widget/CircularProgressButton$SavedState;->access$1100(Lcom/ocean/widget/CircularProgressButton$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mConfigurationChanged:Z

    .line 650
    invoke-virtual {p1}, Lcom/ocean/widget/CircularProgressButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 651
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setProgress(I)V

    goto :goto_0

    .line 653
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 634
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 635
    new-instance v1, Lcom/ocean/widget/CircularProgressButton$SavedState;

    invoke-direct {v1, v0}, Lcom/ocean/widget/CircularProgressButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 636
    iget v0, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    invoke-static {v1, v0}, Lcom/ocean/widget/CircularProgressButton$SavedState;->access$902(Lcom/ocean/widget/CircularProgressButton$SavedState;I)I

    .line 637
    iget-boolean v0, p0, Lcom/ocean/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    invoke-static {v1, v0}, Lcom/ocean/widget/CircularProgressButton$SavedState;->access$1002(Lcom/ocean/widget/CircularProgressButton$SavedState;Z)Z

    const/4 v0, 0x1

    .line 638
    invoke-static {v1, v0}, Lcom/ocean/widget/CircularProgressButton$SavedState;->access$1102(Lcom/ocean/widget/CircularProgressButton$SavedState;Z)Z

    return-object v1
.end method

.method protected removeIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/ocean/widget/CircularProgressButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 534
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/ocean/widget/CircularProgressButton;->setPadding(IIII)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/ocean/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 543
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 544
    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ocean/widget/CircularProgressButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setCompleteText(Ljava/lang/String;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    return-void
.end method

.method public setIdleText(Ljava/lang/String;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    return-void
.end method

.method public setIndeterminateProgressMode(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/ocean/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 551
    iput p1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    .line 553
    iget-boolean p1, p0, Lcom/ocean/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->getWidth()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 557
    :cond_0
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mStateManager:Lcom/ocean/widget/StateManager;

    invoke-virtual {p1, p0}, Lcom/ocean/widget/StateManager;->saveProgress(Lcom/ocean/widget/CircularProgressButton;)V

    .line 559
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    iget v0, p0, Lcom/ocean/widget/CircularProgressButton;->mMaxProgress:I

    if-lt p1, v0, :cond_2

    .line 560
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_1

    .line 561
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphProgressToComplete()V

    goto :goto_0

    .line 562
    :cond_1
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_9

    .line 563
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphIdleToComplete()V

    goto :goto_0

    .line 565
    :cond_2
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    if-lez p1, :cond_4

    .line 566
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_3

    .line 567
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphToProgress()V

    goto :goto_0

    .line 568
    :cond_3
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_9

    .line 569
    invoke-virtual {p0}, Lcom/ocean/widget/CircularProgressButton;->invalidate()V

    goto :goto_0

    .line 571
    :cond_4
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 572
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_5

    .line 573
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphProgressToError()V

    goto :goto_0

    .line 574
    :cond_5
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_9

    .line 575
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphIdleToError()V

    goto :goto_0

    .line 577
    :cond_6
    iget p1, p0, Lcom/ocean/widget/CircularProgressButton;->mProgress:I

    if-nez p1, :cond_9

    .line 578
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->COMPLETE:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_7

    .line 579
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphCompleteToIdle()V

    goto :goto_0

    .line 580
    :cond_7
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->PROGRESS:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_8

    .line 581
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphProgressToIdle()V

    goto :goto_0

    .line 582
    :cond_8
    iget-object p1, p0, Lcom/ocean/widget/CircularProgressButton;->mState:Lcom/ocean/widget/CircularProgressButton$State;

    sget-object v0, Lcom/ocean/widget/CircularProgressButton$State;->ERROR:Lcom/ocean/widget/CircularProgressButton$State;

    if-ne p1, v0, :cond_9

    .line 583
    invoke-direct {p0}, Lcom/ocean/widget/CircularProgressButton;->morphErrorToIdle()V

    :cond_9
    :goto_0
    return-void

    :cond_a
    :goto_1
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->background:Lcom/ocean/widget/StrokeGradientDrawable;

    invoke-virtual {v0, p1}, Lcom/ocean/widget/StrokeGradientDrawable;->setStrokeColor(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/ocean/widget/CircularAnimatedDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
