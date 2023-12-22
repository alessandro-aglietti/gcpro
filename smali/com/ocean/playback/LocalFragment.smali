.class public Lcom/ocean/playback/LocalFragment;
.super Landroidx/fragment/app/Fragment;
.source "LocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;,
        Lcom/ocean/playback/LocalFragment$OnScrollStopListener;,
        Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;,
        Lcom/ocean/playback/LocalFragment$MyWorkHandler;,
        Lcom/ocean/playback/LocalFragment$MyMainHandler;
    }
.end annotation


# static fields
.field private static final BUNDLE_TITLE:Ljava/lang/String; = "title"

.field private static final MAIN_NOTIFY_ADAPTER:I = 0x10001

.field private static final TAG:Ljava/lang/String; = "[LocalFragment]:"

.field private static final WORK_DELETE_PICK_FILE:I = 0x10001

.field private static isDebugLog:Z = false


# instance fields
.field private ablum_loading:Lcom/ocean/widget/RotateLoading;

.field private deleteListener:Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;

.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mDialog:Lcom/ocean/widget/AlertDialog;

.field private mGridView:Landroid/widget/GridView;

.field private myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

.field private myMainHandler:Lcom/ocean/playback/LocalFragment$MyMainHandler;

.field private myWorkHandler:Lcom/ocean/playback/LocalFragment$MyWorkHandler;

.field private pickedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public selectMode:Z

.field private stopListener:Lcom/ocean/playback/LocalFragment$OnScrollStopListener;

.field private wThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 55
    sget-object v0, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MyApplication;->strDownloadPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/ocean/playback/LocalFragment;->filePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnScrollStopListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->stopListener:Lcom/ocean/playback/LocalFragment$OnScrollStopListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$MyWorkHandler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->myWorkHandler:Lcom/ocean/playback/LocalFragment$MyWorkHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ocean/playback/LocalFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->deleteListener:Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$MyMainHandler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->myMainHandler:Lcom/ocean/playback/LocalFragment$MyMainHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ocean/playback/LocalFragment;)Landroid/widget/GridView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ocean/playback/LocalFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ocean/playback/LocalFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object p0
.end method

.method private createDialog()V
    .locals 3

    .line 598
    new-instance v0, Lcom/ocean/widget/AlertDialog;

    invoke-virtual {p0}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ocean/widget/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ocean/widget/AlertDialog;->builder()Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 601
    invoke-virtual {v0, v1}, Lcom/ocean/widget/AlertDialog;->setCancelable(Z)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/playback/LocalFragment$5;

    invoke-direct {v2, p0}, Lcom/ocean/playback/LocalFragment$5;-><init>(Lcom/ocean/playback/LocalFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ocean/playback/LocalFragment$4;

    invoke-direct {v2, p0}, Lcom/ocean/playback/LocalFragment$4;-><init>(Lcom/ocean/playback/LocalFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ocean/widget/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ocean/playback/LocalFragment;->mDialog:Lcom/ocean/widget/AlertDialog;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ocean/playback/LocalFragment;
    .locals 2

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 74
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p0, Lcom/ocean/playback/LocalFragment;

    invoke-direct {p0}, Lcom/ocean/playback/LocalFragment;-><init>()V

    .line 76
    invoke-virtual {p0, v0}, Lcom/ocean/playback/LocalFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public doAllClick()V
    .locals 3

    .line 653
    sget-boolean v0, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[LocalFragment]:"

    const-string v1, "doAllClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 657
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 658
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->updataPickMark(Z)V

    .line 663
    iput-boolean v1, p0, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    goto :goto_1

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 666
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    invoke-virtual {v0, v2}, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->updataPickMark(Z)V

    .line 667
    iput-boolean v2, p0, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public doDeleteClick()V
    .locals 2

    .line 675
    sget-boolean v0, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[LocalFragment]:"

    const-string v1, "doDeleteClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->mDialog:Lcom/ocean/widget/AlertDialog;

    invoke-virtual {v0}, Lcom/ocean/widget/AlertDialog;->show()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public getPickFileList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;"
        }
    .end annotation

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 686
    iget-object v1, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 688
    iget-object v3, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 638
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 639
    sget-boolean p3, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz p3, :cond_0

    const-string p3, "[LocalFragment]:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/playback/LocalFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 128
    new-instance p1, Lcom/ocean/playback/LocalFragment$MyMainHandler;

    invoke-direct {p1, p0}, Lcom/ocean/playback/LocalFragment$MyMainHandler;-><init>(Lcom/ocean/playback/LocalFragment;)V

    iput-object p1, p0, Lcom/ocean/playback/LocalFragment;->myMainHandler:Lcom/ocean/playback/LocalFragment$MyMainHandler;

    .line 129
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "localfragment"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ocean/playback/LocalFragment;->wThread:Landroid/os/HandlerThread;

    .line 130
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance p1, Lcom/ocean/playback/LocalFragment$MyWorkHandler;

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment;->wThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/ocean/playback/LocalFragment$MyWorkHandler;-><init>(Landroid/os/Looper;Lcom/ocean/playback/LocalFragment;)V

    iput-object p1, p0, Lcom/ocean/playback/LocalFragment;->myWorkHandler:Lcom/ocean/playback/LocalFragment$MyWorkHandler;

    .line 133
    invoke-direct {p0}, Lcom/ocean/playback/LocalFragment;->createDialog()V

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

    .line 141
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f07003a

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "hei hei."

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f070001

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ocean/widget/RotateLoading;

    iput-object p2, p0, Lcom/ocean/playback/LocalFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    .line 145
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {p2}, Lcom/ocean/widget/RotateLoading;->start()V

    .line 148
    :cond_0
    new-instance p2, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    invoke-direct {p2, p0}, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;-><init>(Lcom/ocean/playback/LocalFragment;)V

    iput-object p2, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    const p2, 0x7f070083

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/ocean/playback/LocalFragment;->mGridView:Landroid/widget/GridView;

    .line 150
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->mGridView:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->mGridView:Landroid/widget/GridView;

    new-instance p3, Lcom/ocean/playback/LocalFragment$1;

    invoke-direct {p3, p0}, Lcom/ocean/playback/LocalFragment$1;-><init>(Lcom/ocean/playback/LocalFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 178
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->mGridView:Landroid/widget/GridView;

    new-instance p3, Lcom/ocean/playback/LocalFragment$2;

    invoke-direct {p3, p0}, Lcom/ocean/playback/LocalFragment$2;-><init>(Lcom/ocean/playback/LocalFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->mGridView:Landroid/widget/GridView;

    new-instance p3, Lcom/ocean/playback/LocalFragment$3;

    invoke-direct {p3, p0}, Lcom/ocean/playback/LocalFragment$3;-><init>(Lcom/ocean/playback/LocalFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 384
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "[LocalFragment]:"

    const-string v1, "Local Fragement - onPause"

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 378
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "[LocalFragment]:"

    const-string v1, "Local Fragement - onResume"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scroll2Top()V
    .locals 0

    return-void
.end method

.method public setAlbumData(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ocean/obj/CameraFile;",
            ">;Z)V"
        }
    .end annotation

    .line 82
    sget-boolean v0, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[LocalFragment]:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlbumData() - file size0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz p2, :cond_1

    .line 86
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 87
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 88
    sget-boolean p2, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz p2, :cond_1

    const-string p2, "[LocalFragment]:"

    const-string v0, "setAlbumData() - imageLoader clear memory cache"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment;->pickedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 93
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment;->fileList:Ljava/util/ArrayList;

    .line 95
    sget-boolean p2, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz p2, :cond_2

    const-string p2, "[LocalFragment]:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlbumData() - file size1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/obj/CameraFile;

    .line 100
    invoke-virtual {p2}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 101
    sget-boolean v0, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz v0, :cond_4

    const-string v0, "[LocalFragment]:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlbumData() - file name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, ".MOV"

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".MP4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".mov"

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".JPG"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".RAW"

    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".raw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, ".temp"

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    :cond_6
    sget-boolean v0, Lcom/ocean/playback/LocalFragment;->isDebugLog:Z

    if-eqz v0, :cond_7

    const-string v0, "[LocalFragment]:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlbumData() - remove file name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 114
    :cond_8
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    if-eqz p1, :cond_9

    .line 115
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment;->myGridAdapter:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    invoke-virtual {p1}, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_9
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ocean/playback/LocalFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->isStart()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 119
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment;->ablum_loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {p1}, Lcom/ocean/widget/RotateLoading;->stop()V

    :cond_a
    return-void
.end method

.method public setOnDeleteFileListener(Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment;->deleteListener:Lcom/ocean/playback/LocalFragment$OnDeleteFileListener;

    return-void
.end method

.method public setOnScrollStopListener(Lcom/ocean/playback/LocalFragment$OnScrollStopListener;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment;->stopListener:Lcom/ocean/playback/LocalFragment$OnScrollStopListener;

    return-void
.end method
