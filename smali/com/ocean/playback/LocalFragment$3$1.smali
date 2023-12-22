.class Lcom/ocean/playback/LocalFragment$3$1;
.super Ljava/lang/Object;
.source "LocalFragment.java"

# interfaces
.implements Lcom/ocean/widget/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/LocalFragment$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ocean/playback/LocalFragment$3;

.field final synthetic val$item_pos:I


# direct methods
.method constructor <init>(Lcom/ocean/playback/LocalFragment$3;I)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$3$1;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iput p2, p0, Lcom/ocean/playback/LocalFragment$3$1;->val$item_pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .line 335
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ocean/playback/LocalFragment$3$1;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iget-object v2, v2, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {v2}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/ocean/playback/LocalFragment$3$1;->val$item_pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ocean/obj/CameraFile;

    invoke-virtual {v2}, Lcom/ocean/obj/CameraFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/ocean/playback/LocalFragment$3$1;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iget-object v0, v0, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    iget-object v1, p0, Lcom/ocean/playback/LocalFragment$3$1;->this$1:Lcom/ocean/playback/LocalFragment$3;

    iget-object v1, v1, Lcom/ocean/playback/LocalFragment$3;->this$0:Lcom/ocean/playback/LocalFragment;

    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2}, Lcom/ocean/playback/LocalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ocean/playback/LocalFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
