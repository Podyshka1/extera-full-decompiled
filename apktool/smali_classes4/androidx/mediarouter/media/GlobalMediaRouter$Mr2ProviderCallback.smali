.class final Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;
.super Landroidx/mediarouter/media/MediaRoute2Provider$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Mr2ProviderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRoute2Provider$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReleaseController(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)V
    .locals 2

    .line 1329
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 1331
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->selectRouteToFallbackRoute(I)V

    return-void

    .line 1332
    :cond_0
    sget-boolean v0, Landroidx/mediarouter/media/GlobalMediaRouter;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A RouteController unrelated to the selected route is released. controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalMediaRouter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onSelectFallbackRoute(I)V
    .locals 0

    .line 1324
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->selectRouteToFallbackRoute(I)V

    return-void
.end method

.method public onSelectRoute(Ljava/lang/String;I)V
    .locals 4

    .line 1301
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1302
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v2

    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$300(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRoute2Provider;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1305
    :cond_1
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 1312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelectRoute: The target RouteInfo is not found for descriptorId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalMediaRouter"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1319
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {p1, v1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method selectRouteToFallbackRoute(I)V
    .locals 2

    .line 1344
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 1345
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 1346
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v1, v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_0
    return-void
.end method
