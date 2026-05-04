.class public final Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SystemRouteController"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 634
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    .line 635
    iput-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteController;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-void
.end method


# virtual methods
.method public onSetVolume(I)V
    .locals 1

    .line 640
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteController;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 1

    .line 645
    iget-object v0, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteController;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return-void
.end method
