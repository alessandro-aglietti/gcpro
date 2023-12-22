.class public Lcom/ocean/widget/MyLoadingDialog;
.super Landroid/app/Dialog;
.source "MyLoadingDialog.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;


# instance fields
.field private FileCount:I

.field private cancelDownloadInterface:Lcom/ocean/cmdrequest/ForCancelDownload;

.field private for_cancel:Landroid/widget/TextView;

.field private loading:Lcom/ocean/widget/RotateLoading;

.field private progress_text:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;

.field private themeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/ocean/widget/MyLoadingDialog;->FileCount:I

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->cancelDownloadInterface:Lcom/ocean/cmdrequest/ForCancelDownload;

    .line 37
    sget-object p1, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    const v0, 0x7f070080

    invoke-virtual {p1, v0}, Lcom/ocean/widget/MyLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ocean/widget/RotateLoading;

    iput-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->loading:Lcom/ocean/widget/RotateLoading;

    .line 38
    sget-object p1, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    const v0, 0x7f070081

    invoke-virtual {p1, v0}, Lcom/ocean/widget/MyLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->textView:Landroid/widget/TextView;

    .line 39
    sget-object p1, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    const v0, 0x7f0700ae

    invoke-virtual {p1, v0}, Lcom/ocean/widget/MyLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/ocean/widget/MyLoadingDialog;->FileCount:I

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->cancelDownloadInterface:Lcom/ocean/cmdrequest/ForCancelDownload;

    .line 45
    iput p2, p0, Lcom/ocean/widget/MyLoadingDialog;->themeID:I

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/widget/MyLoadingDialog;)Lcom/ocean/cmdrequest/ForCancelDownload;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ocean/widget/MyLoadingDialog;->cancelDownloadInterface:Lcom/ocean/cmdrequest/ForCancelDownload;

    return-object p0
.end method

.method public static createDialog(Landroid/content/Context;)Lcom/ocean/widget/MyLoadingDialog;
    .locals 2

    .line 50
    sput-object p0, Lcom/ocean/widget/MyLoadingDialog;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/ocean/widget/MyLoadingDialog;

    const v1, 0x7f0c0006

    invoke-direct {v0, p0, v1}, Lcom/ocean/widget/MyLoadingDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    .line 52
    sget-object p0, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/ocean/widget/MyLoadingDialog;->setContentView(I)V

    .line 53
    sget-object p0, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    invoke-virtual {p0}, Lcom/ocean/widget/MyLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 v0, 0x11

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 55
    sget-object p0, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->loading:Lcom/ocean/widget/RotateLoading;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->loading:Lcom/ocean/widget/RotateLoading;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v0}, Lcom/ocean/widget/RotateLoading;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public setAllFileCount(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/ocean/widget/MyLoadingDialog;->FileCount:I

    return-void
.end method

.method public setForCancelDownload(Lcom/ocean/cmdrequest/ForCancelDownload;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->cancelDownloadInterface:Lcom/ocean/cmdrequest/ForCancelDownload;

    return-void
.end method

.method public setProgressText(ILjava/lang/String;I)V
    .locals 4

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ocean/widget/MyLoadingDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0079

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ocean/widget/MyLoadingDialog;->FileCount:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ocean/widget/MyLoadingDialog;->FileCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "% , "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "KB/s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 61
    sget-object v0, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MyLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ocean/widget/RotateLoading;

    iput-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->loading:Lcom/ocean/widget/RotateLoading;

    .line 62
    sget-object v0, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MyLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->progress_text:Landroid/widget/TextView;

    .line 63
    sget-object v0, Lcom/ocean/widget/MyLoadingDialog;->myLoadingDialog:Lcom/ocean/widget/MyLoadingDialog;

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/ocean/widget/MyLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->for_cancel:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->for_cancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 66
    iget-object v0, p0, Lcom/ocean/widget/MyLoadingDialog;->for_cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/ocean/widget/MyLoadingDialog$1;

    invoke-direct {v1, p0}, Lcom/ocean/widget/MyLoadingDialog$1;-><init>(Lcom/ocean/widget/MyLoadingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ocean/widget/MyLoadingDialog;->setCancelable(Z)V

    .line 83
    iget-object v1, p0, Lcom/ocean/widget/MyLoadingDialog;->loading:Lcom/ocean/widget/RotateLoading;

    invoke-virtual {v1}, Lcom/ocean/widget/RotateLoading;->start()V

    .line 85
    iget-object v1, p0, Lcom/ocean/widget/MyLoadingDialog;->cancelDownloadInterface:Lcom/ocean/cmdrequest/ForCancelDownload;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ocean/widget/MyLoadingDialog;->for_cancel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/ocean/widget/MyLoadingDialog;->for_cancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
