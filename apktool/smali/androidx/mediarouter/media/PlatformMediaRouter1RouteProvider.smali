.class abstract Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$Api24Impl;,
        Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;,
        Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 56
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    .line 56
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;)V

    return-void
.end method

.method public static obtain(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;
    .locals 2

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 63
    new-instance v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$Api24Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$Api24Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)V

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)V

    return-object v0
.end method


# virtual methods
.method public abstract onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract onSyncRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end method
