.class Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallbackProxy;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackProxy"
.end annotation


# instance fields
.field protected final mCallback:Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 157
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    return-void
.end method
