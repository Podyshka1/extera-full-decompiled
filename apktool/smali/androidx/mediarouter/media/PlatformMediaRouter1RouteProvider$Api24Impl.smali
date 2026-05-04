.class Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$Api24Impl;
.super Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24Impl"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)V

    return-void
.end method


# virtual methods
.method protected onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 664
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V

    .line 665
    iget-object p1, p1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDeviceType(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    return-void
.end method
