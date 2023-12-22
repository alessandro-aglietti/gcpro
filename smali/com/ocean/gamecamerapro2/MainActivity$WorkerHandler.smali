.class Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/gamecamerapro2/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ocean/gamecamerapro2/MainActivity;Landroid/os/Looper;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    .line 388
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 393
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 394
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 411
    :pswitch_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$900(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->setCameraDate()V

    goto/16 :goto_0

    .line 416
    :pswitch_1
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->G_nDevMode:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iput v0, p1, Lcom/ocean/gamecamerapro2/MainActivity;->G_nDevMode:I

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "Mcu Name"

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/MainActivity;->G_strMcuName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "Project ID"

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectID:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "Project Ver"

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/MainActivity;->G_strProjectVer:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "Build Time"

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/MainActivity;->G_strBuildTime:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "OTG"

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object v4, v4, Lcom/ocean/gamecamerapro2/MainActivity;->G_strOTG:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "Camera Mode"

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    iget v4, v4, Lcom/ocean/gamecamerapro2/MainActivity;->G_nDevMode:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "isEnterFromLogin"

    iget-object v4, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v4}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1000(Lcom/ocean/gamecamerapro2/MainActivity;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "isVideoFiles"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 429
    sget-object p1, Lcom/ocean/gamecamerapro2/MyApplication;->_instance:Lcom/ocean/gamecamerapro2/MyApplication;

    iput v0, p1, Lcom/ocean/gamecamerapro2/MyApplication;->nAppMode:I

    .line 431
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1, v2}, Lcom/ocean/gamecamerapro2/MainActivity;->access$1102(Lcom/ocean/gamecamerapro2/MainActivity;Z)Z

    .line 432
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    const-class v1, Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ocean/gamecamerapro2/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 402
    iput v0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x32

    .line 403
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 404
    iget-object v0, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->access$100(Lcom/ocean/gamecamerapro2/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    iget-object p1, p0, Lcom/ocean/gamecamerapro2/MainActivity$WorkerHandler;->this$0:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-static {p1}, Lcom/ocean/gamecamerapro2/MainActivity;->access$900(Lcom/ocean/gamecamerapro2/MainActivity;)Lcom/ocean/cmdrequest/CameraRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ocean/cmdrequest/CameraRequest;->getCameraModelID()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
