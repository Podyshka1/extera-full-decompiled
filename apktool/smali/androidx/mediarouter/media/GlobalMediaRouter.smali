.class final Landroidx/mediarouter/media/GlobalMediaRouter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;,
        Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;,
        Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;,
        Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;,
        Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

.field private final mApplicationContext:Landroid/content/Context;

.field private mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mCallbackCount:I

.field final mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

.field private mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field private mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

.field private final mLowRam:Z

.field private mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

.field private mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

.field mOnPrepareTransferListener:Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;

.field private mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

.field private final mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

.field private final mProviderCallback:Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

.field private final mProviders:Ljava/util/ArrayList;

.field private mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

.field private final mRemoteControlClients:Ljava/util/ArrayList;

.field private mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field final mRouteControllerMap:Ljava/util/Map;

.field private mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

.field private final mRouters:Ljava/util/ArrayList;

.field private final mRoutes:Ljava/util/ArrayList;

.field mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field private final mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

.field mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

.field private mTransferReceiverDeclared:Z

.field private final mUniqueIdMap:Ljava/util/Map;

.field private mUseMediaRouter2ForSystemRouting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-string v0, "GlobalMediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-direct {v0}, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 98
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

    .line 100
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$1;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .line 1108
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$2;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    .line 137
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 138
    const-string v0, "activity"

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 139
    invoke-static {v0}, Landroidx/core/app/ActivityManagerCompat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mLowRam:Z

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 145
    invoke-static {p1}, Landroidx/mediarouter/media/MediaTransferReceiver;->isDeclared(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferReceiverDeclared:Z

    .line 147
    invoke-static {p1}, Landroidx/mediarouter/media/SystemRoutingUsingMediaRouter2Receiver;->isDeclared(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mUseMediaRouter2ForSystemRouting:Z

    if-lt v0, v1, :cond_1

    .line 156
    iget-boolean v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferReceiverDeclared:Z

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider;

    new-instance v1, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    invoke-direct {v0, p1, v1}, Landroidx/mediarouter/media/MediaRoute2Provider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRoute2Provider$Callback;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 158
    :goto_1
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 164
    invoke-static {p1, p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->obtain(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    .line 165
    invoke-direct {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->start()V

    return-void
.end method

.method static synthetic access$000(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    return-object p0
.end method

.method static synthetic access$102(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 0

    .line 71
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    return-object p1
.end method

.method static synthetic access$200(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 0

    .line 71
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRoute2Provider;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/mediarouter/media/GlobalMediaRouter;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method private addProvider(Landroidx/mediarouter/media/MediaRouteProvider;Z)V
    .locals 2

    .line 630
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-direct {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;-><init>(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 634
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x201

    invoke-virtual {p2, v1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 640
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 642
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    .line 644
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    :cond_0
    return-void
.end method

.method private findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .locals 5

    .line 688
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 689
    iget-object v4, v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findRemoteControlClientRecord(Landroid/media/RemoteControlClient;)I
    .locals 3

    .line 1231
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1233
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;

    .line 1234
    invoke-virtual {v2}, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;->getRemoteControlClient()Landroid/media/RemoteControlClient;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findRouteByUniqueId(Ljava/lang/String;)I
    .locals 3

    .line 877
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 879
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

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

.method private isSystemDefaultRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 2

    .line 968
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    const-string v0, "DEFAULT_ROUTE"

    .line 969
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 2

    .line 962
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 963
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 964
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setMediaSessionRecord(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;)V
    .locals 1

    .line 1212
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 1215
    :cond_0
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    if-eqz p1, :cond_1

    .line 1217
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    :cond_1
    return-void
.end method

.method private start()V
    .locals 2

    .line 169
    new-instance v0, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    new-instance v1, Landroidx/mediarouter/media/GlobalMediaRouter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 171
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 173
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 179
    :cond_0
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 181
    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->start()V

    return-void
.end method

.method private updateMr2ProviderDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteSelector;Z)V
    .locals 1

    .line 569
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 575
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 580
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 583
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    goto :goto_1

    .line 586
    :cond_3
    new-instance v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-direct {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 595
    :goto_1
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    return-void
.end method

.method private updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 13

    .line 698
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->updateDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    const-string v0, "GlobalMediaRouter"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_d

    .line 707
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    .line 709
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v3

    if-ne p2, v3, :cond_d

    .line 710
    :cond_1
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object p2

    .line 713
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 714
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 716
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v5, v1

    move v6, v5

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0x101

    if-eqz v7, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v7, :cond_8

    .line 718
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isValid()Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    .line 722
    :cond_2
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v9

    .line 723
    invoke-virtual {p1, v9}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteIndexByDescriptorId(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_4

    .line 727
    invoke-virtual {p0, p1, v9}, Landroidx/mediarouter/media/GlobalMediaRouter;->assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 728
    new-instance v11, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 730
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isSystemRoute()Z

    move-result v12

    invoke-direct {v11, p1, v9, v10, v12}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 732
    iget-object v9, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    add-int/lit8 v10, v5, 0x1

    invoke-interface {v9, v5, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 733
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 736
    new-instance v5, Landroidx/core/util/Pair;

    invoke-direct {v5, v11, v7}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 738
    :cond_3
    invoke-virtual {v11, v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 743
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    invoke-virtual {v5, v8, v11}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :goto_1
    move v5, v10

    goto :goto_0

    :cond_4
    if-ge v10, v5, :cond_5

    .line 746
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 748
    :cond_5
    iget-object v8, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 750
    iget-object v9, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    add-int/lit8 v11, v5, 0x1

    invoke-static {v9, v10, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 752
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 753
    new-instance v5, Landroidx/core/util/Pair;

    invoke-direct {v5, v8, v7}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 756
    :cond_6
    invoke-virtual {p0, v8, v7}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v5

    if-eqz v5, :cond_7

    .line 757
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v8, v5, :cond_7

    move v6, v2

    :cond_7
    :goto_2
    move v5, v11

    goto/16 :goto_0

    .line 719
    :cond_8
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring invalid route descriptor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 765
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v1

    :goto_4
    if-ge v0, p2, :cond_a

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    check-cast v7, Landroidx/core/util/Pair;

    .line 766
    iget-object v9, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 767
    iget-object v7, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v9, v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 771
    iget-object v7, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    invoke-virtual {v7, v8, v9}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    goto :goto_4

    .line 773
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v1

    move v1, v6

    :cond_b
    :goto_5
    if-ge v0, p2, :cond_c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Landroidx/core/util/Pair;

    .line 774
    iget-object v6, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 775
    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {p0, v6, v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v3

    if-eqz v3, :cond_b

    .line 776
    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v6, v3, :cond_b

    move v1, v2

    goto :goto_5

    :cond_c
    move p2, v1

    move v1, v5

    goto :goto_6

    .line 782
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring invalid provider descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 786
    :goto_6
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_7
    if-lt v0, v1, :cond_e

    .line 788
    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v4, 0x0

    .line 789
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 791
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 795
    :cond_e
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 802
    iget-object p2, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_8
    if-lt p2, v1, :cond_f

    .line 803
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 807
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x102

    invoke-virtual {v2, v3, v0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_8

    .line 814
    :cond_f
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v0, 0x203

    invoke-virtual {p2, v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addMemberToDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 376
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    .line 380
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isGroupable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 387
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onAddMemberRoute(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to add a non-groupable route to dynamic group : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalMediaRouter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 377
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected dynamic group route."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 625
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    return-void
.end method

.method addRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1

    .line 1170
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->findRemoteControlClientRecord(Landroid/media/RemoteControlClient;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1172
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroid/media/RemoteControlClient;)V

    .line 1173
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 849
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 851
    iget-boolean v1, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mTreatRouteDescriptorIdsAsUnique:Z

    if-eqz v1, :cond_0

    move-object v1, p2

    goto :goto_0

    .line 853
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    :goto_0
    iget-boolean p1, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mTreatRouteDescriptorIdsAsUnique:Z

    if-nez p1, :cond_3

    invoke-direct {p0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_2

    .line 858
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t unique in "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GlobalMediaRouter"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    move v2, p1

    .line 867
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "%s_%d"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 868
    invoke-direct {p0, v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    .line 869
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 855
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 5

    .line 951
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 952
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v3, v4, :cond_0

    .line 953
    invoke-direct {p0, v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 958
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method getBluetoothRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 353
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method getCallbackCount()I
    .locals 1

    .line 599
    iget v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackCount:I

    return v0
.end method

.method getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    .line 341
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    .locals 1

    .line 372
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object p1

    return-object p1
.end method

.method getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 1222
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 1224
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 1225
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getRoute(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 5

    .line 275
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 276
    iget-object v4, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getRouter(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;
    .locals 3

    .line 205
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 206
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter;

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_1
    iget-object v2, v1, Landroidx/mediarouter/media/MediaRouter;->mContext:Landroid/content/Context;

    if-ne v2, p1, :cond_0

    return-object v1

    .line 213
    :cond_2
    new-instance v0, Landroidx/mediarouter/media/MediaRouter;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaRouter;-><init>(Landroid/content/Context;)V

    .line 214
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method getRouterParams()Landroidx/mediarouter/media/MediaRouterParams;
    .locals 1

    .line 289
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    return-object v0
.end method

.method getRoutes()Ljava/util/List;
    .locals 1

    .line 284
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    .line 358
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 887
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 888
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method isGroupVolumeUxEnabled()Z
    .locals 3

    .line 618
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouterParams;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX"

    .line 620
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method isMediaTransferEnabled()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferReceiverDeclared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouterParams;->isMediaTransferReceiverEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z
    .locals 8

    .line 445
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 450
    iget-boolean v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mLowRam:Z

    if-eqz v0, :cond_1

    return v2

    .line 454
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouterParams;->isOutputSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 459
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_6

    .line 461
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_3

    .line 463
    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 468
    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v6

    if-nez v6, :cond_4

    .line 469
    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v6

    iget-object v7, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-eq v6, v7, :cond_4

    goto :goto_2

    .line 472
    :cond_4
    invoke-virtual {v5, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v2

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method isTransferToLocalEnabled()Z
    .locals 1

    .line 609
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 612
    :cond_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouterParams;->isTransferToLocalEnabled()Z

    move-result v0

    return v0
.end method

.method maybeUpdateMemberRouteControllers()V
    .locals 5

    .line 1040
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1043
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    .line 1045
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1046
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1047
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1050
    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 1051
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1052
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1053
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1054
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1055
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    const/4 v4, 0x0

    .line 1056
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 1057
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 1058
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1062
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1063
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1065
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v2

    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 1066
    invoke-virtual {v2, v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v2

    .line 1068
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 1069
    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method notifyTransfer(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 8

    .line 1085
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->cancel()V

    const/4 v0, 0x0

    .line 1087
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 1089
    :cond_0
    new-instance v1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 1093
    iget p1, v1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mOnPrepareTransferListener:Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1097
    :cond_1
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p3, v1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1098
    invoke-interface {p1, p2, p3}, Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;->onPrepareTransfer(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1101
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->finishTransfer()V

    return-void

    .line 1103
    :cond_2
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void

    .line 1095
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->finishTransfer()V

    return-void
.end method

.method public onPlatformRouteSelectedByDescriptorId(Ljava/lang/String;)V
    .locals 2

    .line 1159
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1160
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlatformMediaRouter1RouteProvider:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    invoke-direct {p0, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1164
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    :cond_0
    return-void
.end method

.method public releaseProviderController(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)V
    .locals 0

    .line 671
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-ne p1, p2, :cond_0

    .line 672
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_0
    return-void
.end method

.method removeMemberFromDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 391
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_3

    .line 394
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    .line 395
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "GlobalMediaRouter"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isUnselectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 402
    const-string p1, "Ignoring attempt to remove the last member route."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 406
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onRemoveMemberRoute(Ljava/lang/String;)V

    return-void

    .line 398
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to remove a non-unselectable member route : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 392
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected dynamic group route."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 2

    .line 650
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 653
    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    .line 655
    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 657
    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 662
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x202

    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 663
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1

    .line 1178
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->findRemoteControlClientRecord(Landroid/media/RemoteControlClient;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1180
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;

    .line 1181
    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;->disconnect()V

    :cond_0
    return-void
.end method

.method requestSetVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 255
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    :cond_1
    return-void
.end method

.method requestUpdateVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 267
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    :cond_1
    return-void
.end method

.method selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 2

    .line 424
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GlobalMediaRouter"

    if-nez v0, :cond_0

    .line 425
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select removed route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_0
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-nez v0, :cond_1

    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select disabled route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 435
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 436
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_2

    .line 438
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->transferTo(Ljava/lang/String;)V

    return-void

    .line 440
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 10

    .line 974
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v0, p1, :cond_0

    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 980
    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 981
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    .line 982
    invoke-virtual {v0, v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 983
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 984
    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 989
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->supportsDynamicGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 991
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 992
    invoke-virtual {v0, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 995
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 996
    invoke-static {p2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    .line 995
    invoke-virtual {v0, p2, v1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->setOnDynamicRoutesChangedListener(Ljava/util/concurrent/Executor;Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;)V

    .line 997
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 998
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 999
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    return-void

    .line 1002
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GlobalMediaRouter"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_3
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1013
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 1021
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_5

    .line 1022
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1023
    iput-object v6, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 1024
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, v1, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x106

    invoke-virtual {v0, p1, v2, p2}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    return-void

    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    .line 1029
    invoke-virtual/range {v3 .. v9}, Landroidx/mediarouter/media/GlobalMediaRouter;->notifyTransfer(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    return-void
.end method

.method setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    .line 1190
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_0

    .line 1192
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroid/support/v4/media/session/MediaSessionCompat;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->setMediaSessionRecord(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;)V

    return-void
.end method

.method setRouterParams(Landroidx/mediarouter/media/MediaRouterParams;)V
    .locals 5

    .line 295
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    .line 296
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    .line 298
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    new-instance v4, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;

    invoke-direct {v4, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    invoke-direct {v1, v3, v4}, Landroidx/mediarouter/media/MediaRoute2Provider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRoute2Provider$Callback;)V

    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 302
    invoke-direct {p0, v1, v2}, Landroidx/mediarouter/media/GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 304
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateDiscoveryRequest()V

    .line 305
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->rescan()V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouterParams;->isTransferToLocalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 310
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouterParams;->isTransferToLocalEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq v0, v2, :cond_4

    .line 315
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequestInternal(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    goto :goto_2

    .line 318
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-eqz v0, :cond_4

    .line 319
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->removeProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 321
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->rescan()V

    .line 324
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x301

    invoke-virtual {v0, v1, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    return-void
.end method

.method transferToRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isTransferable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 419
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onUpdateMemberRoutes(Ljava/util/List;)V

    return-void

    .line 415
    :cond_1
    :goto_0
    const-string p1, "GlobalMediaRouter"

    const-string v0, "Ignoring attempt to transfer to a non-transferable route."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 411
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected dynamic group route."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method updateDiscoveryRequest()V
    .locals 14

    .line 484
    new-instance v0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    .line 485
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->reset()V

    .line 488
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 489
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/MediaRouter;

    if-nez v5, :cond_1

    .line 491
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 493
    :cond_1
    iget-object v6, v5, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    .line 496
    iget-object v8, v5, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 497
    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, v9}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 498
    iget v9, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    move v9, v10

    goto :goto_2

    :cond_2
    move v9, v2

    .line 500
    :goto_2
    iget-object v11, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    iget-wide v12, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mTimestamp:J

    invoke-virtual {v11, v9, v12, v13}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->requestActiveScan(ZJ)V

    if-eqz v9, :cond_3

    move v4, v10

    .line 505
    :cond_3
    iget v8, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_4

    .line 506
    iget-boolean v9, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mLowRam:Z

    if-nez v9, :cond_4

    move v4, v10

    :cond_4
    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_5

    move v4, v10

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 517
    :cond_6
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 519
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->finalizeActiveScanAndScheduleSuppressActiveScanRunnable()Z

    move-result v1

    .line 521
    iput v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackCount:I

    if-eqz v4, :cond_7

    .line 522
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v3

    goto :goto_3

    :cond_7
    sget-object v3, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 526
    :goto_3
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateMr2ProviderDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 529
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-eqz v0, :cond_8

    .line 530
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 531
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    if-ne v0, v1, :cond_8

    goto :goto_6

    .line 534
    :cond_8
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 536
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    goto :goto_4

    .line 542
    :cond_a
    new-instance v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-direct {v0, v3, v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    :goto_4
    if-eqz v4, :cond_b

    if-nez v1, :cond_b

    .line 547
    iget-boolean v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mLowRam:Z

    if-eqz v0, :cond_b

    .line 548
    const-string v0, "GlobalMediaRouter"

    const-string v1, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_b
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 558
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 559
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-ne v3, v4, :cond_c

    goto :goto_5

    .line 563
    :cond_c
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    goto :goto_5

    :cond_d
    :goto_6
    return-void
.end method

.method updatePlaybackInfoFromSelectedRoute()V
    .locals 5

    .line 1243
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_5

    .line 1244
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    iput v0, v1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    .line 1245
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    .line 1246
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    .line 1247
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    .line 1248
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    .line 1249
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-ne v0, v1, :cond_0

    .line 1250
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 1251
    invoke-static {v1}, Landroidx/mediarouter/media/MediaRoute2Provider;->getSessionIdForRouteController(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeControlId:Ljava/lang/String;

    goto :goto_0

    .line 1254
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeControlId:Ljava/lang/String;

    .line 1257
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;

    .line 1258
    invoke-virtual {v4}, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    goto :goto_1

    .line 1260
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_6

    .line 1261
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getBluetoothRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 1267
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/4 v2, 0x2

    .line 1271
    :cond_3
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    iget v3, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    iget v4, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    iget-object v0, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeControlId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->configureVolume(IIILjava/lang/String;)V

    return-void

    .line 1263
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    return-void

    .line 1279
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mMediaSession:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_6

    .line 1280
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    :cond_6
    return-void
.end method

.method updateProviderDescriptor(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 683
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    :cond_0
    return-void
.end method

.method updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 2

    .line 819
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result p2

    if-eqz p2, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x104

    invoke-virtual {v0, v1, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :cond_2
    return p2
.end method

.method updateSelectedRouteIfNeeded(Z)V
    .locals 8

    .line 893
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    const-string v2, "GlobalMediaRouter"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 901
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 902
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :cond_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 903
    invoke-direct {p0, v6}, Landroidx/mediarouter/media/GlobalMediaRouter;->isSystemDefaultRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 904
    iput-object v6, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found default route: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing the bluetooth route because it is no longer selectable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 920
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_5

    .line 921
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    :cond_4
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 922
    invoke-direct {p0, v5}, Landroidx/mediarouter/media/GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 923
    iput-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found bluetooth route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    .line 941
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->maybeUpdateMemberRouteControllers()V

    .line 942
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    :cond_7
    return-void

    .line 932
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void
.end method
