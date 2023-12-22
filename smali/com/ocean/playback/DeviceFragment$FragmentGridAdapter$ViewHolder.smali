.class Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field circleProgress:Lcom/ocean/widget/CircleProgressView;

.field imgDownloaded:Landroid/widget/ImageView;

.field imgSelected:Landroid/widget/ImageView;

.field imgType:Landroid/widget/ImageView;

.field priview:Landroid/widget/ImageView;

.field selectLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

.field timeLayout:Landroid/widget/RelativeLayout;

.field txtName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;->this$1:Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;Lcom/ocean/playback/DeviceFragment$1;)V
    .locals 0

    .line 826
    invoke-direct {p0, p1}, Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter$ViewHolder;-><init>(Lcom/ocean/playback/DeviceFragment$FragmentGridAdapter;)V

    return-void
.end method
