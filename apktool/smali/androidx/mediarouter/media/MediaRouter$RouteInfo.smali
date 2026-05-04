.class public Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    }
.end annotation


# instance fields
.field private mCanDisconnect:Z

.field private mConnectionState:I

.field private final mControlFilters:Ljava/util/ArrayList;

.field private mDescription:Ljava/lang/String;

.field mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field final mDescriptorId:Ljava/lang/String;

.field private mDeviceType:I

.field private mDynamicGroupDescriptors:Ljava/util/Map;

.field mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mIconUri:Landroid/net/Uri;

.field private final mIsSystemRoute:Z

.field private mMemberRoutes:Ljava/util/List;

.field private mName:Ljava/lang/String;

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPresentationDisplay:Landroid/view/Display;

.field private mPresentationDisplayId:I

.field private final mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

.field private mSettingsIntent:Landroid/content/IntentSender;

.field final mUniqueId:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeHandling:I

.field private mVolumeMax:I


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1425
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 1093
    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 1433
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 1434
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 1435
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 1436
    iput-boolean p4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIsSystemRoute:Z

    return-void
.end method

.method private isSameControlFilter(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto :goto_2

    .line 2111
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    .line 2112
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    .line 2116
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2120
    :cond_4
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    .line 2121
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_7

    .line 2125
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method private isSameControlFilters(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 2092
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 2093
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 2095
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2096
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-direct {p0, v2, v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSameControlFilter(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2100
    :cond_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private static isSystemMediaRouteProvider(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 1826
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getMetadata()Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canDisconnect()Z
    .locals 1

    .line 1870
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    return v0
.end method

.method findRouteByDynamicRouteDescriptor(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 2268
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getRouteDescriptor()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    .line 2269
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionState()I
    .locals 1

    .line 1546
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1488
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getDescriptorId()Ljava/lang/String;
    .locals 1

    .line 2234
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1800
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    return v0
.end method

.method public getDynamicGroupController()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 2

    .line 2028
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2030
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2031
    instance-of v1, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v1, :cond_0

    .line 2032
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    .locals 2

    if-eqz p1, :cond_1

    .line 2003
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 2004
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Ljava/util/Map;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;-><init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2001
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1963
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 1501
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1459
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberRoutes()Ljava/util/List;
    .locals 1

    .line 2018
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1474
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackStream()I
    .locals 1

    .line 1790
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .line 1781
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public getPresentationDisplayId()I
    .locals 1

    .line 1954
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    return v0
.end method

.method public getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .locals 1

    .line 1444
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    return-object v0
.end method

.method public getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 1

    .line 2240
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 1851
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    return v0
.end method

.method public getVolumeHandling()I
    .locals 1

    .line 1838
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->isGroupVolumeUxEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1841
    :cond_0
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .locals 1

    .line 1861
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1578
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1579
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultOrBluetooth()Z
    .locals 3

    .line 1806
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1811
    :cond_0
    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSystemMediaRouteProvider(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 1812
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 1813
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 1510
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 1991
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isSelectable()Z
    .locals 1

    .line 1822
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1564
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1565
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1639
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1640
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouteSelector;->matchesControlFilters(Ljava/util/List;)Z

    move-result p1

    return p1

    .line 1637
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 1

    .line 2077
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eq v0, p1, :cond_0

    .line 2078
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestSetVolume(I)V
    .locals 3

    .line 1886
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1887
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->requestSetVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 1

    .line 1903
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    if-eqz p1, :cond_0

    .line 1905
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->requestUpdateVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_0
    return-void
.end method

.method public select()V
    .locals 2

    .line 1982
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1983
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method public supportsControlCategory(Ljava/lang/String;)Z
    .locals 5

    if-eqz p1, :cond_2

    .line 1666
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1668
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/content/IntentFilter;

    .line 1669
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2

    .line 1664
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "category must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2042
    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    .line 2043
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    .line 2044
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUri="

    .line 2045
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    .line 2046
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSystemRoute="

    .line 2047
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIsSystemRoute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectionState="

    .line 2048
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canDisconnect="

    .line 2049
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playbackType="

    .line 2050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playbackStream="

    .line 2051
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    .line 2052
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeHandling="

    .line 2053
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    .line 2054
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeMax="

    .line 2055
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presentationDisplayId="

    .line 2056
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    .line 2057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingsIntent="

    .line 2058
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerPackageName="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2061
    const-string v1, ", members=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_0

    .line 2064
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 2066
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 2069
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2071
    :cond_3
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 7

    .line 2134
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 2136
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2137
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2140
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2141
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    move v1, v2

    .line 2144
    :cond_1
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2145
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    move v1, v2

    .line 2148
    :cond_2
    iget-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_3

    .line 2149
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    move v1, v2

    .line 2152
    :cond_3
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 2153
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    move v1, v2

    .line 2157
    :cond_4
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSameControlFilters(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2158
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2159
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    .line 2162
    :cond_5
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 2163
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    move v1, v2

    .line 2166
    :cond_6
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 2167
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    move v1, v2

    .line 2170
    :cond_7
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 2171
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    move v1, v2

    .line 2174
    :cond_8
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v4

    const/4 v5, 0x3

    if-eq v3, v4, :cond_9

    .line 2175
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    move v1, v5

    .line 2178
    :cond_9
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolume()I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 2179
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolume()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    move v1, v5

    .line 2182
    :cond_a
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 2183
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    goto :goto_1

    :cond_b
    move v5, v1

    .line 2186
    :goto_1
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v3

    if-eq v1, v3, :cond_c

    .line 2187
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    const/4 v1, 0x0

    .line 2188
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    or-int/lit8 v5, v5, 0x5

    .line 2191
    :cond_c
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2192
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    or-int/lit8 v5, v5, 0x1

    .line 2195
    :cond_d
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2196
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    or-int/lit8 v5, v5, 0x1

    .line 2199
    :cond_e
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v3

    if-eq v1, v3, :cond_f

    .line 2200
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    or-int/lit8 v5, v5, 0x5

    .line 2206
    :cond_f
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object p1

    .line 2207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_10

    move v0, v2

    .line 2212
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2213
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v3

    .line 2214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2215
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Landroidx/mediarouter/media/GlobalMediaRouter;->getUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2216
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/GlobalMediaRouter;->getRoute(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2218
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_11

    .line 2219
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move v0, v2

    goto :goto_2

    :cond_12
    if-eqz v0, :cond_13

    .line 2226
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    or-int/lit8 p1, v5, 0x1

    return p1

    :cond_13
    return v5

    :cond_14
    return v0
.end method

.method updateDynamicDescriptors(Ljava/util/Collection;)V
    .locals 4

    .line 2244
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2245
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2246
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Ljava/util/Map;

    .line 2248
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2250
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 2251
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->findRouteByDynamicRouteDescriptor(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2255
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Ljava/util/Map;

    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 2258
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2260
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2263
    :cond_4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object p1

    iget-object p1, p1, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v0, 0x103

    invoke-virtual {p1, v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    return-void
.end method
