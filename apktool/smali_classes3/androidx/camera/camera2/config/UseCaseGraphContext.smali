.class public final Landroidx/camera/camera2/config/UseCaseGraphContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _graph:Lkotlin/Lazy;

.field private final cameraGraphProvider:Ljavax/inject/Provider;

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field private final graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

.field private final streamConfigMapProvider:Ljavax/inject/Provider;

.field private final surfaceToStreamMap$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$F3E2j3PZZTemDi6FKnCj8rRWPTg(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap_delegate$lambda$0(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FT3TLK_GDnmekd6PPvl-VIFH_J8(Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph$lambda$0(Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljavax/inject/Provider;Ljava/util/Map;)V
    .locals 1

    const-string v0, "cameraGraphProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraStateAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphStateToCameraStateAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamConfigMapProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraGraphProvider:Ljavax/inject/Provider;

    .line 200
    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 201
    iput-object p3, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 202
    iput-object p4, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->streamConfigMapProvider:Ljavax/inject/Provider;

    .line 205
    new-instance p1, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lkotlin/Lazy;

    .line 209
    new-instance p1, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda4;

    invoke-direct {p1, p5, p0}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/inject/Provider;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljavax/inject/Provider;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 198
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/config/UseCaseGraphContext;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljavax/inject/Provider;Ljava/util/Map;)V

    return-void
.end method

.method private static final _graph$lambda$0(Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    .line 205
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraGraphProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method private static final surfaceToStreamMap_delegate$lambda$0(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/util/Map;
    .locals 4

    if-nez p0, :cond_2

    .line 212
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    iget-object v0, p1, Landroidx/camera/camera2/config/UseCaseGraphContext;->streamConfigMapProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 214
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getStreams()Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object v3

    invoke-interface {v3, v2}, Landroidx/camera/camera2/pipe/StreamGraph;->get(Landroidx/camera/camera2/pipe/CameraStream$Config;)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final closeGraph()V
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final configureCameraStateListener()V
    .locals 2

    .line 237
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->setCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph;)V

    .line 238
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphUpdated(Landroidx/camera/camera2/pipe/CameraGraph;)V

    return-void
.end method

.method public final getGraph()Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 2

    .line 207
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object v0
.end method

.method public final getStreamIdsFromSurfaces(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3

    const-string v0, "deferrableSurfaces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 230
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 231
    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getSurfaceToStreamMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/StreamId;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getSurfaceToStreamMap()Ljava/util/Map;
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
