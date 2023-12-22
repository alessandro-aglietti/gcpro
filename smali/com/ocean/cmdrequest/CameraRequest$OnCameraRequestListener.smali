.class public interface abstract Lcom/ocean/cmdrequest/CameraRequest$OnCameraRequestListener;
.super Ljava/lang/Object;
.source "CameraRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/cmdrequest/CameraRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCameraRequestListener"
.end annotation


# virtual methods
.method public abstract camDidGetBatteryFail()V
.end method

.method public abstract camDidGetBatterySucc(I)V
.end method

.method public abstract camDidGetCmd3031Fail()V
.end method

.method public abstract camDidGetCmd3031Succ(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract camDidGetCmd9026Fail()V
.end method

.method public abstract camDidGetCmd9026Succ(I)V
.end method

.method public abstract camDidGetFileListFail()V
.end method

.method public abstract camDidGetFileListSucc(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract camDidGetIDFail()V
.end method

.method public abstract camDidGetIDSucc(Ljava/lang/String;)V
.end method

.method public abstract camDidGetModeFail()V
.end method

.method public abstract camDidGetModeSucc(I)V
.end method

.method public abstract camDidGetModelIDFail()V
.end method

.method public abstract camDidGetModelIDSucc(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract camDidGetRetStatusFail()V
.end method

.method public abstract camDidGetRetStatusSucc(I)V
.end method

.method public abstract camDidGetSDFreeSpaceFail()V
.end method

.method public abstract camDidGetSDFreeSpaceSucc(I)V
.end method

.method public abstract camDidGetSettingsFail(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract camDidGetSettingsSucc(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract camDidRecordFail(II)V
.end method

.method public abstract camDidRecordSucc(II)V
.end method

.method public abstract camDidSendCmdFail(II)V
.end method

.method public abstract camDidSendCmdSucc(II)V
.end method

.method public abstract camDidSetDateFail()V
.end method

.method public abstract camDidSetDateSucc()V
.end method

.method public abstract camDidSetModeFail(I)V
.end method

.method public abstract camDidSetModeSucc(I)V
.end method

.method public abstract camDidSetTimeFail()V
.end method

.method public abstract camDidSetTimeSucc()V
.end method

.method public abstract camDidSnapshotFail(I)V
.end method

.method public abstract camDidSnapshotSucc(I)V
.end method
