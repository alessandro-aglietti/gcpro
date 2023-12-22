.class public Lcom/ocean/playback/DeviceFragment;
.super Landroidx/fragment/app/Fragment;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;,
        Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;,
        Lcom/ocean/playback/DeviceFragment$OnCamDeleteFileListener;,
        Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;,
        Lcom/ocean/playback/DeviceFragment$ReflashListListener;,
        Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;,
        Lcom/ocean/playback/DeviceFragment$MyWorkHandler;,
        Lcom/ocean/playback/DeviceFragment$MyMainHandler;
    }
.end annotation


# static fields
.field private static final BUNDLE_TITLE:Ljava/lang/String; = "title"

.field private static final MAIN_NOTIFY_ADAPTER:I = 0x10001

.field private static final MAIN_UPDATA_ITEM:I = 0x10002

.field private static final MAIN_UPDATA_PICK_MARK:I = 0x10003

.field private static final TAG:Ljava/lang/String; = "[DeviceFragment]:"

.field private static final WORK_DELETE_PICK_FILE:I = 0x10001

.field private static isDebugLog:Z = false


# instance fields
.field private ablum_loading:Lcom/ocean/widget/RotateLoading;

.field private cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

.field private deleteListener:Lcom/ocean/playback/DeviceFragment$OnCamDeleteFileListener;

.field private dlgDelete:Lcom/ocean/widget/AlertDialog;

.field private downloadFileListener:Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

.field private downloadListener:Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;

.field public downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

.field public downloadTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field private filePlayListener:Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field public isDownLoading:Z

.field private isSelectAll:Z

.field private isStopScrolling:Z

.field private isUpdateThumb:Z

.field private lab_loading:Landroid/widget/TextView;

.field private mGridView:Landroid/widget/GridView;

.field public myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

.field private myMainHandler:Lcom/ocean/playback/DeviceFragment$MyMainHandler;

.field private myWorkHandler:Lcom/ocean/playback/DeviceFragment$MyWorkHandler;

.field private nEndPosVisable:I

.field private nStartPosVisable:I

.field public pickedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reflashListener:Lcom/ocean/playback/DeviceFragment$ReflashListListener;

.field public sdPath:Ljava/lang/String;

.field private stopListener:Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

.field private taskFinishListener:Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

.field private wThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    .line 81
    iput-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isUpdateThumb:Z

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/ocean/playback/DeviceFragment;->isStopScrolling:Z

    .line 84
    sget-object v1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/MyApplication;->strDownloadPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/ocean/playback/DeviceFragment;->sdPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    .line 97
    iput-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    .line 1076
    iput-object v1, p0, Lcom/ocean/playback/DeviceFragment;->stopListener:Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

    .line 1077
    iput v0, p0, Lcom/ocean/playback/DeviceFragment;->nStartPosVisable:I

    .line 1078
    iput v0, p0, Lcom/ocean/playback/DeviceFragment;->nEndPosVisable:I

    .line 1096
    iput-object v1, p0, Lcom/ocean/playback/DeviceFragment;->deleteListener:Lcom/ocean/playback/DeviceFragment$OnCamDeleteFileListener;

    .line 1111
    iput-object v1, p0, Lcom/ocean/playback/DeviceFragment;->downloadFileListener:Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    .line 1128
    iput-object v1, p0, Lcom/ocean/playback/DeviceFragment;->filePlayListener:Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->downloadFileListener:Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$MyWorkHandler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->myWorkHandler:Lcom/ocean/playback/DeviceFragment$MyWorkHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/cmdrequest/CameraRequest;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$MyMainHandler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->myMainHandler:Lcom/ocean/playback/DeviceFragment$MyMainHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ocean/playback/DeviceFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$ReflashListListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->reflashListener:Lcom/ocean/playback/DeviceFragment$ReflashListListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->stopListener:Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ocean/playback/DeviceFragment;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/ocean/playback/DeviceFragment;->isStopScrolling:Z

    return p1
.end method

.method static synthetic access$602(Lcom/ocean/playback/DeviceFragment;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/ocean/playback/DeviceFragment;->nStartPosVisable:I

    return p1
.end method

.method static synthetic access$702(Lcom/ocean/playback/DeviceFragment;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/ocean/playback/DeviceFragment;->nEndPosVisable:I

    return p1
.end method

.method static synthetic access$800(Lcom/ocean/playback/DeviceFragment;Landroid/view/View;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/ocean/playback/DeviceFragment;->doSelectOne(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ocean/playback/DeviceFragment;->filePlayListener:Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;

    return-object p0
.end method

.method private createDialog()V
    .locals 3

    .line 396
    new-instance v0, Lcom/ocean/widget/AlertDialog;

    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ocean/widget/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v0}, Lcom/ocean/widget/AlertDialog;->builder()Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    invoke-virtual {v0, v1}, Lcom/ocean/widget/AlertDialog;->setCancelable(Z)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/playback/DeviceFragment$7;

    invoke-direct {v2, p0}, Lcom/ocean/playback/DeviceFragment$7;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/playback/DeviceFragment$6;

    invoke-direct {v2, p0}, Lcom/ocean/playback/DeviceFragment$6;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/DeviceFragment;->dlgDelete:Lcom/ocean/widget/AlertDialog;

    return-void
.end method

.method private doSelectOne(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f070090

    .line 1011
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1012
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1015
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 p2, 0x8

    .line 1016
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1018
    iput-boolean v1, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initCameraRequest()V
    .locals 2

    .line 1049
    new-instance v0, Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ocean/cmdrequest/CameraRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ocean/playback/DeviceFragment;->cameraRequest:Lcom/ocean/cmdrequest/CameraRequest;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ocean/playback/DeviceFragment;
    .locals 2

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 108
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance p0, Lcom/ocean/playback/DeviceFragment;

    invoke-direct {p0}, Lcom/ocean/playback/DeviceFragment;-><init>()V

    .line 110
    invoke-virtual {p0, v0}, Lcom/ocean/playback/DeviceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public doAllClick()V
    .locals 4

    .line 848
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    const-string v1, "doAllClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    iget-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 851
    invoke-static {}, Lcom/ocean/gamecamerapro2/MyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 852
    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 860
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 862
    iput-boolean v1, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    .line 866
    :cond_2
    iget-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    if-nez v0, :cond_4

    .line 867
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    iget v0, p0, Lcom/ocean/playback/DeviceFragment;->nStartPosVisable:I

    :goto_0
    iget v1, p0, Lcom/ocean/playback/DeviceFragment;->nEndPosVisable:I

    if-gt v0, v1, :cond_3

    .line 870
    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    .line 873
    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-virtual {v1, v0}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataPickMark(Z)V

    goto :goto_1

    .line 875
    :cond_4
    iput-boolean v1, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    .line 876
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataPickMark(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public doDeleteClick()V
    .locals 3

    .line 885
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    const-string v1, "doDeleteClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 890
    :cond_1
    iget-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-eqz v0, :cond_2

    .line 891
    invoke-static {}, Lcom/ocean/gamecamerapro2/MyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 892
    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 891
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->dlgDelete:Lcom/ocean/widget/AlertDialog;

    invoke-virtual {v0}, Lcom/ocean/widget/AlertDialog;->show()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public doDownloadClick()V
    .locals 6

    .line 902
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    const-string v1, "doDownloadClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 908
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 909
    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 911
    iget-object v3, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ocean/obj/CameraFile;

    .line 912
    invoke-virtual {v3}, Lcom/ocean/obj/CameraFile;->getDownloadProgress()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_2

    .line 913
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 915
    :cond_2
    iget-object v2, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-virtual {v2, v3, v5}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->updataItem(Lcom/ocean/obj/CameraFile;I)V

    goto :goto_0

    .line 917
    :cond_3
    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 918
    iput-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    .line 919
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 920
    iput-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    return-void

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 926
    iget-object v2, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    .line 927
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/FileDownloader;->create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v2

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ocean/playback/DeviceFragment;->sdPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFileTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 929
    invoke-interface {v2, v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setTag(Ljava/lang/Object;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 932
    iget-object v3, p0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    sget-boolean v2, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v2, :cond_5

    const-string v2, "[DeviceFragment]:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFileDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 936
    :cond_6
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 938
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_7

    const-string v0, "[DeviceFragment]:"

    const-string v1, "downloader service - disconnect!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_7
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment;->taskFinishListener:Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->addTaskFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 942
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->downloadSequentially(Ljava/util/List;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 946
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->setAutoRetryTimes(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 947
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->setForceReDownload(Z)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 948
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->setCallbackProgressMinInterval(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 950
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->start()V

    .line 952
    iput-boolean v1, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    .line 953
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    iget-boolean v2, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public doPauseDownload()V
    .locals 4

    .line 958
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    const-string v1, "doPauseDownload()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    iget-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-nez v0, :cond_1

    return-void

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 963
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 964
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    goto :goto_0

    .line 966
    :cond_3
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 968
    iget-object v3, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->cleanItem(IZ)V

    goto :goto_1

    .line 971
    :cond_4
    iput-boolean v2, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    .line 972
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    iget-boolean v1, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    return-void
.end method

.method public doPlayClick()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 147
    new-instance p1, Lcom/ocean/playback/DeviceFragment$MyMainHandler;

    invoke-direct {p1, p0}, Lcom/ocean/playback/DeviceFragment$MyMainHandler;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->myMainHandler:Lcom/ocean/playback/DeviceFragment$MyMainHandler;

    .line 148
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "devicefragment"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->wThread:Landroid/os/HandlerThread;

    .line 149
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance p1, Lcom/ocean/playback/DeviceFragment$MyWorkHandler;

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/ocean/playback/DeviceFragment$MyWorkHandler;-><init>(Landroid/os/Looper;Lcom/ocean/playback/DeviceFragment;)V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->myWorkHandler:Lcom/ocean/playback/DeviceFragment$MyWorkHandler;

    .line 151
    invoke-direct {p0}, Lcom/ocean/playback/DeviceFragment;->initCameraRequest()V

    .line 152
    invoke-direct {p0}, Lcom/ocean/playback/DeviceFragment;->createDialog()V

    .line 154
    new-instance p1, Lcom/ocean/playback/DeviceFragment$1;

    invoke-direct {p1, p0}, Lcom/ocean/playback/DeviceFragment$1;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->downloadListener:Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;

    .line 266
    new-instance p1, Lcom/ocean/playback/DeviceFragment$2;

    invoke-direct {p1, p0}, Lcom/ocean/playback/DeviceFragment$2;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->taskFinishListener:Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    .line 273
    new-instance p1, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadListener:Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;

    invoke-direct {p1, v0}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;-><init>(Lcom/liulishuo/filedownloader/FileDownloadListener;)V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->downloadQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 274
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f090005

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f07003a

    .line 285
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "hei hei."

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f070001

    .line 287
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ocean/widget/RotateLoading;

    iput-object p2, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    const p2, 0x7f07005b

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ocean/playback/DeviceFragment;->lab_loading:Landroid/widget/TextView;

    .line 290
    new-instance p2, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-direct {p2, p0}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    iput-object p2, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    const p2, 0x7f070083

    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    .line 292
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    new-instance p3, Lcom/ocean/playback/DeviceFragment$3;

    invoke-direct {p3, p0}, Lcom/ocean/playback/DeviceFragment$3;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 330
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    new-instance p3, Lcom/ocean/playback/DeviceFragment$4;

    invoke-direct {p3, p0}, Lcom/ocean/playback/DeviceFragment$4;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 349
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment;->mGridView:Landroid/widget/GridView;

    new-instance p3, Lcom/ocean/playback/DeviceFragment$5;

    invoke-direct {p3, p0}, Lcom/ocean/playback/DeviceFragment$5;-><init>(Lcom/ocean/playback/DeviceFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 375
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 376
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 366
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 367
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    const-string v1, "onResume ()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->myMainHandler:Lcom/ocean/playback/DeviceFragment$MyMainHandler;

    const v1, 0x10001

    invoke-virtual {v0, v1}, Lcom/ocean/playback/DeviceFragment$MyMainHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 380
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->downloadTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 384
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    goto :goto_0

    .line 387
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public scroll2Top()V
    .locals 0

    return-void
.end method

.method public setAlbumData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;)V"
        }
    .end annotation

    .line 116
    sget-boolean v0, Lcom/ocean/playback/DeviceFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[DeviceFragment]:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlbumData() - file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isDownLoading:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/ocean/playback/DeviceFragment;->isSelectAll:Z

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    .line 126
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput-object p1, v0, Lcom/ocean/gamecamerapro2/MyApplication;->fileList:Ljava/util/ArrayList;

    .line 129
    :try_start_0
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->myGridAdapter:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->isStart()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 138
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->lab_loading:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setOnCamDeleteFileListener(Lcom/ocean/playback/DeviceFragment$OnCamDeleteFileListener;)V
    .locals 0

    .line 1099
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->deleteListener:Lcom/ocean/playback/DeviceFragment$OnCamDeleteFileListener;

    return-void
.end method

.method public setOnCamDownloadFileListener(Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->downloadFileListener:Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;

    return-void
.end method

.method public setOnCamFilePlayListener(Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->filePlayListener:Lcom/ocean/playback/DeviceFragment$OnCamFilePlayListener;

    return-void
.end method

.method public setOnScrollStopListener(Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->stopListener:Lcom/ocean/playback/DeviceFragment$OnScrollStopListener;

    return-void
.end method

.method public setReflashListener(Lcom/ocean/playback/DeviceFragment$ReflashListListener;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment;->reflashListener:Lcom/ocean/playback/DeviceFragment$ReflashListListener;

    return-void
.end method

.method public startLoadingView(Ljava/lang/String;)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->start()V

    .line 1057
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->lab_loading:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment;->lab_loading:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public stopLoadingView()V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->stop()V

    .line 1065
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment;->lab_loading:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
