.class Lcom/ocean/widget/IOSAlertDialog$3;
.super Ljava/lang/Object;
.source "IOSAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/widget/IOSAlertDialog;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/IOSAlertDialog;


# direct methods
.method constructor <init>(Lcom/ocean/widget/IOSAlertDialog;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ocean/widget/IOSAlertDialog$3;->this$0:Lcom/ocean/widget/IOSAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/ocean/widget/IOSAlertDialog$3;->this$0:Lcom/ocean/widget/IOSAlertDialog;

    invoke-static {p1}, Lcom/ocean/widget/IOSAlertDialog;->access$000(Lcom/ocean/widget/IOSAlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
