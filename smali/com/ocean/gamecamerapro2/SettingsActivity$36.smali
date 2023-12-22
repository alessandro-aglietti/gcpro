.class Lcom/ocean/gamecamerapro2/SettingsActivity$36;
.super Ljava/util/ArrayList;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;->setSettingsCmd2007()V
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
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$36;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "0"

    .line 1146
    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$36;->add(Ljava/lang/Object;)Z

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$36;->add(Ljava/lang/Object;)Z

    return-void
.end method
