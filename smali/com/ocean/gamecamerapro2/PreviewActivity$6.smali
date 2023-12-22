.class Lcom/ocean/gamecamerapro2/PreviewActivity$6;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/PreviewActivity;->ui_showPrompt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity;)V
    .locals 0

    .line 1829
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$6;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1833
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
