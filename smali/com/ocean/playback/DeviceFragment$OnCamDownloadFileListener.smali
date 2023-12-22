.class public interface abstract Lcom/ocean/playback/DeviceFragment$OnCamDownloadFileListener;
.super Ljava/lang/Object;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/DeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCamDownloadFileListener"
.end annotation


# virtual methods
.method public abstract camDidDownloadError()V
.end method

.method public abstract camDidDownloadFileSucc(Lcom/ocean/obj/CameraFile;)V
.end method

.method public abstract camDidDownloadFinished()V
.end method
