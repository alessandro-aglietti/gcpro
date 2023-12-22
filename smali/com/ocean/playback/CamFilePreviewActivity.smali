.class public Lcom/ocean/playback/CamFilePreviewActivity;
.super Landroid/app/Activity;
.source "CamFilePreviewActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/videolan/libvlc/interfaces/IVLCVout$OnNewVideoLayoutListener;
.implements Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;,
        Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;
    }
.end annotation


# static fields
.field private static final CMD_DELETE_FILE:I = 0x10001

.field private static final MAIN_DEL_FILE:I = 0x1

.field private static final MSG_DELAY_OPEN_STREAM:I = 0x4

.field private static final MSG_KEEP_CAM_ALVIE:I = 0x14

.field private static final PHOTO_THUMB_START:Ljava/lang/String; = "http://192.168.8.120/DCIM/PHOTO/"

.field private static final TAG:Ljava/lang/String; = "[CamFilePreview]:"

.field private static final VIDEO_THUMB_START:Ljava/lang/String; = "http://192.168.8.120/DCIM/MOVIE/"


# instance fields
.field private btnPhotoNext:Landroid/widget/Button;

.field private btnPhotoPrev:Landroid/widget/Button;

.field private btnVideoNext:Landroid/widget/Button;

.field private btnVideoPlay:Landroid/widget/Button;

.field private btnVideoPrev:Landroid/widget/Button;

.field private cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

.field private delHandler:Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;

.field private delMainHandler:Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;

.field private delThread:Landroid/os/HandlerThread;

.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field private holderSurface:Landroid/view/SurfaceHolder;

.field private imgBack2Playback:Landroid/widget/ImageView;

.field private imgDelete:Landroid/widget/ImageView;

.field private isKeepCamAlive:Z

.field private layoutLoading:Landroid/widget/RelativeLayout;

.field private layoutVideoTime:Landroid/widget/RelativeLayout;

.field private libVLC:Lorg/videolan/libvlc/LibVLC;

.field private mCurPosX:F

.field private mCurPosY:F

.field private mPosX:F

.field private mPosY:F

.field private mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

.field private nAllTime:J

.field private nCamFilePos:I

.field private nCamFileSize:I

.field private nCurTime:J

.field private nKeepCamAlvieCount:I

.field private nOldTime:J

.field private nVideoH:I

.field private nVideoW:I

.field private options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

.field private pSystemTimer:Ljava/util/Timer;

.field private pSystemTimerHandler:Landroid/os/Handler;

.field private pSystemTimerTask:Ljava/util/TimerTask;

.field private photoCamFile:Landroid/widget/ImageView;

.field private processVideo:Landroid/widget/ProgressBar;

.field private strCamFileUrl:Ljava/lang/String;

.field private txtLoading:Landroid/widget/TextView;

.field private txtVideoAllTime:Landroid/widget/TextView;

.field private txtVideoCurTime:Landroid/widget/TextView;

.field private videoCamFile:Landroid/view/SurfaceView;

.field private waitDialog:Lcom/ocean/widget/RotateLoading;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    .line 570
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimer:Ljava/util/Timer;

    .line 571
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 572
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 573
    iput-boolean v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->isKeepCamAlive:Z

    const/4 v1, 0x0

    .line 574
    iput v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nKeepCamAlvieCount:I

    .line 633
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    .line 634
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 635
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->options:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->photoViewPrev()V

    return-void
.end method

.method static synthetic access$100(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->photoViewNext()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcOpenStream()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->txtLoading:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/widget/RotateLoading;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->waitDialog:Lcom/ocean/widget/RotateLoading;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->layoutLoading:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ocean/playback/CamFilePreviewActivity;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCurTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/ocean/playback/CamFilePreviewActivity;J)J
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCurTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/ocean/playback/CamFilePreviewActivity;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nAllTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/ocean/playback/CamFilePreviewActivity;J)J
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nAllTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->processVideo:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ocean/playback/CamFilePreviewActivity;J)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/ocean/playback/CamFilePreviewActivity;->formatVideoTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->txtVideoCurTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ocean/playback/CamFilePreviewActivity;)Lorg/videolan/libvlc/MediaPlayer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->btnBack2Playback()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPlay:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ocean/playback/CamFilePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcPlayPrev()V

    return-void
.end method

.method static synthetic access$2300(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcPlayNext()V

    return-void
.end method

.method static synthetic access$2400(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->photoCamFile:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ocean/playback/CamFilePreviewActivity;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    return p0
.end method

.method static synthetic access$2502(Lcom/ocean/playback/CamFilePreviewActivity;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    return p1
.end method

.method static synthetic access$2600(Lcom/ocean/playback/CamFilePreviewActivity;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFileSize:I

    return p0
.end method

.method static synthetic access$2602(Lcom/ocean/playback/CamFilePreviewActivity;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFileSize:I

    return p1
.end method

.method static synthetic access$2702(Lcom/ocean/playback/CamFilePreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->playCamFile()V

    return-void
.end method

.method static synthetic access$2900(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->delMainHandler:Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->btnDeleteFile()V

    return-void
.end method

.method static synthetic access$400(Lcom/ocean/playback/CamFilePreviewActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcStopMedia()V

    return-void
.end method

.method static synthetic access$500(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->delHandler:Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ocean/playback/CamFilePreviewActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->isKeepCamAlive:Z

    return p0
.end method

.method static synthetic access$700(Lcom/ocean/playback/CamFilePreviewActivity;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nKeepCamAlvieCount:I

    return p0
.end method

.method static synthetic access$702(Lcom/ocean/playback/CamFilePreviewActivity;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nKeepCamAlvieCount:I

    return p1
.end method

.method static synthetic access$708(Lcom/ocean/playback/CamFilePreviewActivity;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nKeepCamAlvieCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nKeepCamAlvieCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/ocean/playback/CamFilePreviewActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ocean/playback/CamFilePreviewActivity;)Lcom/ocean/cmdrequest/CameraRequest;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    return-object p0
.end method

.method private btnBack2Playback()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 169
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->finish()V

    return-void
.end method

.method private btnDeleteFile()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0b00a4

    .line 508
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 511
    :cond_0
    new-instance v0, Lcom/ocean/widget/AlertDialog;

    invoke-direct {v0, p0}, Lcom/ocean/widget/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 512
    invoke-virtual {v0}, Lcom/ocean/widget/AlertDialog;->builder()Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    const v2, 0x7f0b00a2

    .line 513
    invoke-virtual {p0, v2}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ocean/widget/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    const v2, 0x7f0b0096

    .line 514
    invoke-virtual {p0, v2}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ocean/widget/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 515
    invoke-virtual {v0, v1}, Lcom/ocean/widget/AlertDialog;->setCancelable(Z)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b00a3

    .line 516
    invoke-virtual {p0, v1}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/playback/CamFilePreviewActivity$6;

    invoke-direct {v2, p0}, Lcom/ocean/playback/CamFilePreviewActivity$6;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b00b3

    .line 523
    invoke-virtual {p0, v1}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/playback/CamFilePreviewActivity$5;

    invoke-direct {v2, p0}, Lcom/ocean/playback/CamFilePreviewActivity$5;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/ocean/widget/AlertDialog;->show()V

    return-void
.end method

.method private camRequestError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private formatVideoTime(J)Ljava/lang/String;
    .locals 4

    const-wide/32 v0, 0x36ee80

    .line 971
    div-long v2, p1, v0

    mul-long v2, v2, v0

    sub-long/2addr p1, v2

    const-wide/32 v0, 0xea60

    .line 972
    div-long v2, p1, v0

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 973
    div-long/2addr p1, v0

    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    .line 975
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initCameraRequest()V
    .locals 1

    .line 186
    new-instance v0, Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    .line 187
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v0, p0}, Lcom/ocean/cmdrequest/CameraRequest;->setOnCameraRequestListener(Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;)V

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nKeepCamAlvieCount:I

    return-void
.end method

.method private initPlaybackTopBar()V
    .locals 2

    const v0, 0x7f07006f

    .line 436
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->layoutLoading:Landroid/widget/RelativeLayout;

    const v0, 0x7f0700eb

    .line 437
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ocean/widget/RotateLoading;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->waitDialog:Lcom/ocean/widget/RotateLoading;

    const v0, 0x7f0700d4

    .line 438
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->txtLoading:Landroid/widget/TextView;

    const v0, 0x7f070099

    .line 439
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->photoCamFile:Landroid/widget/ImageView;

    const v0, 0x7f07009b

    .line 441
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoPrev:Landroid/widget/Button;

    .line 442
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoPrev:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$1;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07009a

    .line 448
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoNext:Landroid/widget/Button;

    .line 449
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoNext:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$2;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07000b

    .line 456
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->imgBack2Playback:Landroid/widget/ImageView;

    .line 457
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->imgBack2Playback:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$3;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07002e

    .line 464
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->imgDelete:Landroid/widget/ImageView;

    .line 465
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->imgDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$4;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initVideoView()V
    .locals 3

    .line 676
    :try_start_0
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error creating player!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private photoViewNext()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0b00a4

    .line 478
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 482
    :cond_0
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 483
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    iget v2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFileSize:I

    if-lt v0, v2, :cond_1

    iput v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    .line 486
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->playCamFile()V

    return-void
.end method

.method private photoViewPrev()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b00a4

    .line 493
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 497
    :cond_0
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 498
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFileSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->playCamFile()V

    return-void
.end method

.method private playCamFile()V
    .locals 4

    .line 980
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    const-string v1, "MOV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    const-string v3, "mov"

    .line 981
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    const-string v3, "MP4"

    .line 982
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    const-string v3, "mp4"

    .line 983
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->layoutVideoTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1025
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPlay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPrev:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->photoCamFile:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoPrev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1032
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    new-instance v2, Lcom/ocean/playback/CamFilePreviewActivity$13;

    invoke-direct {v2, p0}, Lcom/ocean/playback/CamFilePreviewActivity$13;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_1

    .line 994
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->layoutVideoTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPlay:Landroid/widget/Button;

    const v3, 0x7f060021

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 997
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPlay:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPrev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->photoCamFile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoPrev:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnPhotoNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getThumbDownloaded()Z

    move-result v0

    const/4 v3, 0x4

    if-nez v0, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->waitDialog:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 1007
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->waitDialog:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->layoutLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0b0006

    .line 1009
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->waitDialog:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->start()V

    .line 1013
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->waitDialog:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0, v2}, Lcom/ocean/widget/RotateLoading;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->layoutLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcSetMedia(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method private setSize(II)V
    .locals 5

    .line 927
    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoW:I

    .line 928
    iput p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoH:I

    .line 929
    iget p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoW:I

    iget p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoH:I

    mul-int p1, p1, p2

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    .line 932
    :cond_0
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    if-nez p1, :cond_1

    goto :goto_2

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 937
    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 941
    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-le p1, v0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    if-ge p1, v0, :cond_5

    if-nez p2, :cond_5

    :cond_4
    move v4, v0

    move v0, p1

    move p1, v4

    .line 948
    :cond_5
    iget p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoW:I

    int-to-float p2, p2

    iget v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoH:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    cmpg-float v3, v3, p2

    if-gez v3, :cond_6

    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_1

    :cond_6
    mul-float v2, v2, p2

    float-to-int p1, v2

    .line 957
    :goto_1
    iget-object p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    iget v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoW:I

    iget v2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nVideoH:I

    invoke-interface {p2, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 960
    iget-object p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 961
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 962
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 963
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method private system_initTimer()V
    .locals 7

    .line 578
    new-instance v0, Lcom/ocean/playback/CamFilePreviewActivity$7;

    invoke-direct {v0, p0}, Lcom/ocean/playback/CamFilePreviewActivity$7;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    .line 594
    new-instance v0, Lcom/ocean/playback/CamFilePreviewActivity$8;

    invoke-direct {v0, p0}, Lcom/ocean/playback/CamFilePreviewActivity$8;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimerHandler:Landroid/os/Handler;

    .line 606
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimer:Ljava/util/Timer;

    .line 607
    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->pSystemTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private vlcInit()V
    .locals 3

    const v0, 0x7f0700e1

    .line 685
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    .line 686
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 687
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 691
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 693
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->options:Ljava/util/ArrayList;

    const-string v1, "--aout=opensles"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->options:Ljava/util/ArrayList;

    const-string v1, "--audio-time-stretch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->options:Ljava/util/ArrayList;

    const-string v1, "-vvv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->options:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    .line 697
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 699
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 702
    :cond_0
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 703
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 704
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$9;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$9;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    const v0, 0x7f0700e4

    .line 754
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->processVideo:Landroid/widget/ProgressBar;

    const v0, 0x7f0700e0

    .line 756
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPlay:Landroid/widget/Button;

    .line 757
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPlay:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$10;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$10;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700e3

    .line 788
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPrev:Landroid/widget/Button;

    .line 789
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoPrev:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$11;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$11;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700e2

    .line 802
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoNext:Landroid/widget/Button;

    .line 803
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->btnVideoNext:Landroid/widget/Button;

    new-instance v1, Lcom/ocean/playback/CamFilePreviewActivity$12;

    invoke-direct {v1, p0}, Lcom/ocean/playback/CamFilePreviewActivity$12;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07007a

    .line 816
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->layoutVideoTime:Landroid/widget/RelativeLayout;

    const v0, 0x7f0700df

    .line 817
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->txtVideoCurTime:Landroid/widget/TextView;

    const v0, 0x7f0700de

    .line 818
    invoke-virtual {p0, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->txtVideoAllTime:Landroid/widget/TextView;

    return-void
.end method

.method private vlcOpenStream()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 859
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcPlayMedia()V

    return-void
.end method

.method private vlcPauseMedia()V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    return-void
.end method

.method private vlcPlayMedia()V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setRate(F)V

    .line 843
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    return-void
.end method

.method private vlcPlayNext()V
    .locals 2

    .line 864
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcStopMedia()V

    .line 866
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 867
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    iget v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFileSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    .line 870
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->playCamFile()V

    return-void
.end method

.method private vlcPlayPrev()V
    .locals 2

    .line 875
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcStopMedia()V

    .line 877
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 878
    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFileSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    .line 881
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->playCamFile()V

    return-void
.end method

.method private vlcSetMedia(Ljava/lang/String;)V
    .locals 3

    .line 822
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 823
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    const/4 p1, 0x1

    .line 824
    invoke-virtual {v0, p1, p1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 826
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":file-caching="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1770

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":live-caching="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 828
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":network-caching="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":sout-mux-caching="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    const-string p1, ":cr-average=10000"

    .line 830
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    const-string p1, ":codec=mediacodec,iomx,all"

    .line 831
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 836
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 838
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    return-void
.end method

.method private vlcStopMedia()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 854
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public camDidGetBatteryFail()V
    .locals 0

    return-void
.end method

.method public camDidGetBatterySucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetCmd3031Fail()V
    .locals 0

    return-void
.end method

.method public camDidGetCmd3031Succ(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidGetCmd9026Fail()V
    .locals 0

    return-void
.end method

.method public camDidGetCmd9026Succ(I)V
    .locals 0

    return-void
.end method

.method public camDidGetFileListFail()V
    .locals 0

    return-void
.end method

.method public camDidGetFileListSucc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidGetIDFail()V
    .locals 0

    return-void
.end method

.method public camDidGetIDSucc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public camDidGetModeFail()V
    .locals 0

    return-void
.end method

.method public camDidGetModeSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetModelIDFail()V
    .locals 0

    return-void
.end method

.method public camDidGetModelIDSucc(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidGetRetStatusFail()V
    .locals 0

    return-void
.end method

.method public camDidGetRetStatusSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetSDFreeSpaceFail()V
    .locals 0

    return-void
.end method

.method public camDidGetSDFreeSpaceSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidGetSettingsFail(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidGetSettingsSucc(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public camDidRecordFail(II)V
    .locals 0

    return-void
.end method

.method public camDidRecordSucc(II)V
    .locals 0

    return-void
.end method

.method public camDidSendCmdFail(II)V
    .locals 0

    return-void
.end method

.method public camDidSendCmdSucc(II)V
    .locals 0

    return-void
.end method

.method public camDidSetDateFail()V
    .locals 0

    return-void
.end method

.method public camDidSetDateSucc()V
    .locals 0

    return-void
.end method

.method public camDidSetModeFail(I)V
    .locals 0

    const-string p1, "Failed to set modes"

    .line 201
    invoke-direct {p0, p1}, Lcom/ocean/playback/CamFilePreviewActivity;->camRequestError(Ljava/lang/String;)V

    return-void
.end method

.method public camDidSetModeSucc(I)V
    .locals 0

    return-void
.end method

.method public camDidSetTimeFail()V
    .locals 0

    return-void
.end method

.method public camDidSetTimeSucc()V
    .locals 0

    return-void
.end method

.method public camDidSnapshotFail(I)V
    .locals 0

    return-void
.end method

.method public camDidSnapshotSucc(I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/ocean/playback/CamFilePreviewActivity;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 78
    invoke-virtual {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/high16 p1, 0x7f090000

    .line 79
    invoke-virtual {p0, p1}, Lcom/ocean/playback/CamFilePreviewActivity;->setContentView(I)V

    const p1, 0x7f0b007a

    .line 81
    invoke-virtual {p0, p1}, Lcom/ocean/playback/CamFilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ocean/playback/CamFilePreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 84
    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->fileList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    .line 85
    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFileSize:I

    const-string v1, "Preview Index"

    .line 86
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    .line 87
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->fileList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCamFilePos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p1}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->strCamFileUrl:Ljava/lang/String;

    .line 89
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "[CamFilePreview]:"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->delThread:Landroid/os/HandlerThread;

    .line 90
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->delThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance p1, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;

    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->delThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, p0}, Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;Landroid/os/Looper;Lcom/ocean/playback/CamFilePreviewActivity;)V

    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->delHandler:Lcom/ocean/playback/CamFilePreviewActivity$MyDeleteHandler;

    .line 92
    new-instance p1, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;

    invoke-direct {p1, p0, p0}, Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;-><init>(Lcom/ocean/playback/CamFilePreviewActivity;Lcom/ocean/playback/CamFilePreviewActivity;)V

    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->delMainHandler:Lcom/ocean/playback/CamFilePreviewActivity$MyMainHandler;

    .line 94
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->initVideoView()V

    .line 95
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->initCameraRequest()V

    .line 96
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->system_initTimer()V

    .line 98
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->initPlaybackTopBar()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->isKeepCamAlive:Z

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 138
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 140
    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->detachViews()V

    .line 141
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 142
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 143
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->videoCamFile:Landroid/view/SurfaceView;

    .line 144
    iget-object v1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->release()V

    .line 145
    iput-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->libVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->btnBack2Playback()V

    const/4 p1, 0x1

    return p1

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewVideoLayout(Lorg/videolan/libvlc/interfaces/IVLCVout;IIIIII)V
    .locals 0

    .line 915
    iget-object p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    if-ne p1, p2, :cond_0

    .line 916
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nAllTime:J

    const-wide/16 p1, 0x0

    .line 917
    iput-wide p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCurTime:J

    .line 918
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->txtVideoCurTime:Landroid/widget/TextView;

    iget-wide p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nCurTime:J

    invoke-direct {p0, p2, p3}, Lcom/ocean/playback/CamFilePreviewActivity;->formatVideoTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->txtVideoAllTime:Landroid/widget/TextView;

    iget-wide p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nAllTime:J

    invoke-direct {p0, p2, p3}, Lcom/ocean/playback/CamFilePreviewActivity;->formatVideoTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->processVideo:Landroid/widget/ProgressBar;

    iget-wide p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nAllTime:J

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->isKeepCamAlive:Z

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->nKeepCamAlvieCount:I

    .line 110
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->playCamFile()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->isKeepCamAlive:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1087
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1094
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosX:F

    .line 1095
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosY:F

    goto :goto_0

    .line 1098
    :pswitch_1
    iget p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosX:F

    iget p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosX:F

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x43960000    # 300.0f

    if-lez p1, :cond_0

    iget p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosX:F

    iget v2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosY:F

    iget v2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 1099
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcPlayNext()V

    goto :goto_0

    .line 1100
    :cond_0
    iget p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosX:F

    iget v2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosX:F

    sub-float/2addr p1, v2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosX:F

    iget p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosX:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iget p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mCurPosY:F

    iget p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 1101
    invoke-direct {p0}, Lcom/ocean/playback/CamFilePreviewActivity;->vlcPlayPrev()V

    goto :goto_0

    .line 1090
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosX:F

    .line 1091
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mPosY:F

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 899
    iget-object p2, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz p2, :cond_0

    .line 900
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 901
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1, p3, p4}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    .line 891
    iput-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->holderSurface:Landroid/view/SurfaceHolder;

    .line 892
    iget-object v0, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 893
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1, p0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews(Lorg/videolan/libvlc/interfaces/IVLCVout$OnNewVideoLayoutListener;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 907
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->mediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz p1, :cond_0

    .line 908
    iget-object p1, p0, Lcom/ocean/playback/CamFilePreviewActivity;->outVLC:Lorg/videolan/libvlc/interfaces/IVLCVout;

    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->detachViews()V

    :cond_0
    return-void
.end method
