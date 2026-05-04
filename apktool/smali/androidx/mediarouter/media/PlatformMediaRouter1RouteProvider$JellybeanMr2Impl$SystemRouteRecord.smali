.class public final Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SystemRouteRecord"
.end annotation


# instance fields
.field public final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field public mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public final mRouteDescriptorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/String;)V
    .locals 0

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 612
    iput-object p2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    return-void
.end method
