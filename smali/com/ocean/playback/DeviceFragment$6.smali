.class Lcom/ocean/playback/DeviceFragment$6;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/DeviceFragment;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/ocean/playback/DeviceFragment;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$6;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/ocean/playback/DeviceFragment$6;->this$0:Lcom/ocean/playback/DeviceFragment;

    invoke-static {p1}, Lcom/ocean/playback/DeviceFragment;->access$1000(Lcom/ocean/playback/DeviceFragment;)Lcom/ocean/playback/DeviceFragment$MyWorkHandler;

    move-result-object p1

    const v0, 0x10001

    invoke-virtual {p1, v0}, Lcom/ocean/playback/DeviceFragment$MyWorkHandler;->sendEmptyMessage(I)Z

    return-void
.end method
