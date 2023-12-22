.class Lcom/ocean/playback/LocalFragment$2;
.super Ljava/lang/Object;
.source "LocalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/playback/LocalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 179
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 183
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    iget-boolean p1, p1, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    const/4 p4, 0x1

    if-nez p1, :cond_3

    .line 185
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    .line 187
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p2}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object p2

    const-string p5, "."

    .line 190
    invoke-virtual {p2, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p5

    add-int/2addr p5, p4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p5, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "MOV"

    .line 191
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "MP4"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "mp4"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "PHOTO"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "MOVIE"

    .line 195
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p5}, Lcom/ocean/playback/LocalFragment;->access$200(Lcom/ocean/playback/LocalFragment;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p5}, Lcom/ocean/playback/LocalFragment;->access$100(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ocean/obj/CameraFile;

    invoke-virtual {p3}, Lcom/ocean/obj/CameraFile;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 196
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "MOVIE"

    .line 202
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "video/mp4"

    .line 203
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const-string p2, "image/*"

    .line 205
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :goto_2
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-virtual {p2, p1}, Lcom/ocean/playback/LocalFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    const p1, 0x7f070090

    .line 212
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 213
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x0

    if-eqz p2, :cond_4

    .line 214
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 215
    iget-object p3, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p3}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 p2, 0x8

    .line 216
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 218
    :cond_4
    iget-object p2, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p2}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :goto_3
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    invoke-static {p1}, Lcom/ocean/playback/LocalFragment;->access$300(Lcom/ocean/playback/LocalFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 224
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    iput-boolean p5, p1, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    goto :goto_4

    .line 226
    :cond_5
    iget-object p1, p0, Lcom/ocean/playback/LocalFragment$2;->this$0:Lcom/ocean/playback/LocalFragment;

    iput-boolean p4, p1, Lcom/ocean/playback/LocalFragment;->selectMode:Z

    :goto_4
    return-void
.end method
