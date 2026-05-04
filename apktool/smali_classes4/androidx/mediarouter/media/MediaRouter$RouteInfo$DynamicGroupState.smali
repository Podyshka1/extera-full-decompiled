.class public final Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicGroupState"
.end annotation


# instance fields
.field final mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;)V
    .locals 0

    .line 2279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2280
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    return-void
.end method


# virtual methods
.method public getSelectionState()I
    .locals 1

    .line 2293
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupable()Z
    .locals 1

    .line 2304
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isGroupable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTransferable()Z
    .locals 1

    .line 2309
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isTransferable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUnselectable()Z
    .locals 1

    .line 2299
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isUnselectable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
