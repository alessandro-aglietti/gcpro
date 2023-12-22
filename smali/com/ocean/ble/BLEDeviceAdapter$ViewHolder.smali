.class Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BLEDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ocean/ble/BLEDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivDevBg:Landroid/widget/ImageView;

.field ivDevIcon1:Landroid/widget/ImageView;

.field ivDevIcon2:Landroid/widget/ImageView;

.field ivDiskInfo:Landroid/widget/ImageView;

.field ivEraseFlash:Landroid/widget/ImageView;

.field ivSound:Landroid/widget/ImageView;

.field layoutConnect:Landroid/widget/RelativeLayout;

.field layoutDisconnect:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/ocean/ble/BLEDeviceAdapter;

.field tvBMVersion:Landroid/widget/TextView;

.field tvDevName1:Landroid/widget/TextView;

.field tvDevName2:Landroid/widget/TextView;

.field tvDiskInfo:Landroid/widget/TextView;

.field tv_data:Landroid/widget/TextView;

.field tv_first_v:Landroid/widget/TextView;

.field tv_object:Landroid/widget/TextView;

.field tv_second_v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ocean/ble/BLEDeviceAdapter;Landroid/view/View;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->this$0:Lcom/ocean/ble/BLEDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f070066

    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->layoutDisconnect:Landroid/widget/RelativeLayout;

    const p1, 0x7f070063

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->layoutConnect:Landroid/widget/RelativeLayout;

    const p1, 0x7f070052

    .line 153
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon1:Landroid/widget/ImageView;

    const p1, 0x7f070053

    .line 154
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevIcon2:Landroid/widget/ImageView;

    const p1, 0x7f070054

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDevBg:Landroid/widget/ImageView;

    const p1, 0x7f0700c4

    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDevName1:Landroid/widget/TextView;

    const p1, 0x7f0700c5

    .line 157
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDevName2:Landroid/widget/TextView;

    const p1, 0x7f0700c8

    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tv_object:Landroid/widget/TextView;

    const p1, 0x7f0700c3

    .line 160
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tv_data:Landroid/widget/TextView;

    const p1, 0x7f0700c7

    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tv_first_v:Landroid/widget/TextView;

    const p1, 0x7f0700c9

    .line 162
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tv_second_v:Landroid/widget/TextView;

    const p1, 0x7f070058

    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivSound:Landroid/widget/ImageView;

    const p1, 0x7f070051

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivEraseFlash:Landroid/widget/ImageView;

    const p1, 0x7f070050

    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDiskInfo:Landroid/widget/ImageView;

    const p1, 0x7f0700c6

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDiskInfo:Landroid/widget/TextView;

    const p1, 0x7f0700c2

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvBMVersion:Landroid/widget/TextView;

    .line 170
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivEraseFlash:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->ivDiskInfo:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/ocean/ble/BLEDeviceAdapter$ViewHolder;->tvDiskInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
