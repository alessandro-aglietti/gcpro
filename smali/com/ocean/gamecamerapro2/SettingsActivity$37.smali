.class Lcom/ocean/gamecamerapro2/SettingsActivity$37;
.super Ljava/util/ArrayList;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd9009()V
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

    .line 1159
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$37;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$37;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$37;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$37;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    const v0, 0x7f0b0061

    invoke-virtual {p1, v0}, Lcom/ocean/gamecamerapro2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$37;->add(Ljava/lang/Object;)Z

    return-void
.end method
