.class public Lorg/videolan/libvlc/util/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field public static final AUDIO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYLIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBTITLES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 60

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/util/Extensions;->VIDEO:Ljava/util/HashSet;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/util/Extensions;->AUDIO:Ljava/util/HashSet;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/util/Extensions;->SUBTITLES:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/util/Extensions;->PLAYLIST:Ljava/util/HashSet;

    const-string v1, ".3g2"

    const-string v2, ".3gp"

    const-string v3, ".3gp2"

    const-string v4, ".3gpp"

    const-string v5, ".amv"

    const-string v6, ".asf"

    const-string v7, ".avi"

    const-string v8, ".divx"

    const-string v9, ".drc"

    const-string v10, ".dv"

    const-string v11, ".f4v"

    const-string v12, ".flv"

    const-string v13, ".gvi"

    const-string v14, ".gxf"

    const-string v15, ".h264"

    const-string v16, ".ismv"

    const-string v17, ".iso"

    const-string v18, ".m1v"

    const-string v19, ".m2v"

    const-string v20, ".m2t"

    const-string v21, ".m2ts"

    const-string v22, ".m4v"

    const-string v23, ".mkv"

    const-string v24, ".mov"

    const-string v25, ".mp2"

    const-string v26, ".mp2v"

    const-string v27, ".mp4"

    const-string v28, ".mp4v"

    const-string v29, ".mpe"

    const-string v30, ".mpeg"

    const-string v31, ".mpeg1"

    const-string v32, ".mpeg2"

    const-string v33, ".mpeg4"

    const-string v34, ".mpg"

    const-string v35, ".mpv2"

    const-string v36, ".mts"

    const-string v37, ".mtv"

    const-string v38, ".mxf"

    const-string v39, ".mxg"

    const-string v40, ".nsv"

    const-string v41, ".nut"

    const-string v42, ".nuv"

    const-string v43, ".ogm"

    const-string v44, ".ogv"

    const-string v45, ".ogx"

    const-string v46, ".ps"

    const-string v47, ".rec"

    const-string v48, ".rm"

    const-string v49, ".rmvb"

    const-string v50, ".tod"

    const-string v51, ".ts"

    const-string v52, ".tts"

    const-string v53, ".vob"

    const-string v54, ".vro"

    const-string v55, ".webm"

    const-string v56, ".wm"

    const-string v57, ".wmv"

    const-string v58, ".wtv"

    const-string v59, ".xesc"

    .line 35
    filled-new-array/range {v1 .. v59}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ".3ga"

    const-string v2, ".a52"

    const-string v3, ".aac"

    const-string v4, ".ac3"

    const-string v5, ".adt"

    const-string v6, ".adts"

    const-string v7, ".aif"

    const-string v8, ".aifc"

    const-string v9, ".aiff"

    const-string v10, ".alac"

    const-string v11, ".amr"

    const-string v12, ".aob"

    const-string v13, ".ape"

    const-string v14, ".awb"

    const-string v15, ".caf"

    const-string v16, ".dts"

    const-string v17, ".flac"

    const-string v18, ".it"

    const-string v19, ".m4a"

    const-string v20, ".m4b"

    const-string v21, ".m4p"

    const-string v22, ".mid"

    const-string v23, ".mka"

    const-string v24, ".mlp"

    const-string v25, ".mod"

    const-string v26, ".mpa"

    const-string v27, ".mp1"

    const-string v28, ".mp2"

    const-string v29, ".mp3"

    const-string v30, ".mpc"

    const-string v31, ".mpga"

    const-string v32, ".oga"

    const-string v33, ".ogg"

    const-string v34, ".oma"

    const-string v35, ".opus"

    const-string v36, ".ra"

    const-string v37, ".ram"

    const-string v38, ".rmi"

    const-string v39, ".s3m"

    const-string v40, ".spx"

    const-string v41, ".tta"

    const-string v42, ".voc"

    const-string v43, ".vqf"

    const-string v44, ".w64"

    const-string v45, ".wav"

    const-string v46, ".wma"

    const-string v47, ".wv"

    const-string v48, ".xa"

    const-string v49, ".xm"

    .line 43
    filled-new-array/range {v1 .. v49}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ".idx"

    const-string v3, ".sub"

    const-string v4, ".srt"

    const-string v5, ".ssa"

    const-string v6, ".ass"

    const-string v7, ".smi"

    const-string v8, ".utf"

    const-string v9, ".utf8"

    const-string v10, ".utf-8"

    const-string v11, ".rt"

    const-string v12, ".aqt"

    const-string v13, ".txt"

    const-string v14, ".usf"

    const-string v15, ".jss"

    const-string v16, ".cdg"

    const-string v17, ".psb"

    const-string v18, ".mpsub"

    const-string v19, ".mpl2"

    const-string v20, ".pjs"

    const-string v21, ".dks"

    const-string v22, ".stl"

    const-string v23, ".vtt"

    const-string v24, ".ttml"

    const-string v25, ".mks"

    .line 50
    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, ".m3u"

    const-string v4, ".asx"

    const-string v5, ".b4s"

    const-string v6, ".pls"

    const-string v7, ".xspf"

    .line 55
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 57
    sget-object v4, Lorg/videolan/libvlc/util/Extensions;->VIDEO:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 58
    sget-object v0, Lorg/videolan/libvlc/util/Extensions;->AUDIO:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v0, Lorg/videolan/libvlc/util/Extensions;->SUBTITLES:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 60
    sget-object v0, Lorg/videolan/libvlc/util/Extensions;->PLAYLIST:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
