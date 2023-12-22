.class Lcom/ocean/widget/CircularProgressButton$3;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/ocean/widget/OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/widget/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/ocean/widget/CircularProgressButton;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    invoke-virtual {v0}, Lcom/ocean/widget/CircularProgressButton;->removeIcon()V

    .line 448
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    invoke-static {v1}, Lcom/ocean/widget/CircularProgressButton;->access$600(Lcom/ocean/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ocean/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ocean/widget/CircularProgressButton;->access$002(Lcom/ocean/widget/CircularProgressButton;Z)Z

    .line 450
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    sget-object v1, Lcom/ocean/widget/CircularProgressButton$State;->IDLE:Lcom/ocean/widget/CircularProgressButton$State;

    invoke-static {v0, v1}, Lcom/ocean/widget/CircularProgressButton;->access$102(Lcom/ocean/widget/CircularProgressButton;Lcom/ocean/widget/CircularProgressButton$State;)Lcom/ocean/widget/CircularProgressButton$State;

    .line 452
    iget-object v0, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    invoke-static {v0}, Lcom/ocean/widget/CircularProgressButton;->access$200(Lcom/ocean/widget/CircularProgressButton;)Lcom/ocean/widget/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ocean/widget/CircularProgressButton$3;->this$0:Lcom/ocean/widget/CircularProgressButton;

    invoke-virtual {v0, v1}, Lcom/ocean/widget/StateManager;->checkState(Lcom/ocean/widget/CircularProgressButton;)V

    return-void
.end method
