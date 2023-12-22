.class public interface abstract Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;
.super Ljava/lang/Object;
.source "BLEDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/ble/BLEDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBLEDeviceAdapterListener"
.end annotation


# virtual methods
.method public abstract cellDidDisconnect(I)V
.end method

.method public abstract cellDidRename(I)V
.end method

.method public abstract cellDidSetGpio2(I)V
.end method

.method public abstract cellDidSetGpio3(I)V
.end method
