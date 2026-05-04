.class final Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mDynamicGroupRoutes:Ljava/util/List;

.field private final mTempCallbackRecords:Ljava/util/ArrayList;

.field final synthetic this$0:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V
    .locals 0

    .line 1487
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1463
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 1465
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    return-void
.end method

.method private invokeCallback(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    .locals 5

    .line 1578
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 1579
    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const v2, 0xff00

    and-int/2addr v2, p2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_3

    const/16 p1, 0x200

    if-eq v2, p1, :cond_2

    const/16 p1, 0x300

    if-eq v2, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 p1, 0x301

    if-eq p2, p1, :cond_1

    goto :goto_4

    .line 1642
    :cond_1
    check-cast p3, Landroidx/mediarouter/media/MediaRouterParams;

    .line 1643
    invoke-virtual {v1, v0, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouterParamsChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouterParams;)V

    return-void

    .line 1625
    :cond_2
    check-cast p3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    packed-switch p2, :pswitch_data_0

    goto :goto_4

    .line 1634
    :pswitch_0
    invoke-virtual {v1, v0, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V

    return-void

    .line 1631
    :pswitch_1
    invoke-virtual {v1, v0, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V

    return-void

    .line 1628
    :pswitch_2
    invoke-virtual {v1, v0, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V

    return-void

    :cond_3
    const/16 v2, 0x106

    const/16 v3, 0x108

    if-eq p2, v3, :cond_5

    if-ne p2, v2, :cond_4

    goto :goto_0

    .line 1586
    :cond_4
    move-object v4, p3

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    goto :goto_1

    .line 1585
    :cond_5
    :goto_0
    move-object v4, p3

    check-cast v4, Landroidx/core/util/Pair;

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    :goto_1
    if-eq p2, v3, :cond_7

    if-ne p2, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    goto :goto_3

    .line 1590
    :cond_7
    :goto_2
    check-cast p3, Landroidx/core/util/Pair;

    iget-object p3, p3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    :goto_3
    if-eqz v4, :cond_9

    .line 1593
    invoke-virtual {p1, v4, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->filterRouteEvent(Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;I)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    packed-switch p2, :pswitch_data_1

    goto :goto_4

    .line 1619
    :pswitch_3
    invoke-virtual {v1, v0, v4, p4, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1616
    :pswitch_4
    invoke-virtual {v1, v0, v4, p4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void

    .line 1613
    :pswitch_5
    invoke-virtual {v1, v0, v4, p4, v4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1610
    :pswitch_6
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1607
    :pswitch_7
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1604
    :pswitch_8
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1601
    :pswitch_9
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1598
    :pswitch_a
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private syncWithPlatformMediaRouter1RouteProvider(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x106

    if-eq p1, v0, :cond_1

    const/16 v0, 0x108

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1548
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object p1

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->onSyncRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1544
    :pswitch_1
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object p1

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1540
    :pswitch_2
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object p1

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1565
    :cond_0
    check-cast p2, Landroidx/core/util/Pair;

    iget-object p1, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1567
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1569
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void

    .line 1552
    :cond_1
    check-cast p2, Landroidx/core/util/Pair;

    iget-object p1, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1554
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1556
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$800(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1557
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1558
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$700(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider;->onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1560
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1502
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1503
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1504
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x103

    if-ne v0, v2, :cond_0

    .line 1506
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 1507
    invoke-virtual {v2}, Landroidx/mediarouter/media/GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1508
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 1512
    :cond_0
    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->syncWithPlatformMediaRouter1RouteProvider(ILjava/lang/Object;)V

    .line 1518
    :try_start_0
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v2}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$600(Landroidx/mediarouter/media/GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 1519
    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$600(Landroidx/mediarouter/media/GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter;

    if-nez v3, :cond_1

    .line 1521
    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$600(Landroidx/mediarouter/media/GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1523
    :cond_1
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1527
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 1528
    invoke-direct {p0, v5, v0, v1, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1531
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_2
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1532
    throw p1
.end method

.method post(ILjava/lang/Object;)V
    .locals 0

    .line 1491
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method post(ILjava/lang/Object;I)V
    .locals 0

    .line 1495
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1496
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 1497
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
