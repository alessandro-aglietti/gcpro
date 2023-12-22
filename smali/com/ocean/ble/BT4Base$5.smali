.class Lcom/ocean/ble/BT4Base$5;
.super Ljava/lang/Object;
.source "BT4Base.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/ble/BT4Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/ble/BT4Base;


# direct methods
.method constructor <init>(Lcom/ocean/ble/BT4Base;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/ocean/ble/BT4Base$5;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/ocean/ble/BT4Base$5;->this$0:Lcom/ocean/ble/BT4Base;

    invoke-static {v0}, Lcom/ocean/ble/BT4Base;->access$1000(Lcom/ocean/ble/BT4Base;)V

    return-void
.end method
