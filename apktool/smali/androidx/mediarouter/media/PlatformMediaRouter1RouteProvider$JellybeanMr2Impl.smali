.class Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;
.super Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;
.source "SourceFile"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouterUtils$Callback;
.implements Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr2Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;,
        Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteController;,
        Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;
    }
.end annotation


# static fields
.field private static final LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

.field private static final LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;


# instance fields
.field protected mActiveScan:Z

.field protected final mCallback:Landroid/media/MediaRouter$Callback;

.field protected mCallbackRegistered:Z

.field protected mRouteTypes:I

.field protected final mRouter:Landroid/media/MediaRouter;

.field private final mSyncCallback:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;

.field protected final mSystemRouteRecords:Ljava/util/ArrayList;

.field protected final mUserRouteCategory:Landroid/media/MediaRouter$RouteCategory;

.field protected final mUserRouteRecords:Ljava/util/ArrayList;

.field protected final mVolumeCallback:Landroid/media/MediaRouter$VolumeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)V
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteRecords:Ljava/util/ArrayList;

    .line 149
    iput-object p2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSyncCallback:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;

    .line 150
    const-string/jumbo p2, "media_router"

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaRouter;

    iput-object p2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    .line 153
    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouterUtils;->createCallback(Landroidx/mediarouter/media/MediaRouterUtils$Callback;)Landroid/media/MediaRouter$Callback;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mCallback:Landroid/media/MediaRouter$Callback;

    .line 154
    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouterUtils;->createVolumeCallback(Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;)Landroid/media/MediaRouter$VolumeCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mVolumeCallback:Landroid/media/MediaRouter$VolumeCallback;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 157
    sget v0, Landroidx/mediarouter/R$string;->mr_user_route_category_name:I

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p2, p1, v0}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 161
    invoke-direct {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->updateSystemRoutes()V

    return-void
.end method

.method private addSystemRouteNoPublish(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 2

    .line 230
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v0

    if-gez v0, :cond_0

    .line 231
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->assignRouteId(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    invoke-direct {v1, p1, v0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;-><init>(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->updateSystemRouteDescriptor(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;)V

    .line 234
    iget-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private assignRouteId(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 7

    .line 244
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    .line 245
    const-string p1, "DEFAULT_ROUTE"

    goto :goto_0

    .line 246
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getRouteName(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "ROUTE_%08x"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 247
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    move v3, v0

    .line 251
    :goto_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object v5, v6, v2

    const-string v5, "%s_%d"

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-virtual {p0, v4}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getRoutes()Ljava/util/List;
    .locals 4

    .line 221
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 224
    iget-object v3, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private updateSystemRoutes()V
    .locals 3

    .line 210
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->updateCallback()V

    .line 212
    invoke-direct {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 213
    invoke-direct {p0, v2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->addSystemRouteNoPublish(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->publishRoutes()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I
    .locals 3

    .line 451
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 453
    iget-object v2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    iget-object v2, v2, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I
    .locals 3

    .line 461
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 463
    iget-object v2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    iget-object v2, v2, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected findUserRouteRecord(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I
    .locals 3

    .line 471
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 473
    iget-object v2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    iget-object v2, v2, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .line 567
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getRouteName(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1

    .line 499
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 500
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;
    .locals 1

    .line 481
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 482
    instance-of v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isConnecting(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;)Z
    .locals 0

    .line 598
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result p1

    return p1
.end method

.method protected onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V
    .locals 3

    .line 506
    iget-object v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 508
    sget-object v1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 511
    sget-object v1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 514
    :cond_1
    iget-object v1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 515
    iget-object v1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPlaybackStream(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 516
    iget-object v1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 517
    iget-object v1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 518
    iget-object v1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 519
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setIsSystemRoute(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 521
    iget-object v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 522
    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setEnabled(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 525
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->isConnecting(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    invoke-virtual {p2, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setConnectionState(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 529
    :cond_4
    iget-object v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 531
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPresentationDisplayId(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 534
    :cond_5
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 536
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDescription(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    :cond_6
    return-void
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 1

    .line 166
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 168
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    .line 169
    new-instance v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteController;

    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteController;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    const-string v5, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    :cond_0
    const-string v5, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    move p1, v0

    move v0, v3

    goto :goto_2

    :cond_3
    move p1, v0

    .line 195
    :goto_2
    iget v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouteTypes:I

    if-ne v1, v0, :cond_5

    iget-boolean v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mActiveScan:Z

    if-eq v1, p1, :cond_4

    goto :goto_3

    :cond_4
    return-void

    .line 196
    :cond_5
    :goto_3
    iput v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouteTypes:I

    .line 197
    iput-boolean p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mActiveScan:Z

    .line 198
    invoke-direct {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->updateSystemRoutes()V

    return-void
.end method

.method public onRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->addSystemRouteNoPublish(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->publishRoutes()V

    :cond_0
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 271
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 274
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    .line 275
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->updateSystemRouteDescriptor(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;)V

    .line 276
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->publishRoutes()V

    :cond_0
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 543
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 545
    iget-object v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    .line 546
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 549
    :goto_0
    iget-object v1, v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 550
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 551
    new-instance v1, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    iget-object v2, v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    .line 553
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPresentationDisplayId(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object p1

    .line 554
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object p1

    iput-object p1, v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 555
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->publishRoutes()V

    :cond_1
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 260
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 263
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->publishRoutes()V

    :cond_0
    return-void
.end method

.method public onRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 302
    iget-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    return-void

    .line 314
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 316
    iget-object p2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    .line 317
    iget-object p2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSyncCallback:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;

    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;->onPlatformRouteSelectedByDescriptorId(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    return-void
.end method

.method public onRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 283
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 286
    iget-object v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    .line 287
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p1

    .line 288
    iget-object v1, v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolume()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 289
    new-instance v1, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    iget-object v2, v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    .line 291
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object p1

    iput-object p1, v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 293
    invoke-virtual {p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->publishRoutes()V

    :cond_0
    return-void
.end method

.method public onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 361
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 362
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 363
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    .line 364
    new-instance v1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    invoke-direct {v1, p1, v0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;-><init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 365
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 366
    iget-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mVolumeCallback:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 367
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->updateUserRouteProperties(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;)V

    .line 368
    iget-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    const v1, 0x800003

    .line 375
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecord(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 378
    iget-object v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    .line 379
    iget-object v0, v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    :cond_1
    return-void
.end method

.method public onSyncRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 407
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findUserRouteRecord(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 410
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    .line 411
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->updateUserRouteProperties(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;)V

    :cond_0
    return-void
.end method

.method public onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 388
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 389
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findUserRouteRecord(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 391
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    .line 392
    iget-object v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 393
    iget-object v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 396
    :try_start_0
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 399
    const-string v0, "AxSysMediaRouteProvider"

    const-string v1, "Failed to remove user route"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 418
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 425
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findUserRouteRecord(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 427
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    .line 428
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->selectRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void

    .line 431
    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 433
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    .line 434
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->selectRoute(Landroid/media/MediaRouter$RouteInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    .line 353
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getUserRouteRecord(Landroid/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    :cond_0
    return-void
.end method

.method protected publishRoutes()V
    .locals 4

    .line 440
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    .line 442
    iget-object v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 444
    iget-object v3, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;

    iget-object v3, v3, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v0, v3}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroidx/mediarouter/media/MediaRouteDescriptor;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method protected selectRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 562
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    const v1, 0x800003

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method protected updateCallback()V
    .locals 4

    .line 586
    iget-boolean v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mCallbackRegistered:Z

    .line 592
    iget-boolean v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mActiveScan:Z

    or-int/lit8 v0, v0, 0x2

    .line 593
    iget-object v1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouter:Landroid/media/MediaRouter;

    iget v2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mRouteTypes:I

    iget-object v3, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->mCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    return-void
.end method

.method protected updateSystemRouteDescriptor(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;)V
    .locals 3

    .line 488
    new-instance v0, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    iget-object v1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    iget-object v2, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 489
    invoke-virtual {p0, v2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->getRouteName(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1, v0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V

    .line 491
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    return-void
.end method

.method protected updateUserRouteProperties(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 573
    iget-object v0, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    .line 574
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 575
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 576
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 577
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 578
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 579
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 580
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 581
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
