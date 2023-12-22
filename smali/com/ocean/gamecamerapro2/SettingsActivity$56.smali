.class Lcom/ocean/gamecamerapro2/SettingsActivity$56;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->wheel_set9004(I)V
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

    .line 1582
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$56;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1586
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
