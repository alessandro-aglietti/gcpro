.class Lcom/ocean/gamecamerapro2/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity;->gps_enableLocation(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/MainActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$8;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 468
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object p2, p0, Lcom/ocean/gamecamerapro2/MainActivity$8;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/ocean/gamecamerapro2/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
