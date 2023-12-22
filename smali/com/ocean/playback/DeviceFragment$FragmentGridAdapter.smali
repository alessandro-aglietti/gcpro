.class public Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/DeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/ocean/playback/DeviceFragment;


# direct methods
.method public constructor <init>(Lcom/ocean/playback/DeviceFragment;)V
    .locals 1

    .line 554
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 555
    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Lcom/ocean/playback/DeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanItem(IZ)V
    .locals 3

    .line 717
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p2}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f07008a

    .line 720
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f07008b

    .line 721
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ocean/widget/CircleProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ocean/widget/CircleProgressView;->setValue(I)V

    .line 722
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    invoke-virtual {p1, v0}, Lcom/ocean/widget/CircleProgressView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public cleanItem(Lcom/ocean/obj/CameraFile;Z)V
    .locals 3

    .line 699
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p2}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 701
    :cond_0
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object p2, p2, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 703
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p2}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_1

    .line 706
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p2}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const p2, 0x7f07008a

    .line 709
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f07008b

    .line 710
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ocean/widget/CircleProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ocean/widget/CircleProgressView;->setValue(I)V

    .line 711
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    invoke-virtual {p1, v0}, Lcom/ocean/widget/CircleProgressView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 739
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 752
    iget-object p3, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 759
    iget-object p2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f090008

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 760
    new-instance p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;-><init>(Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;Lcom/ocean/playback/DeviceFragment$1;)V

    const v0, 0x7f07008e

    .line 761
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->priview:Landroid/widget/ImageView;

    const v0, 0x7f07008a

    .line 762
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->selectLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f070092

    .line 763
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->timeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f07008b

    .line 764
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ocean/widget/CircleProgressView;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->circleProgress:Lcom/ocean/widget/CircleProgressView;

    const v0, 0x7f070090

    .line 765
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgSelected:Landroid/widget/ImageView;

    const v0, 0x7f070089

    .line 766
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgDownloaded:Landroid/widget/ImageView;

    const v0, 0x7f070091

    .line 767
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgType:Landroid/widget/ImageView;

    const v0, 0x7f07008c

    .line 768
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    .line 769
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;

    .line 779
    :goto_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$1300(Lcom/ocean/playback/DeviceFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v1, v1, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->priview:Landroid/widget/ImageView;

    new-instance v3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$1;-><init>(Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 803
    iget-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v1, v1, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".MOV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    .line 805
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    .line 806
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".MP4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    .line 807
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 810
    :cond_2
    iget-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgType:Landroid/widget/ImageView;

    const v1, 0x7f060062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 808
    :cond_3
    :goto_1
    iget-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgType:Landroid/widget/ImageView;

    const v1, 0x7f06008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 813
    :goto_2
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getDownloadProgress()I

    move-result v0

    const/16 v1, 0x64

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 814
    iget-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgDownloaded:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 816
    :cond_4
    iget-object v0, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgDownloaded:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    :goto_3
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->pickedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 819
    iget-object p1, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 821
    :cond_5
    iget-object p1, p3, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->imgSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p2
.end method

.method public updataItem(I)V
    .locals 4

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v1, v1, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 638
    iget-object v2, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v2}, Lcom/ocean/playback/DeviceFragment;->access$1300(Lcom/ocean/playback/DeviceFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f07008e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 666
    invoke-static {}, Lcom/ocean/playback/DeviceFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DeviceFragment]:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updataItem() - thumb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 672
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updataItem(Lcom/ocean/obj/CameraFile;I)V
    .locals 6

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/ocean/obj/CameraFile;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 599
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    .line 602
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0x64

    const v1, 0x7f07008a

    const v2, 0x7f070089

    const/4 v3, 0x0

    const v4, 0x7f07008b

    const/16 v5, 0x8

    if-ge p2, v0, :cond_1

    .line 607
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 608
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 610
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    invoke-virtual {p1, p2}, Lcom/ocean/widget/CircleProgressView;->setValue(I)V

    goto :goto_1

    .line 614
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070090

    .line 615
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 616
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 617
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 618
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    invoke-virtual {p1, p2}, Lcom/ocean/widget/CircleProgressView;->setValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 623
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public updataItem(Lcom/ocean/obj/CameraFile;Z)V
    .locals 3

    .line 563
    :try_start_0
    instance-of v0, p1, Lcom/ocean/obj/CameraFile;

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/ocean/obj/CameraFile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    iget-object v0, v0, Lcom/ocean/playback/DeviceFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 568
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    .line 571
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const v0, 0x7f07008a

    .line 574
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f07008b

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 577
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ocean/widget/CircleProgressView;

    check-cast p2, Lcom/ocean/widget/CircleProgressView;

    const/high16 v1, -0x10000

    invoke-virtual {p2, v1}, Lcom/ocean/widget/CircleProgressView;->setTextColor(I)V

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    invoke-virtual {p1, v1}, Lcom/ocean/widget/CircleProgressView;->setColor(I)V

    goto :goto_1

    .line 580
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ocean/widget/CircleProgressView;

    check-cast p2, Lcom/ocean/widget/CircleProgressView;

    invoke-virtual {p2, v1}, Lcom/ocean/widget/CircleProgressView;->setValue(I)V

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ocean/widget/CircleProgressView;

    check-cast p2, Lcom/ocean/widget/CircleProgressView;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Lcom/ocean/widget/CircleProgressView;->setTextColor(I)V

    .line 582
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    check-cast p1, Lcom/ocean/widget/CircleProgressView;

    invoke-virtual {p1, v1}, Lcom/ocean/widget/CircleProgressView;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 588
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public updataPickMark(Z)V
    .locals 6

    .line 678
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v0}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v1}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 684
    iget-object v3, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {v3}, Lcom/ocean/playback/DeviceFragment;->access$200(Lcom/ocean/playback/DeviceFragment;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const v4, 0x7f070090

    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 690
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f07008a

    .line 691
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
