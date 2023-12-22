.class Lorg/videolan/libvlc/AWindow$SurfaceHelper;
.super Ljava/lang/Object;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceHelper"
.end annotation


# instance fields
.field private final mId:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lorg/videolan/libvlc/AWindow;


# direct methods
.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 195
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 76
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 78
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 79
    iput-object p4, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 80
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 195
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 62
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 64
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 65
    iget-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 195
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 69
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 71
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 72
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V

    return-void
.end method

.method static synthetic access$300(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$400(Lorg/videolan/libvlc/AWindow$SurfaceHelper;Landroid/view/Surface;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurface()V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurfaceView()V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachTextureView()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 103
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 106
    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    .line 105
    invoke-interface {v1, v0, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method private createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 172
    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    return-object v0
.end method

.method private releaseTextureView()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$000(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 86
    iget-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-static {p1, v0, v1}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    .line 87
    iget-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {p1}, Lorg/videolan/libvlc/AWindow;->access$200(Lorg/videolan/libvlc/AWindow;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurfaceView()V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachTextureView()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 121
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurface()V

    :goto_0
    return-void

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 134
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    invoke-static {v1, v2, v0}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    .line 135
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->releaseTextureView()V

    return-void
.end method
