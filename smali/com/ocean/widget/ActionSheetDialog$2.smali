.class Lcom/ocean/widget/ActionSheetDialog$2;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/ActionSheetDialog;->setSheetItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/ActionSheetDialog;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;


# direct methods
.method constructor <init>(Lcom/ocean/widget/ActionSheetDialog;Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/ocean/widget/ActionSheetDialog$2;->this$0:Lcom/ocean/widget/ActionSheetDialog;

    iput-object p2, p0, Lcom/ocean/widget/ActionSheetDialog$2;->val$listener:Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;

    iput p3, p0, Lcom/ocean/widget/ActionSheetDialog$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/ocean/widget/ActionSheetDialog$2;->val$listener:Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;

    iget v0, p0, Lcom/ocean/widget/ActionSheetDialog$2;->val$index:I

    invoke-interface {p1, v0}, Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;->onClick(I)V

    .line 170
    iget-object p1, p0, Lcom/ocean/widget/ActionSheetDialog$2;->this$0:Lcom/ocean/widget/ActionSheetDialog;

    invoke-static {p1}, Lcom/ocean/widget/ActionSheetDialog;->access$000(Lcom/ocean/widget/ActionSheetDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
