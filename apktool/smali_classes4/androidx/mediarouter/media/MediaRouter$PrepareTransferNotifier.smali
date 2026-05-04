.class final Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrepareTransferNotifier"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinished:Z

.field private final mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field final mMemberRoutes:Ljava/util/List;

.field final mReason:I

.field private final mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private final mRouter:Ljava/lang/ref/WeakReference;

.field final mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field final mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 2

    .line 2708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2701
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    .line 2702
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    .line 2703
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 2709
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    .line 2711
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2712
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2713
    iput p4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    .line 2714
    iget-object p2, p1, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2715
    iput-object p5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez p6, :cond_0

    goto :goto_0

    .line 2716
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    .line 2719
    iget-object p1, p1, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    new-instance p2, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;)V

    const-wide/16 p3, 0x3a98

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectToRouteAndNotify()V
    .locals 5

    .line 2801
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2806
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2807
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    iput-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2809
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v2, :cond_1

    .line 2810
    iget-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    new-instance v3, Landroidx/core/util/Pair;

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v3, v4, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    const/16 v4, 0x106

    invoke-virtual {v2, v4, v3, v1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2813
    :cond_1
    iget-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    new-instance v4, Landroidx/core/util/Pair;

    invoke-direct {v4, v2, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    const/16 v2, 0x108

    invoke-virtual {v3, v2, v4, v1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    .line 2818
    :goto_0
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2819
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->maybeUpdateMemberRouteControllers()V

    .line 2820
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2821
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2822
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDynamicDescriptors(Ljava/util/Collection;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private unselectFromRouteAndNotify()V
    .locals 5

    .line 2777
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    if-eqz v0, :cond_4

    .line 2778
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 2782
    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x107

    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v1, v3, v2, v4}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    .line 2785
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v1, :cond_1

    .line 2786
    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2787
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2790
    :cond_1
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2791
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 2792
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2793
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    goto :goto_0

    .line 2795
    :cond_2
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_3
    const/4 v1, 0x0

    .line 2797
    iput-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 2765
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2768
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 2770
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2771
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2772
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    :cond_1
    :goto_0
    return-void
.end method

.method finishTransfer()V
    .locals 2

    .line 2744
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2746
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2750
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    if-eqz v0, :cond_2

    .line 2751
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_1

    .line 2752
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 2757
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    const/4 v1, 0x0

    .line 2758
    iput-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 2760
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->unselectFromRouteAndNotify()V

    .line 2761
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->selectToRouteAndNotify()V

    return-void

    .line 2753
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->cancel()V

    :cond_3
    :goto_1
    return-void
.end method

.method setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3

    .line 2724
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    if-eqz v0, :cond_2

    .line 2725
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 2731
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_1

    .line 2735
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2736
    new-instance v1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;)V

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda1;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;)V

    invoke-interface {p1, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 2732
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "future is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2726
    :cond_2
    :goto_0
    const-string p1, "AxMediaRouter"

    const-string v0, "Router is released. Cancel transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->cancel()V

    return-void
.end method
