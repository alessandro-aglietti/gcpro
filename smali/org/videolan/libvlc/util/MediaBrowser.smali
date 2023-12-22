.class public Lorg/videolan/libvlc/util/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/MediaBrowser$EventListener;,
        Lorg/videolan/libvlc/util/MediaBrowser$Flag;
    }
.end annotation


# static fields
.field private static final IGNORE_LIST_OPTION:Ljava/lang/String; = ":ignore-filetypes="

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private mAlive:Z

.field private mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

.field private final mBrowserMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

.field private final mDiscovererMediaArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/videolan/libvlc/interfaces/IMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscovererMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

.field private mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

.field private mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

.field private mHandler:Landroid/os/Handler;

.field private final mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

.field private mIgnoreList:Ljava/lang/String;

.field private mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

.field private final mMediaDiscoverers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/videolan/libvlc/MediaDiscoverer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    const-string v0, "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml"

    .line 52
    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    .line 272
    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$1;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    .line 292
    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$2;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    .line 95
    sget-object v0, Lorg/videolan/libvlc/interfaces/IMediaFactory;->factoryId:Ljava/lang/String;

    invoke-static {v0}, Lorg/videolan/libvlc/FactoryManager;->getFactory(Ljava/lang/String;)Lorg/videolan/libvlc/interfaces/IComponentFactory;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/interfaces/IMediaFactory;

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

    .line 96
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 97
    iget-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/ILibVLC;->retain()Z

    .line 98
    iput-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;Landroid/os/Handler;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/util/MediaBrowser;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V

    .line 110
    iput-object p3, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method private reset()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/MediaDiscoverer;

    .line 115
    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaDiscoverer;->release()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IMedia;->release()V

    .line 120
    iput-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 123
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IMediaList;->release()V

    .line 125
    iput-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    :cond_2
    return-void
.end method

.method private startMediaDiscoverer(Ljava/lang/String;)V
    .locals 3

    .line 152
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/MediaDiscoverer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object p1

    .line 155
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2}, Lorg/videolan/libvlc/MediaList;->setEventListener(Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;Landroid/os/Handler;)V

    .line 156
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 157
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->start()Z

    return-void
.end method


# virtual methods
.method public browse(Landroid/net/Uri;I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/interfaces/IMediaFactory;->getFromUri(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)Lorg/videolan/libvlc/interfaces/IMedia;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/interfaces/IMedia;I)V

    .line 210
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IMedia;->release()V

    return-void
.end method

.method public browse(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/interfaces/IMediaFactory;->getFromLocalPath(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)Lorg/videolan/libvlc/interfaces/IMedia;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/interfaces/IMedia;I)V

    .line 197
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IMedia;->release()V

    return-void
.end method

.method public browse(Lorg/videolan/libvlc/interfaces/IMedia;I)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 224
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IMedia;->retain()Z

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":ignore-filetypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IMedia;->addOption(Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const-string v0, ":no-sub-autodetect-file"

    .line 227
    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IMedia;->addOption(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    const-string v0, ":show-hiddenfiles"

    .line 229
    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IMedia;->addOption(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/16 v0, 0x9

    .line 233
    :cond_2
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 234
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IMedia;->subItems()Lorg/videolan/libvlc/interfaces/IMediaList;

    move-result-object p2

    iput-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    .line 235
    iget-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, v1, v2}, Lorg/videolan/libvlc/interfaces/IMediaList;->setEventListener(Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 236
    invoke-interface {p1, v0, p2}, Lorg/videolan/libvlc/interfaces/IMedia;->parseAsync(II)Z

    .line 237
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    return-void
.end method

.method public changeEventListener(Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 147
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 148
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    return-void
.end method

.method public discoverNetworkShares()V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 165
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 167
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    const/4 v1, 0x1

    .line 168
    invoke-static {v0, v1}, Lorg/videolan/libvlc/MediaDiscoverer;->list(Lorg/videolan/libvlc/interfaces/ILibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "MediaBrowser"

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " discover ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->longName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public discoverNetworkShares(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 183
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 184
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    return-void
.end method

.method public getMediaAt(I)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-ltz p1, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->getMediaCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    invoke-interface {v0, p1}, Lorg/videolan/libvlc/interfaces/IMediaList;->getMediaAt(I)Lorg/videolan/libvlc/interfaces/IMedia;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/videolan/libvlc/interfaces/IMedia;

    .line 257
    :goto_0
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IMedia;->retain()Z

    return-object p1

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getMediaCount()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IMediaList;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 134
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 135
    iget-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/ILibVLC;->release()V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaBrowser released more than one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIgnoreFileTypes(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 269
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    return-void
.end method
