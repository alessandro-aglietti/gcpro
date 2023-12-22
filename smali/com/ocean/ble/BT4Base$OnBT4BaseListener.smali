.class public interface abstract Lcom/ocean/ble/BT4Base$OnBT4BaseListener;
.super Ljava/lang/Object;
.source "BT4Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/ble/BT4Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBT4BaseListener"
.end annotation


# virtual methods
.method public abstract btDidConnected(Lcom/ocean/ble/BLEDeviceObject;)V
.end method

.method public abstract btDidDisconnected(Lcom/ocean/ble/BLEDeviceObject;)V
.end method

.method public abstract btDidGetAddress(Ljava/lang/String;)V
.end method

.method public abstract btDidSearched(Lcom/ocean/ble/BLEDeviceObject;)V
.end method

.method public abstract btDidSendData(Ljava/lang/String;)V
.end method

.method public abstract btDidUpdateDevices()V
.end method

.method public abstract btFailConnecting(I)V
.end method
