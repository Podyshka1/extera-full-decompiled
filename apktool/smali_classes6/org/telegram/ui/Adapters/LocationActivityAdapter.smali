.class public Lorg/telegram/ui/Adapters/LocationActivityAdapter;
.super Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/LocationController$LocationFetchCallback;


# instance fields
.field private addressName:Ljava/lang/String;

.field public animated:Z

.field private askingForMyLocation:Z

.field private chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

.field public city:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

.field private currentAccount:I

.field private currentLiveLocations:Ljava/util/ArrayList;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private customLocation:Landroid/location/Location;

.field private dialogId:J

.field private emptyCell:Landroid/widget/FrameLayout;

.field private fetchingLocation:Z

.field private fromStories:Z

.field private gpsLocation:Landroid/location/Location;

.field private locationType:I

.field private mContext:Landroid/content/Context;

.field private myLocationDenied:Z

.field private needEmptyView:Z

.field private overScrollHeight:I

.field private overrideAddressName:Ljava/lang/String;

.field private previousFetchedLocation:Landroid/location/Location;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

.field private shareLiveLocationPotistion:I

.field private sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private sharedMediaLayoutVisible:Z

.field public street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$9P_6-Sikqqz_XxzhzNExwQbzd7o(Lorg/telegram/ui/Adapters/LocationActivityAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZ)V
    .locals 0

    .line 80
    invoke-direct {p0, p7, p9}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;-><init>(ZZ)V

    .line 48
    sget p7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    const/4 p7, -0x1

    .line 59
    iput p7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    .line 62
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    const/4 p7, 0x1

    .line 69
    iput-boolean p7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->animated:Z

    const/4 p7, 0x0

    .line 104
    iput-boolean p7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    .line 105
    iput-boolean p7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->askingForMyLocation:Z

    .line 81
    iput-boolean p8, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fromStories:Z

    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    .line 83
    iput p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    .line 84
    iput-wide p3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    .line 85
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    .line 86
    iput-object p6, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 427
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->onDirectionClick()V

    return-void
.end method

.method private updateCell()V
    .locals 9

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    if-eqz v0, :cond_11

    .line 196
    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overrideAddressName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overrideAddressName:Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    if-eqz v0, :cond_2

    .line 203
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->UnknownLocation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    sget v2, Lorg/telegram/messenger/R$string;->SetThisLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 209
    const-string v4, ""

    const/4 v5, 0x4

    if-eq v1, v5, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 231
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v1, :cond_5

    .line 232
    sget v1, Lorg/telegram/messenger/R$string;->SendLocation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->AccurateTo:I

    iget-object v5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-int v5, v5

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Meters"

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v2

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    return-void

    .line 235
    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->SendLocation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    sget v2, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    return-void

    .line 211
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overrideAddressName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overrideAddressName:Ljava/lang/String;

    goto/16 :goto_3

    .line 213
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 214
    iget-object v4, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    goto :goto_3

    .line 215
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-nez v0, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v1, :cond_b

    :cond_a
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    if-eqz v1, :cond_c

    .line 216
    :cond_b
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_c
    const/4 v1, 0x2

    .line 217
    const-string v6, "(%f,%f)"

    if-eqz v0, :cond_d

    .line 218
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object v7, v1, v3

    invoke-static {v4, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 219
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_e

    .line 220
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object v7, v1, v3

    invoke-static {v4, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 221
    :cond_e
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-nez v0, :cond_f

    .line 222
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    :cond_f
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-ne v0, v5, :cond_10

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChatSetThisLocation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 227
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    sget v1, Lorg/telegram/messenger/R$string;->SendSelectedLocation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    :cond_11
    return-void
.end method


# virtual methods
.method public fetchLocationAddress()V
    .locals 5

    .line 285
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_9

    .line 294
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    .line 295
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 296
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->biz:Z

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;ILorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 301
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_9

    .line 306
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->previousFetchedLocation:Landroid/location/Location;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 307
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    .line 309
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    .line 310
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 311
    invoke-static {v0, p0}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    return-void

    .line 314
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v0, :cond_9

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->previousFetchedLocation:Landroid/location/Location;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    .line 320
    :cond_6
    iput-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    .line 322
    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    .line 323
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 324
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;ILorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    :cond_9
    return-void
.end method

.method public getAddressName()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8

    .line 578
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    if-nez p1, :cond_0

    return-object v1

    .line 582
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 584
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 585
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 586
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 587
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    return-object p1

    .line 588
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 589
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 590
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    :cond_2
    return-object p1

    .line 594
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-ne p1, v4, :cond_4

    return-object v3

    :cond_4
    if-le p1, v2, :cond_d

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_d

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v3, 0x2

    const/4 v5, 0x3

    if-ne v0, v3, :cond_8

    .line 602
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 603
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_6

    move v3, v5

    :cond_6
    if-lt p1, v3, :cond_7

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1

    :cond_8
    if-ne v0, v4, :cond_9

    if-le p1, v2, :cond_d

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_d

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v3, 0x7

    if-ne v0, v3, :cond_c

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v0, :cond_a

    move v2, v5

    :cond_a
    if-le p1, v2, :cond_b

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_b

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 619
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    if-le p1, v2, :cond_d

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_d

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    if-le p1, v5, :cond_d

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_d

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v1
.end method

.method public getItemCount()I
    .locals 7

    .line 331
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    goto/16 :goto_7

    .line 337
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->biz:Z

    if-eqz v5, :cond_3

    goto/16 :goto_7

    .line 339
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fromStories:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v6, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, 0x3

    :goto_0
    add-int/2addr v2, v6

    goto/16 :goto_7

    :cond_6
    if-ne v0, v2, :cond_8

    .line 342
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    .line 343
    iget-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-eqz v0, :cond_7

    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_7

    move v6, v1

    :cond_7
    add-int v2, v3, v6

    goto :goto_7

    .line 345
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 355
    :cond_9
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-ne v0, v1, :cond_a

    goto :goto_1

    :cond_a
    move v3, v4

    .line 360
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    add-int/2addr v0, v2

    add-int v2, v3, v0

    goto :goto_7

    .line 347
    :cond_b
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-nez v0, :cond_c

    move v3, v4

    goto :goto_4

    :cond_c
    const/4 v5, 0x7

    if-ne v0, v5, :cond_e

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_3

    :cond_d
    move v0, v6

    :goto_3
    add-int/lit8 v3, v0, 0x5

    .line 352
    :cond_e
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-nez v0, :cond_10

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez v4, :cond_10

    :cond_f
    move v4, v2

    goto :goto_5

    :cond_10
    move v4, v6

    :goto_5
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    add-int/2addr v4, v5

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v2, v6

    :goto_6
    sub-int/2addr v4, v2

    add-int v2, v3, v4

    .line 363
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayoutVisible:Z

    if-eqz v0, :cond_12

    add-int/2addr v2, v1

    :cond_12
    return v2
.end method

.method public getItemViewType(I)I
    .locals 11

    .line 633
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayoutVisible:Z

    if-eqz v0, :cond_0

    const/16 p1, 0xd

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 639
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/16 v2, 0x8

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    return v2

    .line 642
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    const/16 p1, 0xb

    return p1

    .line 645
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    return v2

    :cond_4
    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    return v1

    :cond_5
    const/4 v6, 0x2

    if-eq v0, v6, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 653
    :cond_7
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    .line 655
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v8, 0xa

    const/4 v9, 0x3

    if-eqz v7, :cond_c

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v6, :cond_b

    const/16 p1, 0x9

    return p1

    :cond_8
    if-ne p1, v6, :cond_9

    return v8

    :cond_9
    if-ne p1, v9, :cond_a

    return v6

    :cond_a
    if-ne p1, v5, :cond_b

    .line 666
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    return v3

    :cond_b
    return v2

    .line 672
    :cond_c
    iget v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v10, 0x7

    if-ne v7, v6, :cond_10

    const v4, 0x7fffffff

    if-ne p1, v6, :cond_d

    if-eqz v0, :cond_d

    .line 673
    iget v5, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    if-eq v5, v4, :cond_d

    return v10

    :cond_d
    if-ne p1, v1, :cond_f

    if-eqz v0, :cond_e

    .line 677
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    if-ne v0, v4, :cond_e

    return v10

    .line 680
    :cond_e
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    return v3

    :cond_f
    return v2

    :cond_10
    if-ne v7, v1, :cond_1a

    if-ne p1, v1, :cond_11

    return v1

    :cond_11
    if-ne p1, v6, :cond_13

    if-eqz v0, :cond_12

    const/4 p1, -0x1

    .line 691
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    return v10

    .line 694
    :cond_12
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    return v3

    :cond_13
    if-ne p1, v9, :cond_14

    return v8

    :cond_14
    if-ne p1, v5, :cond_15

    return v6

    .line 701
    :cond_15
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez v0, :cond_16

    goto :goto_2

    .line 705
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_22

    return v4

    :cond_17
    :goto_2
    if-gt p1, v10, :cond_19

    .line 702
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez p1, :cond_19

    :cond_18
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-nez p1, :cond_19

    return v9

    :cond_19
    return v5

    .line 710
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 711
    iget v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-ne v2, v10, :cond_1d

    const/16 v2, 0xc

    if-ne p1, v1, :cond_1b

    return v2

    .line 715
    :cond_1b
    iget-object v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v7, :cond_1d

    if-ne p1, v6, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 p1, p1, -0x1

    move v2, v9

    goto :goto_3

    :cond_1d
    move v2, v5

    :goto_3
    if-ne p1, v1, :cond_1e

    return v1

    :cond_1e
    if-ne p1, v6, :cond_1f

    return v8

    :cond_1f
    if-ne p1, v9, :cond_20

    return v6

    .line 729
    :cond_20
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_4

    :cond_21
    add-int/2addr v0, v2

    if-ne p1, v0, :cond_22

    return v4

    :cond_22
    return v9

    :cond_23
    :goto_4
    if-gt p1, v3, :cond_25

    .line 730
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez p1, :cond_25

    :cond_24
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-nez p1, :cond_25

    return v9

    :cond_25
    return v5
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 742
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 744
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 474
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 563
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, p1

    check-cast v6, Lorg/telegram/ui/Cells/LocationCell;

    .line 564
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->askingForMyLocation:Z

    if-eqz p1, :cond_1

    if-ne p2, v5, :cond_0

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz p1, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v6, v1, v3, v4}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;IZ)V

    return-void

    :cond_1
    if-ne p2, v5, :cond_3

    .line 568
    iget-object v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->city:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz p1, :cond_2

    move v10, v5

    goto :goto_0

    :cond_2
    move v10, v4

    :goto_0
    iget-boolean v11, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->animated:Z

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;IZZ)V

    return-void

    .line 570
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->animated:Z

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;IZZ)V

    return-void

    .line 559
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 560
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-eqz p2, :cond_4

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    goto :goto_1

    :cond_4
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 540
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    .line 541
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 542
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(Lorg/telegram/messenger/MessageObject;Landroid/location/Location;Z)V

    return-void

    .line 543
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_6

    .line 544
    iget-wide v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(JLorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    return-void

    .line 545
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_7

    if-ne p2, v5, :cond_7

    .line 546
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(Lorg/telegram/messenger/MessageObject;Landroid/location/Location;Z)V

    return-void

    :cond_7
    if-eqz v0, :cond_8

    const/4 v3, 0x5

    :cond_8
    sub-int/2addr p2, v3

    .line 549
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 550
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_9

    add-int/lit8 p2, p2, -0x1

    :cond_9
    if-ltz p2, :cond_b

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_a

    goto :goto_2

    .line 555
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/location/Location;)V

    :cond_b
    :goto_2
    return-void

    .line 537
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz p2, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    return-void

    .line 531
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SendLocationCell;

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_d

    move v0, v5

    goto :goto_3

    :cond_d
    move v0, v4

    :goto_3
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    add-int/2addr p2, v5

    .line 533
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_e

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemViewType(I)I

    move-result p2

    if-ne p2, v2, :cond_e

    move v4, v5

    :cond_e
    iput-boolean v4, p1, Lorg/telegram/ui/Cells/SendLocationCell;->useDivider:Z

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 528
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/LocationLoadingCell;

    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/LocationLoadingCell;->setLoading(Z)V

    return-void

    .line 498
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/LocationCell;

    .line 500
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-nez v0, :cond_f

    add-int/lit8 p2, p2, -0x4

    goto :goto_6

    :cond_f
    if-eq v0, v2, :cond_11

    const/16 v6, 0x8

    if-ne v0, v6, :cond_10

    goto :goto_5

    :cond_10
    :goto_4
    add-int/lit8 p2, p2, -0x5

    goto :goto_6

    :cond_11
    :goto_5
    add-int/lit8 v6, p2, -0x4

    .line 504
    iget-object v7, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v7, :cond_12

    goto :goto_4

    :cond_12
    move p2, v6

    .line 510
    :goto_6
    iget-boolean v6, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-eqz v6, :cond_14

    if-ne v0, v2, :cond_13

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v0, :cond_14

    :cond_13
    move v4, v5

    :cond_14
    if-eqz v4, :cond_16

    if-ltz p2, :cond_15

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_15

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    goto :goto_7

    .line 518
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p2, v0

    if-ltz v0, :cond_16

    .line 519
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 520
    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    :cond_16
    move v3, p2

    .line 524
    :goto_7
    invoke-virtual {p1, v1, v3, v5}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;IZ)V

    return-void

    .line 489
    :pswitch_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 490
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_17

    .line 491
    sget p2, Lorg/telegram/messenger/R$string;->LiveLocations:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 493
    :cond_17
    sget p2, Lorg/telegram/messenger/R$string;->NearbyVenue:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 485
    :pswitch_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SendLocationCell;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    .line 486
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    return-void

    .line 476
    :pswitch_a
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez p2, :cond_18

    .line 478
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_8

    .line 480
    :cond_18
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 482
    :goto_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 450
    :pswitch_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 446
    :pswitch_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    goto/16 :goto_3

    .line 440
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v1, p1, v2}, Lorg/telegram/ui/Cells/LocationCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 441
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/LocationCell;->setAllowTextAnimation(Z)V

    :goto_0
    move-object p1, p2

    goto/16 :goto_3

    .line 432
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 433
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 434
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getThemedColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 435
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    goto/16 :goto_3

    .line 426
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/LocationDirectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/LocationDirectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 427
    new-instance p2, Lorg/telegram/ui/Adapters/LocationActivityAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/LocationActivityAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/LocationDirectionCell;->setOnButtonClick(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 423
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x36

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v1, 0x10

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_3

    .line 417
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0, v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 418
    iget-wide v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->setDialogId(J)V

    goto :goto_3

    .line 411
    :pswitch_7
    new-instance p2, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v1, v0, p1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 412
    iget-wide v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->setDialogId(J)V

    goto :goto_0

    .line 408
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/LocationPoweredCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/LocationPoweredCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 405
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/LocationLoadingCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/LocationLoadingCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 401
    :pswitch_a
    new-instance p2, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/LocationCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    .line 398
    :pswitch_b
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 395
    :pswitch_c
    new-instance p2, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, p1, p1, v1}, Lorg/telegram/ui/Cells/SendLocationCell;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    .line 390
    :pswitch_d
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    const p2, -0x8100

    .line 391
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 392
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    :goto_3
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDirectionClick()V
    .locals 0

    return-void
.end method

.method public onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V
    .locals 2

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    .line 249
    iput-object p5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->previousFetchedLocation:Landroid/location/Location;

    .line 250
    iget p5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/16 v1, 0x8

    if-ne p5, v1, :cond_0

    .line 251
    iput-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x7

    if-ne p5, p1, :cond_1

    .line 256
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->askingForMyLocation:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 257
    iput-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->city:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 258
    iput-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 261
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    if-ne p5, p1, :cond_6

    .line 263
    iput-object p3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->city:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 264
    iput-object p4, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez p4, :cond_3

    move v0, v1

    :cond_3
    const/4 p1, 0x2

    if-ne p2, v0, :cond_5

    .line 266
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 267
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez p2, :cond_4

    .line 268
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    .line 270
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    .line 273
    :cond_5
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void

    .line 276
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    return-void
.end method

.method public setAddressNameOverride(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overrideAddressName:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    return-void
.end method

.method public setChatLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    return-void
.end method

.method public setCustomLocation(Landroid/location/Location;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchLocationAddress()V

    .line 170
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-nez p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchLocationAddress()V

    :cond_1
    if-eqz v0, :cond_2

    .line 142
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    if-lez p1, :cond_2

    .line 143
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 145
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 146
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateLiveLocations()V

    return-void

    .line 148
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    return-void

    .line 151
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateLiveLocations()V

    return-void
.end method

.method public setLiveLocations(Ljava/util/ArrayList;)V
    .locals 4

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    .line 175
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 176
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 177
    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-wide v2, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 187
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMyLocationDenied(ZZ)V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->askingForMyLocation:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 109
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    .line 110
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->askingForMyLocation:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->city:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 113
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->street:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 115
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOverScrollHeight(I)V
    .locals 2

    .line 119
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez p1, :cond_0

    .line 123
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 125
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 127
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    :cond_1
    return-void
.end method

.method public setSharedMediaLayout(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    return-void
.end method

.method public setSharedMediaLayoutVisible(Z)Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayoutVisible:Z

    if-eq v0, p1, :cond_0

    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sharedMediaLayoutVisible:Z

    .line 98
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setUpdateRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public updateLiveLocations()V
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
