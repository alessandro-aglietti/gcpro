.class public Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/LocalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/ocean/playback/LocalFragment;


# direct methods
.method public constructor <init>(Lcom/ocean/playback/LocalFragment;)V
    .locals 1

    .line 474
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 475
    invoke-virtual {p1}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p1}, Lcom/ocean/playback/LocalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 520
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
    .locals 5

    .line 533
    iget-object p3, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 539
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f090008

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 540
    new-instance p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;-><init>(Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;Lcom/ocean/playback/LocalFragment$1;)V

    const v0, 0x7f07008e

    .line 541
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->priview:Landroid/widget/ImageView;

    const v0, 0x7f070090

    .line 542
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->selected:Landroid/widget/ImageView;

    const v0, 0x7f07008a

    .line 543
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->selectLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f07008c

    .line 544
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    const v0, 0x7f070092

    .line 545
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->timeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f07008f

    .line 546
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->imgPlay:Landroid/widget/ImageView;

    .line 548
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;

    .line 555
    :goto_0
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$900(Lcom/ocean/playback/LocalFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v2}, Lcom/ocean/playback/LocalFragment;->access$200(Lcom/ocean/playback/LocalFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v2}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v2}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->priview:Landroid/widget/ImageView;

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/16 v4, 0x148

    invoke-direct {v3, v4, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 557
    iget-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v1}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v1}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->timeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->selected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 564
    :cond_2
    iget-object v0, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->selected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    :goto_1
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".MOV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    .line 567
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".mov"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    .line 568
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v0}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".MP4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    .line 569
    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p1}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 575
    :cond_3
    iget-object p1, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->imgPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 571
    :cond_4
    :goto_2
    iget-object p1, p3, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->imgPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-object p2
.end method

.method public updataPickMark(Z)V
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$700(Lcom/ocean/playback/LocalFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$700(Lcom/ocean/playback/LocalFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v1}, Lcom/ocean/playback/LocalFragment;->access$700(Lcom/ocean/playback/LocalFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 487
    iget-object v3, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v3}, Lcom/ocean/playback/LocalFragment;->access$700(Lcom/ocean/playback/LocalFragment;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const v4, 0x7f070090

    if-eqz p1, :cond_1

    .line 490
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 492
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateDeleteItem(I)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$700(Lcom/ocean/playback/LocalFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v0}, Lcom/ocean/playback/LocalFragment;->access$700(Lcom/ocean/playback/LocalFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f070090

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
