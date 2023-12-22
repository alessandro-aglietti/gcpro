.class Lcom/ocean/gamecamerapro2/SettingsActivity$19;
.super Ljava/util/ArrayList;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9005()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 1

    .line 1004
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$19;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$19;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$19;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$19;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v0, 0x7f0b004e

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$19;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$19;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v0, 0x7f0b004f

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$19;->add(Ljava/lang/Object;)Z

    return-void
.end method
