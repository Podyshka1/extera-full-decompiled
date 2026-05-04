.class public final Landroidx/mediarouter/media/MediaRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouter$RouteInfo;,
        Landroidx/mediarouter/media/MediaRouter$Callback;,
        Landroidx/mediarouter/media/MediaRouter$CallbackRecord;,
        Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;,
        Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;,
        Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;,
        Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    }
.end annotation


# static fields
.field static sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;


# instance fields
.field final mCallbackRecords:Ljava/util/ArrayList;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    const-string v0, "AxMediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    .line 250
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static checkCallingThread()V
    .locals 2

    .line 1021
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1022
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findCallbackRecord(Landroidx/mediarouter/media/MediaRouter$Callback;)I
    .locals 3

    .line 792
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 794
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static getGlobalCallbackCount()I
    .locals 1

    .line 1053
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getCallbackCount()I

    move-result v0

    return v0
.end method

.method static getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;
    .locals 2

    .line 317
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    if-eqz v0, :cond_0

    return-object v0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getGlobalRouter cannot be called when sGlobal is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;
    .locals 2

    if-eqz p0, :cond_1

    .line 278
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 280
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 284
    :cond_0
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getRouter(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p0

    return-object p0

    .line 276
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isGroupVolumeUxEnabled()Z
    .locals 1

    .line 1042
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1045
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isGroupVolumeUxEnabled()Z

    move-result v0

    return v0
.end method

.method public static isMediaTransferEnabled()Z
    .locals 1

    .line 1034
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1037
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v0

    return v0
.end method

.method static isTransferToLocalEnabled()Z
    .locals 1

    .line 1063
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->isTransferToLocalEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, p1, p2, v0}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    return-void
.end method

.method public addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 724
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 732
    invoke-direct {p0, p2}, Landroidx/mediarouter/media/MediaRouter;->findCallbackRecord(Landroidx/mediarouter/media/MediaRouter$Callback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 734
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    invoke-direct {v0, p0, p2}, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;-><init>(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 735
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_0
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 740
    :goto_0
    iget p2, v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    const/4 v1, 0x1

    if-eq p3, p2, :cond_1

    .line 741
    iput p3, v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    move p2, v1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 744
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    move p2, v1

    .line 751
    :cond_2
    iput-wide v2, v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mTimestamp:J

    .line 753
    iget-object p3, v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p3, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->contains(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 754
    new-instance p2, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    iget-object p3, v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-direct {p2, p3}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 755
    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    move-result-object p1

    .line 756
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    iput-object p1, v0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    goto :goto_2

    :cond_3
    move v1, p2

    :goto_2
    if-eqz v1, :cond_4

    .line 760
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateDiscoveryRequest()V

    :cond_4
    return-void

    .line 722
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 719
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMemberToDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 528
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 529
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->addMemberToDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBluetoothRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 377
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 378
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getBluetoothRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 363
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 364
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 951
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/GlobalMediaRouter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public getRouterParams()Landroidx/mediarouter/media/MediaRouterParams;
    .locals 1

    .line 964
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 965
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getRouterParams()Landroidx/mediarouter/media/MediaRouterParams;

    move-result-object v0

    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1

    .line 333
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 334
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 430
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 431
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 584
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 585
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z

    move-result p1

    return p1

    .line 582
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 778
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 784
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter;->findCallbackRecord(Landroidx/mediarouter/media/MediaRouter$Callback;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 786
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 787
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateDiscoveryRequest()V

    :cond_0
    return-void

    .line 776
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeMemberFromDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 541
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 542
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->removeMemberFromDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 539
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 479
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 484
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void

    .line 477
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    .line 942
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 946
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method

.method public setOnPrepareTransferListener(Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;)V
    .locals 1

    .line 808
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 809
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    iput-object p1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mOnPrepareTransferListener:Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;

    return-void
.end method

.method public setRouterParams(Landroidx/mediarouter/media/MediaRouterParams;)V
    .locals 1

    .line 978
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 979
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->setRouterParams(Landroidx/mediarouter/media/MediaRouterParams;)V

    return-void
.end method

.method public transferToRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 554
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 555
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->transferToRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 552
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unselect(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 508
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 512
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/GlobalMediaRouter;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 514
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 515
    invoke-virtual {v0, v1, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_0
    return-void

    .line 506
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported reason to unselect route"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
