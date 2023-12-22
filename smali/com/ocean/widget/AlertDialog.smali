.class public Lcom/ocean/widget/AlertDialog;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# instance fields
.field private btn_neg:Landroid/widget/Button;

.field private btn_pos:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private display:Landroid/view/Display;

.field private img_line:Landroid/widget/ImageView;

.field private lLayout_bg:Landroid/widget/LinearLayout;

.field private showMsg:Z

.field private showNegBtn:Z

.field private showPosBtn:Z

.field private showTitle:Z

.field private txt_msg:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showTitle:Z

    .line 31
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showMsg:Z

    .line 32
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showPosBtn:Z

    .line 33
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showNegBtn:Z

    .line 36
    iput-object p1, p0, Lcom/ocean/widget/AlertDialog;->context:Landroid/content/Context;

    const-string v0, "window"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 39
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/ocean/widget/AlertDialog;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/widget/AlertDialog;)Landroid/app/Dialog;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ocean/widget/AlertDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private setLayout()V
    .locals 5

    .line 135
    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showTitle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showMsg:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->txt_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ocean/widget/AlertDialog;->context:Landroid/content/Context;

    const v3, 0x7f0b00a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showTitle:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :cond_1
    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showMsg:Z

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_2
    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showPosBtn:Z

    const v2, 0x7f060012

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ocean/widget/AlertDialog;->context:Landroid/content/Context;

    const v4, 0x7f0b00a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v3, Lcom/ocean/widget/AlertDialog$3;

    invoke-direct {v3, p0}, Lcom/ocean/widget/AlertDialog$3;-><init>(Lcom/ocean/widget/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_3
    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    const v3, 0x7f060011

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    const v3, 0x7f060010

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 165
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :cond_4
    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 173
    :cond_5
    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showPosBtn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public builder()Lcom/ocean/widget/AlertDialog;
    .locals 8

    .line 43
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070059

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ocean/widget/AlertDialog;->lLayout_bg:Landroid/widget/LinearLayout;

    const v1, 0x7f0700dc

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ocean/widget/AlertDialog;->txt_title:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->txt_title:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0700d5

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ocean/widget/AlertDialog;->txt_msg:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f07001b

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    .line 52
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f07001e

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    .line 54
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f070043

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ocean/widget/AlertDialog;->img_line:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ocean/widget/AlertDialog;->context:Landroid/content/Context;

    const v3, 0x7f0c0002

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ocean/widget/AlertDialog;->dialog:Landroid/app/Dialog;

    .line 59
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v0, "Makoto"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog Width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ocean/widget/AlertDialog;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double v6, v0, v2

    const/4 v0, -0x2

    if-lez v6, :cond_0

    .line 64
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->lLayout_bg:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x352

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/ocean/widget/AlertDialog;->lLayout_bg:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/ocean/widget/AlertDialog;->display:Landroid/view/Display;

    .line 67
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-int v3, v6

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public setCancelable(Z)Lcom/ocean/widget/AlertDialog;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showMsg:Z

    const-string v0, ""

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog;->txt_msg:Landroid/widget/TextView;

    const-string v0, "\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;
    .locals 2

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showNegBtn:Z

    const-string v0, ""

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->context:Landroid/content/Context;

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog;->btn_neg:Landroid/widget/Button;

    new-instance v0, Lcom/ocean/widget/AlertDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/ocean/widget/AlertDialog$2;-><init>(Lcom/ocean/widget/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showPosBtn:Z

    const-string v0, ""

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    const-string v0, "\u0237\ufffd\ufffd"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v0, Lcom/ocean/widget/AlertDialog$1;

    invoke-direct {v0, p0, p2}, Lcom/ocean/widget/AlertDialog$1;-><init>(Lcom/ocean/widget/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/ocean/widget/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/ocean/widget/AlertDialog;->showTitle:Z

    const-string v0, ""

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog;->txt_title:Landroid/widget/TextView;

    const-string v0, "\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/ocean/widget/AlertDialog;->setLayout()V

    .line 181
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
