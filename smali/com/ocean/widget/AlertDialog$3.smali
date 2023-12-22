.class Lcom/ocean/widget/AlertDialog$3;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/AlertDialog;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ocean/widget/AlertDialog;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/ocean/widget/AlertDialog$3;->this$0:Lcom/ocean/widget/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/ocean/widget/AlertDialog$3;->this$0:Lcom/ocean/widget/AlertDialog;

    invoke-static {p1}, Lcom/ocean/widget/AlertDialog;->access$000(Lcom/ocean/widget/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
