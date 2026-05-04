.class Landroidx/mediarouter/media/GlobalMediaRouter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V
    .locals 0

    .line 1111
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V
    .locals 9

    .line 1122
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$100(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 1124
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$200(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object p1

    .line 1125
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1127
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v1, p1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    new-instance v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v4, p1, v0, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v4, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 1132
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object p1, v2, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 1139
    :cond_0
    invoke-static {v2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$100(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v5

    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 1141
    invoke-static {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$200(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v7

    const/4 v6, 0x3

    move-object v3, v2

    move-object v8, p3

    .line 1136
    invoke-virtual/range {v2 .. v8}, Landroidx/mediarouter/media/GlobalMediaRouter;->notifyTransfer(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    .line 1144
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$202(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1145
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$102(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    return-void

    :cond_1
    move-object v8, p3

    .line 1146
    iget-object p3, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object v0, p3, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 1148
    iget-object p1, p3, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p3, p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 1151
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$2;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object p1, p1, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, v8}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDynamicDescriptors(Ljava/util/Collection;)V

    :cond_3
    :goto_0
    return-void
.end method
