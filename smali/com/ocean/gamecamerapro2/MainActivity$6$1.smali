.class Lcom/ocean/gamecamerapro2/MainActivity$6$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/MainActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ocean/gamecamerapro2/MainActivity$6;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity$6;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$6$1;->this$1:Lcom/ocean/gamecamerapro2/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$6$1;->this$1:Lcom/ocean/gamecamerapro2/MainActivity$6;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity$6;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$400(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$6$1;->this$1:Lcom/ocean/gamecamerapro2/MainActivity$6;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity$6;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$500(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$6$1;->this$1:Lcom/ocean/gamecamerapro2/MainActivity$6;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity$6;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$602(Lcom/ocean/gamecamerapro2/MainActivity;I)I

    .line 301
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$6$1;->this$1:Lcom/ocean/gamecamerapro2/MainActivity$6;

    iget-object v0, v0, Lcom/ocean/gamecamerapro2/MainActivity$6;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$700(Lcom/ocean/gamecamerapro2/MainActivity;)V

    return-void
.end method
