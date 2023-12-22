.class Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imgPlay:Landroid/widget/ImageView;

.field priview:Landroid/widget/ImageView;

.field selectLayout:Landroid/widget/RelativeLayout;

.field selected:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

.field timeLayout:Landroid/widget/RelativeLayout;

.field txtName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;->this$1:Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;Lcom/ocean/playback/LocalFragment$1;)V
    .locals 0

    .line 581
    invoke-direct {p0, p1}, Lcom/ocean/playback/LocalFragment$FragmentGridAdapter$ViewHolder;-><init>(Lcom/ocean/playback/LocalFragment$FragmentGridAdapter;)V

    return-void
.end method
