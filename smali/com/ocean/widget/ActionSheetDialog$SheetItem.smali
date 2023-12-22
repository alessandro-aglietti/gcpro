.class public Lcom/ocean/widget/ActionSheetDialog$SheetItem;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/widget/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SheetItem"
.end annotation


# instance fields
.field color:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

.field itemClickListener:Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/ocean/widget/ActionSheetDialog;


# direct methods
.method public constructor <init>(Lcom/ocean/widget/ActionSheetDialog;Ljava/lang/String;Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/ocean/widget/ActionSheetDialog$SheetItem;->this$0:Lcom/ocean/widget/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/ocean/widget/ActionSheetDialog$SheetItem;->name:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/ocean/widget/ActionSheetDialog$SheetItem;->color:Lcom/ocean/widget/ActionSheetDialog$SheetItemColor;

    .line 196
    iput-object p4, p0, Lcom/ocean/widget/ActionSheetDialog$SheetItem;->itemClickListener:Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;

    return-void
.end method
