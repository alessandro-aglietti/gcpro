.class public Lcom/ocean/util/StateTag;
.super Ljava/lang/Object;
.source "StateTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/util/StateTag$CameraVersion;
    }
.end annotation


# static fields
.field public static final CONNECT_CAMERA:I = 0x101

.field public static final CONNECT_WIFI_DELAY:I = 0x106

.field public static final EDIT_CAMERA_TIME:I = 0x103

.field public static final HTTP_PATH:Ljava/lang/String; = "http://192.168.8.120:8192"

.field public static final MODE_ERROR:I = -0x1

.field public static final MODE_GALLERY:I = 0x2

.field public static final MODE_PHOTO:I = 0x0

.field public static final MODE_PHOTO_DELAY:I = 0x4

.field public static final MODE_VIDEO:I = 0x1

.field public static final MODE_VIDEO_DELAY:I = 0x3

.field public static final PAUSE:I = 0x3

.field public static final RECORD_START:I = 0x1

.field public static final RECORD_STOP:I = 0x0

.field public static final RESUME:I = 0x1

.field public static final RET_MOVIE_TIMELAPSE_START:I = 0x1

.field public static final RET_MOVIE_TIMELAPSE_STOP:I = 0x2

.field public static final RET_PHOTO_TIMELAPSE_START:I = 0xa

.field public static final RET_PHOTO_TIMELAPSE_STOP:I = 0xb

.field public static final RET_RECORD_STARTED:I = 0x8

.field public static final RET_RECORD_STOPPED:I = 0x9

.field public static final RTSP_PATH:Ljava/lang/String; = "http://192.168.8.120:8192"

.field public static final START_PLAYBACK_ACTIVITY:I = 0x104

.field public static final START_SETTINGS_ACTIVITY:I = 0x105

.field public static final START_VIDEO_ACTIVITY:I = 0x102

.field public static final STOP:I = 0x2

.field public static final UPDATE_WIFI_STATE:I = 0x107

.field public static final WIFIAPP_RET_BATTERY_LOW:I = -0xa

.field public static final WIFIAPP_RET_DISCONNECT:I = -0x64

.field public static final WIFIAPP_RET_NO_CARD:I = -0x17

.field public static final WIFIAPP_RET_NULL:I = -0x63

.field public static final WIFIAPP_RET_STORAGE_FULL:I = -0xb

.field public static final WIFI_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
