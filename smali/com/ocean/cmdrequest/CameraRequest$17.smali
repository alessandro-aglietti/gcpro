.class Lcom/ocean/cmdrequest/CameraRequest$17;
.super Ljava/lang/Object;
.source "CameraRequest.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/cmdrequest/CameraRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/cmdrequest/CameraRequest;


# direct methods
.method constructor <init>(Lcom/ocean/cmdrequest/CameraRequest;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 935
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v5, 0x4e2b

    const/16 v6, 0x3e9

    const/4 v7, -0x4

    const/4 v8, -0x3

    const/4 v9, -0x2

    const/4 v10, -0x1

    const/16 v11, 0xbbe

    const/16 v12, 0xbbd

    const/16 v13, 0xbc8

    const/16 v14, 0xbc4

    const/16 v15, 0xbd7

    const/16 v4, 0xbb9

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 981
    :pswitch_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 982
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSetModeFail(I)V

    goto/16 :goto_0

    .line 985
    :cond_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v15, :cond_1

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 986
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetCmd3031Fail()V

    goto/16 :goto_0

    .line 987
    :cond_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v14, :cond_2

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 988
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetModelIDFail()V

    goto/16 :goto_0

    .line 989
    :cond_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v13, :cond_3

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 990
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetModeFail()V

    goto/16 :goto_0

    .line 991
    :cond_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v12, :cond_4

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 992
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSetDateFail()V

    goto/16 :goto_0

    .line 993
    :cond_4
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v11, :cond_5

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 994
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSetTimeFail()V

    goto/16 :goto_0

    .line 995
    :cond_5
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v10, :cond_6

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 996
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdFail(II)V

    goto/16 :goto_0

    .line 997
    :cond_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v9, :cond_7

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 998
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdFail(II)V

    goto/16 :goto_0

    .line 999
    :cond_7
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v8, :cond_8

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1000
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdFail(II)V

    goto/16 :goto_0

    .line 1001
    :cond_8
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_9

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1002
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdFail(II)V

    goto/16 :goto_0

    .line 1003
    :cond_9
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v6, :cond_a

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1004
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSnapshotFail(I)V

    goto/16 :goto_0

    .line 1005
    :cond_a
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_b

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1006
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidRecordFail(II)V

    goto/16 :goto_0

    .line 1007
    :cond_b
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x4e2a

    if-ne v2, v4, :cond_c

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1008
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidRecordFail(II)V

    goto/16 :goto_0

    .line 1009
    :cond_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbc6

    if-ne v2, v4, :cond_d

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1010
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetSettingsFail(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1011
    :cond_d
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbc9

    if-ne v2, v4, :cond_e

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1012
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetSDFreeSpaceFail()V

    goto/16 :goto_0

    .line 1013
    :cond_e
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbc7

    if-ne v2, v4, :cond_f

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1014
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetFileListFail()V

    goto/16 :goto_0

    .line 1015
    :cond_f
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x7e0

    if-ne v2, v4, :cond_10

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1016
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetRetStatusFail()V

    goto/16 :goto_0

    .line 1017
    :cond_10
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbcb

    if-ne v2, v4, :cond_11

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1018
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetBatteryFail()V

    goto/16 :goto_0

    .line 1019
    :cond_11
    iget v1, v1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2342

    if-ne v1, v2, :cond_24

    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1020
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetCmd9026Fail()V

    goto/16 :goto_0

    .line 937
    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_12

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 938
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSetModeSucc(I)V

    goto/16 :goto_0

    .line 941
    :cond_12
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v15, :cond_13

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 942
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetCmd3031Succ(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 943
    :cond_13
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v14, :cond_14

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 944
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetModelIDSucc(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 945
    :cond_14
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v13, :cond_15

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 946
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetModeSucc(I)V

    goto/16 :goto_0

    .line 947
    :cond_15
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v12, :cond_16

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 948
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSetDateSucc()V

    goto/16 :goto_0

    .line 949
    :cond_16
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v11, :cond_17

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 950
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSetTimeSucc()V

    goto/16 :goto_0

    .line 951
    :cond_17
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v10, :cond_18

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 952
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdSucc(II)V

    goto/16 :goto_0

    .line 953
    :cond_18
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v9, :cond_19

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 954
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdSucc(II)V

    goto/16 :goto_0

    .line 955
    :cond_19
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v8, :cond_1a

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 956
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdSucc(II)V

    goto/16 :goto_0

    .line 957
    :cond_1a
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_1b

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 958
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSendCmdSucc(II)V

    goto/16 :goto_0

    .line 959
    :cond_1b
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v6, :cond_1c

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 960
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidSnapshotSucc(I)V

    goto/16 :goto_0

    .line 961
    :cond_1c
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1d

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 962
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidRecordSucc(II)V

    goto/16 :goto_0

    .line 963
    :cond_1d
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x4e2a

    if-ne v2, v4, :cond_1e

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 964
    iget-object v1, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v1}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v1

    invoke-interface {v1, v3, v3}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidRecordSucc(II)V

    goto/16 :goto_0

    .line 965
    :cond_1e
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbc6

    if-ne v2, v4, :cond_1f

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 966
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetSettingsSucc(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 967
    :cond_1f
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbc9

    if-ne v2, v4, :cond_20

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 968
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetSDFreeSpaceSucc(I)V

    goto :goto_0

    .line 969
    :cond_20
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbc7

    if-ne v2, v4, :cond_21

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 970
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetFileListSucc(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 971
    :cond_21
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x7e0

    if-ne v2, v4, :cond_22

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 972
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetRetStatusSucc(I)V

    goto :goto_0

    .line 973
    :cond_22
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xbcb

    if-ne v2, v4, :cond_23

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 974
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetBatterySucc(I)V

    goto :goto_0

    .line 975
    :cond_23
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x2342

    if-ne v2, v4, :cond_24

    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 976
    iget-object v2, v0, Lcom/ocean/cmdrequest/CameraRequest$17;->this$0:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-static {v2}, Lcom/ocean/cmdrequest/CameraRequest;->access$100(Lcom/ocean/cmdrequest/CameraRequest;)Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1}, Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;->camDidGetCmd9026Succ(I)V

    :cond_24
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
