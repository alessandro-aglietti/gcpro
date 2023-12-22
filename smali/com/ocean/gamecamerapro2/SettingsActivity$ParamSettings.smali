.class Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParamSettings"
.end annotation


# instance fields
.field public ParamCmdID:Ljava/lang/String;

.field public ParamItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ParamName:Ljava/lang/String;

.field public ParamSelect:Ljava/lang/String;

.field public ParamType:Ljava/lang/String;

.field public ParamUrl:Ljava/lang/String;

.field public ParamValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;->this$0:Lcom/ocean/gamecamerapro2/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ocean/gamecamerapro2/SettingsActivity;Lcom/ocean/gamecamerapro2/SettingsActivity$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/ocean/gamecamerapro2/SettingsActivity$ParamSettings;-><init>(Lcom/ocean/gamecamerapro2/SettingsActivity;)V

    return-void
.end method
