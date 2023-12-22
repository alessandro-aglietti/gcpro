.class Lcom/ocean/playback/LocalFragment$4;
.super Ljava/lang/Object;
.source "LocalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/LocalFragment;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/playback/LocalFragment;


# direct methods
.method constructor <init>(Lcom/ocean/playback/LocalFragment;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$4;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 618
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$4;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$1000(Lcom/ocean/playback/LocalFragment;)Lcom/ocean/playback/LocalFragment$MyWorkHandler;

    move-result-object p1

    const v0, 0x10001

    invoke-virtual {p1, v0}, Lcom/ocean/playback/LocalFragment$MyWorkHandler;->sendEmptyMessage(I)Z

    return-void
.end method
