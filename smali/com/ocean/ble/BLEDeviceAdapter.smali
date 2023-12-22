.class public Lcom/ocean/ble/BLEDeviceAdapter;
.super Landroid/widget/BaseAdapter;
.source "BLEDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;,
        Lcom/ocean/ble/BLEDeviceAdapter$lvButtonListener;,
        Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;,
        Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG_STATUS_CONNECTED:I = 0x2

.field private static final TAG_STATUS_CONNECTING:I = 0x4

.field private static final TAG_STATUS_DISCONNECTED:I = 0x1

.field private static final TAG_STATUS_DISCONNECTING:I = 0x3


# instance fields
.field private holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

.field private infater:Landroid/view/LayoutInflater;

.field public isDisconnect:Z

.field public isEditName:Z

.field public isEraseFlash:Z

.field private listBLEDevice:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ocean/ble/BLEDeviceObject;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

.field public mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

.field public nSoundPos:I

.field public nUpdateDevPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->infater:Landroid/view/LayoutInflater;

    .line 32
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    .line 33
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->nUpdateDevPos:I

    .line 36
    iput v1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->nSoundPos:I

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->isEditName:Z

    .line 38
    iput-boolean v1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->isDisconnect:Z

    .line 39
    iput-boolean v1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->isEraseFlash:Z

    .line 316
    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mListener:Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

    const-string v0, "layout_inflater"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->infater:Landroid/view/LayoutInflater;

    .line 44
    check-cast p1, Lcom/ocean/gamecamerapro2/MainActivity;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    .line 45
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    iget-object p1, p1, Lcom/ocean/gamecamerapro2/MainActivity;->mBT4Base:Lcom/ocean/ble/BT4Base;

    iget-object p1, p1, Lcom/ocean/ble/BT4Base;->arrayBLEDevices:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ocean/ble/BLEDeviceAdapter;)Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mListener:Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

    return-object p0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mainActivity:Lcom/ocean/gamecamerapro2/MainActivity;

    invoke-virtual {v0}, Lcom/ocean/gamecamerapro2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ui_updateConnectView(ILcom/ocean/ble/BLEDeviceObject;)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->layoutDisconnect:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->layoutConnect:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    iget v0, p2, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    if-ne p1, v0, :cond_0

    .line 270
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDiskInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivEraseFlash:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDiskInfo:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvBMVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvBMVersion:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p2}, Lcom/ocean/ble/BLEDeviceObject;->getDevInfoImage()V

    .line 285
    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p2, Lcom/ocean/ble/BLEDeviceObject;->tagImageID:Ljava/lang/String;

    const-string v1, "drawable"

    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 286
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon2:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon1:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevBg:Landroid/widget/ImageView;

    const v0, 0x7f060040

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDevName2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAMERA-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDevName1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAMERA-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private ui_updateDisconnectView(ILcom/ocean/ble/BLEDeviceObject;)V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->layoutDisconnect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->layoutConnect:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 301
    iget v0, p2, Lcom/ocean/ble/BLEDeviceObject;->nDevPos:I

    if-ne p1, v0, :cond_0

    .line 303
    invoke-virtual {p2}, Lcom/ocean/ble/BLEDeviceObject;->getDevInfoImage()V

    .line 304
    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p2, Lcom/ocean/ble/BLEDeviceObject;->tagImageID:Ljava/lang/String;

    const-string v1, "drawable"

    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 305
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon1:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDevName1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAMERA-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon2:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDevName2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAMERA-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/ocean/ble/BLEDeviceObject;->tagDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    invoke-virtual {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iput-object p3, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/ocean/ble/BLEDeviceAdapter;->infater:Landroid/view/LayoutInflater;

    const p3, 0x7f09000a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance p3, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;-><init>(Lcom/ocean/ble/BLEDeviceAdapter;Landroid/view/View;)V

    iput-object p3, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    .line 109
    iget-object p3, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_1
    iget-object p3, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ocean/ble/BLEDeviceObject;

    .line 118
    iget v0, p3, Lcom/ocean/ble/BLEDeviceObject;->tagStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 120
    invoke-direct {p0, p1, p3}, Lcom/ocean/ble/BLEDeviceAdapter;->ui_updateConnectView(ILcom/ocean/ble/BLEDeviceObject;)V

    goto :goto_2

    .line 124
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/ocean/ble/BLEDeviceAdapter;->ui_updateDisconnectView(ILcom/ocean/ble/BLEDeviceObject;)V

    .line 126
    :goto_2
    iget-object p3, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p3, p3, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivEraseFlash:Landroid/widget/ImageView;

    new-instance v0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;

    invoke-direct {v0, p0, p1}, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;-><init>(Lcom/ocean/ble/BLEDeviceAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object p3, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p3, p3, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDiskInfo:Landroid/widget/ImageView;

    new-instance v0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;

    invoke-direct {v0, p0, p1}, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;-><init>(Lcom/ocean/ble/BLEDeviceAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object p3, p0, Lcom/ocean/ble/BLEDeviceAdapter;->holder:Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;

    iget-object p3, p3, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon2:Landroid/widget/ImageView;

    new-instance v0, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;

    invoke-direct {v0, p0, p1}, Lcom/ocean/ble/BLEDeviceAdapter$lvButtonTouchListener;-><init>(Lcom/ocean/ble/BLEDeviceAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2
.end method

.method public removeItem(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeItem(Lcom/ocean/ble/BLEDeviceObject;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ocean/ble/BLEDeviceAdapter;->listBLEDevice:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lcom/ocean/ble/BLEDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnBLEDeviceAdapterListener(Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter;->mListener:Lcom/ocean/ble/BLEDeviceAdapter$OnBLEDeviceAdapterListener;

    return-void
.end method
