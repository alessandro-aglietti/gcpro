.class public Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/ocean/widget/PinnedSectionListView$PinnedSectionListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinnedAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 355
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v1, "RD7000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 386
    iput-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    if-nez p2, :cond_0

    .line 391
    new-instance v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    invoke-direct {v3, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;)V

    iput-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    .line 392
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f090009

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 393
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 395
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    const v4, 0x7f0700cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    .line 396
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    const v4, 0x7f0700ce

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    .line 397
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    const v4, 0x7f070040

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->imgArrowRight:Landroid/widget/ImageView;

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iput-object v2, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    move-object/from16 v2, p2

    .line 403
    :goto_0
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->imgArrowRight:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->isCanSelected:Z

    .line 408
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v8, 0x4

    if-ne v1, v3, :cond_1

    .line 410
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "##0.0"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v6}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$300(Lcom/ocean/gamecamerapro2/SettingsActivity;)F

    move-result v6

    float-to-double v9, v6

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "G"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v9, 0x7f0b003f

    invoke-virtual {v6, v9}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->imgArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 417
    :cond_1
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v3, v6

    if-ne v1, v3, :cond_3

    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strProjectID:Ljava/lang/String;

    const-string v9, "RD7000"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, ""

    .line 420
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$400(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v3

    const/16 v6, 0x65

    if-lt v3, v6, :cond_2

    .line 421
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iput-boolean v5, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->isCanSelected:Z

    goto :goto_1

    .line 424
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$400(Lcom/ocean/gamecamerapro2/SettingsActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    :goto_1
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v9, 0x7f0b0040

    invoke-virtual {v6, v9}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v3, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->imgArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 432
    :cond_3
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v9, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v9}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$500(Lcom/ocean/gamecamerapro2/SettingsActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v1, v9, v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 433
    iget-object v3, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamName:Ljava/lang/String;

    .line 434
    iget-object v9, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    .line 435
    iget-object v10, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamValue:Ljava/util/ArrayList;

    .line 436
    iget-object v11, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamCmdID:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 437
    iget-object v12, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "title"

    .line 439
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 440
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iput v6, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->type:I

    goto/16 :goto_9

    .line 443
    :cond_4
    iget-object v13, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v13, v13, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iput v5, v3, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->type:I

    const/16 v3, 0x232a

    if-ne v11, v3, :cond_7

    .line 447
    iget-object v13, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v13}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "9001"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 448
    iget-object v13, v13, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_5

    const/4 v14, 0x5

    if-ge v12, v14, :cond_5

    const-string v12, "5"

    .line 450
    iput-object v12, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-lez v13, :cond_6

    const/16 v13, 0xa

    if-ge v12, v13, :cond_6

    const-string v12, "10"

    .line 451
    iput-object v12, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    .line 453
    :cond_6
    :goto_2
    iget-object v12, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :cond_7
    const/16 v13, 0x2336

    const/16 v14, 0x2335

    const/16 v15, 0x2330

    const/4 v4, 0x2

    const/16 v7, 0x232c

    if-eq v11, v15, :cond_f

    if-eq v11, v3, :cond_f

    if-ne v11, v7, :cond_8

    goto/16 :goto_5

    :cond_8
    if-eq v11, v14, :cond_e

    if-eq v11, v13, :cond_e

    const/16 v15, 0x2337

    if-eq v11, v15, :cond_e

    const/16 v15, 0x2338

    if-ne v11, v15, :cond_9

    goto :goto_4

    :cond_9
    const/16 v4, 0x2332

    if-ne v11, v4, :cond_a

    .line 474
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/SettingsActivity;->G_strCameraName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_a
    const/16 v4, 0xbc2

    if-eq v11, v4, :cond_d

    const/16 v4, 0xbc3

    if-ne v11, v4, :cond_b

    goto :goto_3

    .line 481
    :cond_b
    iget-object v4, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    if-eqz v4, :cond_13

    if-eqz v10, :cond_13

    .line 482
    iget-object v4, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_c

    .line 483
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_c

    .line 484
    iget-object v9, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v9, v9, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 486
    :cond_c
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    const-string v4, "error"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 477
    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->imgArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 467
    :cond_e
    :goto_4
    div-int/lit8 v9, v12, 0x3c

    .line 468
    rem-int/lit8 v12, v12, 0x3c

    .line 469
    iget-object v10, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    const-string v15, "%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v4, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 458
    :cond_f
    :goto_5
    div-int/lit16 v9, v12, 0xe10

    .line 459
    rem-int/lit16 v10, v12, 0xe10

    div-int/lit8 v10, v10, 0x3c

    .line 460
    rem-int/lit8 v12, v12, 0x3c

    if-ne v11, v7, :cond_10

    .line 461
    iget-object v15, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    const-string v8, "%02d:%02d:%02d"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v4

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_10
    if-eq v11, v15, :cond_11

    if-ne v11, v3, :cond_12

    .line 462
    :cond_11
    iget-object v8, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    const-string v9, "%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_12
    :goto_6
    iget-object v4, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_7
    if-eq v11, v3, :cond_17

    const/16 v1, 0x232b

    if-ne v11, v1, :cond_14

    goto :goto_8

    :cond_14
    if-ne v11, v7, :cond_15

    .line 496
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "9012"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 497
    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    .line 498
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iput-boolean v5, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->isCanSelected:Z

    goto :goto_9

    :cond_15
    const/16 v1, 0x2335

    if-eq v11, v1, :cond_16

    const/16 v1, 0x2336

    if-eq v11, v1, :cond_16

    const/16 v1, 0x2337

    if-eq v11, v1, :cond_16

    const/16 v1, 0x2338

    if-ne v11, v1, :cond_18

    .line 501
    :cond_16
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "9006"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 502
    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    .line 503
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iput-boolean v5, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->isCanSelected:Z

    goto :goto_9

    .line 491
    :cond_17
    :goto_8
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$200(Lcom/ocean/gamecamerapro2/SettingsActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "9012"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;

    .line 492
    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->ParamSelect:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_18

    .line 493
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iput-boolean v5, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->isCanSelected:Z

    .line 507
    :cond_18
    :goto_9
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-boolean v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->isCanSelected:Z

    if-eqz v1, :cond_19

    .line 508
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 511
    :cond_19
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    :goto_a
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->type:I

    if-nez v1, :cond_1a

    const/4 v1, -0x1

    .line 515
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 516
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 517
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 518
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_1a
    const v1, -0xf0f10

    .line 520
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 521
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const v3, -0x737374

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 523
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdName:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 524
    iget-object v1, v0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;->holder:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->txtCmdStatus:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isItemViewTypePinned(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
