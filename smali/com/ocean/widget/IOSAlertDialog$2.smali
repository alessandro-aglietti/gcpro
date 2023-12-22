.class Lcom/ocean/widget/IOSAlertDialog$2;
.super Ljava/lang/Object;
.source "IOSAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/IOSAlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/ocean/widget/IOSAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/IOSAlertDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/ocean/widget/IOSAlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ocean/widget/IOSAlertDialog$2;->this$0:Lcom/ocean/widget/IOSAlertDialog;

    iput-object p2, p0, Lcom/ocean/widget/IOSAlertDialog$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ocean/widget/IOSAlertDialog$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 127
    iget-object p1, p0, Lcom/ocean/widget/IOSAlertDialog$2;->this$0:Lcom/ocean/widget/IOSAlertDialog;

    invoke-static {p1}, Lcom/ocean/widget/IOSAlertDialog;->access$000(Lcom/ocean/widget/IOSAlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
