.class public Lorg/videolan/libvlc/stubs/StubMediaFactory;
.super Ljava/lang/Object;
.source "StubMediaFactory.java"

# interfaces
.implements Lorg/videolan/libvlc/interfaces/IMediaFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromAssetFileDescriptor(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/content/res/AssetFileDescriptor;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 30
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/content/res/AssetFileDescriptor;)V

    return-object v0
.end method

.method public getFromFileDescriptor(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/io/FileDescriptor;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 25
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getFromLocalPath(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 15
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFromUri(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 20
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    return-object v0
.end method
