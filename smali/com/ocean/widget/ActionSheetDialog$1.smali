.class Lcom/ocean/widget/ActionSheetDialog$1;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/ActionSheetDialog;->builder()Lcom/ocean/widget/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/ocean/widget/ActionSheetDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ocean/widget/ActionSheetDialog$1;->this$0:Lcom/ocean/widget/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/ocean/widget/ActionSheetDialog$1;->this$0:Lcom/ocean/widget/ActionSheetDialog;

    invoke-static {p1}, Lcom/ocean/widget/ActionSheetDialog;->access$000(Lcom/ocean/widget/ActionSheetDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
