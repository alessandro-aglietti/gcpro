.class Lcom/ocean/widget/AlertDialog$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/AlertDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/ocean/widget/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/ocean/widget/AlertDialog$1;->this$0:Lcom/ocean/widget/AlertDialog;

    iput-object p2, p0, Lcom/ocean/widget/AlertDialog$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ocean/widget/AlertDialog$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 110
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog$1;->this$0:Lcom/ocean/widget/AlertDialog;

    invoke-static {p1}, Lcom/ocean/widget/AlertDialog;->access$000(Lcom/ocean/widget/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
