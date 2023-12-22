.class public Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field imgArrowRight:Landroid/widget/ImageView;

.field isCanSelected:Z

.field final synthetic this$1:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

.field txtCmdName:Landroid/widget/TextView;

.field txtCmdStatus:Landroid/widget/TextView;

.field type:I


# direct methods
.method public constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter$ViewHolder;->this$1:Lcom/ocean/gamecamerapro2/SettingsActivity$PinnedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
