.class Lcom/ocean/gamecamerapro2/SettingsActivity$62;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->initSettingsTopBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 0

    .line 2086
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$62;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2089
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$62;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$62;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$600(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2092
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$62;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 2093
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$62;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$700(Lcom/ocean/gamecamerapro2/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2095
    :cond_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$62;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/SettingsActivity;->access$2700(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    :goto_0
    return-void
.end method
