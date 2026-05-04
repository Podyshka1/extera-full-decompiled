.class public final Landroidx/camera/core/impl/CameraPresenceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraPresenceProvider$Companion;,
        Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;,
        Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/impl/CameraPresenceProvider$Companion;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private cameraFactory:Landroidx/camera/core/impl/CameraFactory;

.field private cameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field private final cameraStateObservers:Ljava/util/Map;

.field private cameraValidator:Landroidx/camera/core/impl/CameraValidator;

.field private volatile currentFilteredIds:Ljava/util/List;

.field private final dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final observerLock:Ljava/lang/Object;

.field private final publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final retryLock:Ljava/lang/Object;

.field private retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

.field private sourcePresenceObservable:Landroidx/camera/core/impl/Observable;


# direct methods
.method public static synthetic $r8$lambda$51iRTvG9nLL8ikpWexPoKIPCpD4(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver$lambda$0$1(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BscuJl6k0EvV8pGpFPAQYqSaQDA(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->addCameraPresenceListener$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CMjAF6F7y3XQjKNB_LfwCTl3rzk(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasRemoved$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DrkEXVnEYz8kluOrg5rj41y3Cas(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JU6f07PZ72IZthRn-OxF4PINzoI(Landroidx/camera/core/CameraPresenceListener;Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraPresenceListener$lambda$0(Landroidx/camera/core/CameraPresenceListener;Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JuGR6QCPogNqVPIA0bnDaAcAw-o(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver$lambda$0$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NKb5tywml7fLh72E80xwb7S7jCQ(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;Landroidx/camera/core/CameraState;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;Landroidx/camera/core/CameraState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oh_I9sg_rHhTkSn3Z1HhlVaPC6E(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nayhqDvZFdl3bDjg8uQf2cjlMg8(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasAdded$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ougxnBvQAPKxbEvMJlj_ZPCmIxY(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0eoGS01UsRMi5eVUUzlGpqblZ0(Ljava/util/List;Landroidx/lifecycle/Observer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->clearAllCameraStateObservers$lambda$2$0(Ljava/util/List;Landroidx/lifecycle/Observer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$te2u7cAesgfp-nEhgwA1yKuyRHo(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->startup$lambda$1(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/impl/CameraPresenceProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/impl/CameraPresenceProvider;->Companion:Landroidx/camera/core/impl/CameraPresenceProvider$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    const-string v0, "backgroundExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduledExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    .line 50
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    .line 57
    new-instance p1, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    invoke-direct {p1, p0}, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCameraFactory$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraFactory;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraFactory:Landroidx/camera/core/impl/CameraFactory;

    return-object p0
.end method

.method public static final synthetic access$getCameraRepository$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraRepository;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    return-object p0
.end method

.method public static final synthetic access$getCameraValidator$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraValidator;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraValidator:Landroidx/camera/core/impl/CameraValidator;

    return-object p0
.end method

.method public static final synthetic access$getCurrentFilteredIds$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSourcePresenceObservable$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/Observable;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    return-object p0
.end method

.method public static final synthetic access$isMonitoring$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$processFilteredCameraIdUpdate(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->processFilteredCameraIdUpdate(Ljava/util/List;)V

    return-void
.end method

.method private static final addCameraPresenceListener$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V
    .locals 1

    .line 449
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 450
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-interface {p1, p0}, Landroidx/camera/core/CameraPresenceListener;->onCamerasAdded(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private final clearAllCameraStateObservers()V
    .locals 6

    .line 416
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 416
    monitor-exit v0

    return-void

    .line 420
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 421
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 422
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    monitor-exit v0

    .line 424
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-eqz v0, :cond_4

    .line 427
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "getCameras(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1617
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1625
    check-cast v3, Landroidx/camera/core/impl/CameraInternal;

    if-eqz v3, :cond_2

    .line 427
    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 1625
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_3
    const-string v0, "CameraPresencePrvdr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing all "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state observers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Observer;

    .line 430
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    new-instance v5, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2, v1, v3}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;Landroidx/lifecycle/Observer;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 416
    monitor-exit v0

    throw v1
.end method

.method private static final clearAllCameraStateObservers$lambda$2$0(Ljava/util/List;Landroidx/lifecycle/Observer;Ljava/lang/String;)V
    .locals 2

    .line 432
    :try_start_0
    check-cast p0, Ljava/lang/Iterable;

    .line 295
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 433
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v0, :cond_2

    .line 434
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 435
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private final conditionallySetupCameraStateObserver(Ljava/lang/String;)V
    .locals 2

    .line 296
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    const-string v1, "getCamera(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    const-string v1, "getCameraInfoInternal(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver(Landroidx/camera/core/impl/CameraInfoInternal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 303
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraInternal not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Cannot setup state observer."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 301
    const-string v0, "CameraPresencePrvdr"

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final notifyPublicCamerasAdded(Ljava/util/Set;)V
    .locals 4

    .line 461
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    .line 462
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p1}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final notifyPublicCamerasAdded$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    .line 462
    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getListener()Landroidx/camera/core/CameraPresenceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/core/CameraPresenceListener;->onCamerasAdded(Ljava/util/Set;)V

    return-void
.end method

.method private final notifyPublicCamerasRemoved(Ljava/util/Set;)V
    .locals 4

    .line 467
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    .line 468
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final notifyPublicCamerasRemoved$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    .line 468
    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getListener()Landroidx/camera/core/CameraPresenceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/core/CameraPresenceListener;->onCamerasRemoved(Ljava/util/Set;)V

    return-void
.end method

.method private final notifyPublicListeners(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4

    .line 276
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "Notifying "

    const-string v2, "CameraPresencePrvdr"

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cameras added."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasAdded(Ljava/util/Set;)V

    .line 280
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cameras removed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasRemoved(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private final processFilteredCameraIdUpdate(Ljava/util/List;)V
    .locals 9

    .line 199
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    .line 205
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    .line 207
    const-string v2, "CameraPresencePrvdr"

    const-string v3, "Camera list updated. Cancelling any pending retries."

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v2, 0x0

    .line 209
    iput-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    .line 211
    :cond_1
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit v1

    .line 214
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 215
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 216
    invoke-static {v3, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 217
    invoke-static {v1, v3}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1635
    check-cast v7, Landroidx/camera/core/CameraIdentifier;

    .line 221
    invoke-virtual {v7}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v7

    .line 1635
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1869
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/CameraIdentifier;

    .line 225
    invoke-virtual {v7}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 228
    :cond_3
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-eqz v2, :cond_4

    .line 229
    const-string v7, "CameraPresencePrvdr"

    const-string v8, "Updating CameraRepository..."

    invoke-static {v7, v8}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/CameraRepository;->onCamerasUpdated(Ljava/util/List;)V

    .line 231
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v2, "CameraPresencePrvdr"

    const-string v7, "CameraRepository updated successfully."

    invoke-static {v2, v7}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_4
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 237
    const-string v2, "CameraPresencePrvdr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dependent listeners..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    .line 239
    invoke-interface {v7, v5}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->onCamerasUpdated(Ljava/util/List;)V

    .line 240
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 245
    :cond_5
    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 1869
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraIdentifier;

    .line 246
    invoke-virtual {v2}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    goto :goto_4

    .line 247
    :cond_6
    invoke-direct {p0, v4, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicListeners(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 250
    :goto_5
    const-string v2, "CameraPresencePrvdr"

    const-string v5, "A core module failed to update. Rolling back changes."

    invoke-static {v2, v5, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1563
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Landroidx/camera/core/CameraIdentifier;

    .line 251
    invoke-virtual {v2}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v2

    .line 1635
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 254
    :cond_7
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    .line 256
    :try_start_2
    invoke-interface {v2, p1}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->onCamerasUpdated(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v3

    .line 258
    const-string v5, "CameraPresencePrvdr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rollback listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1869
    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraIdentifier;

    .line 265
    invoke-virtual {v0}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    goto :goto_8

    .line 1869
    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraIdentifier;

    .line 266
    invoke-virtual {v0}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver(Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    :goto_a
    return-void

    .line 205
    :goto_b
    monitor-exit v1

    throw p1
.end method

.method private static final removeCameraPresenceListener$lambda$0(Landroidx/camera/core/CameraPresenceListener;Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;)Z
    .locals 0

    .line 457
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getListener()Landroidx/camera/core/CameraPresenceListener;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final removeCameraStateObserver(Ljava/lang/String;)V
    .locals 5

    .line 396
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Observer;

    .line 398
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 401
    :try_start_1
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    const-string v3, "getCamera(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v1}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 405
    const-string v1, "CameraPresencePrvdr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed state observer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 410
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private static final removeCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 403
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final scheduleRetryAttempt(ILjava/util/List;)V
    .locals 4

    if-lez p1, :cond_2

    .line 367
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x190

    .line 377
    :goto_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p2, p1}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    .line 390
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 377
    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 376
    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_2
    :goto_1
    if-gtz p1, :cond_3

    .line 369
    const-string p1, "CameraPresencePrvdr"

    const-string p2, "Exhausted all retries for camera list refresh."

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static final scheduleRetryAttempt$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 2

    .line 379
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda11;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final scheduleRetryAttempt$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 2

    .line 380
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggering refresh. Attempts left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPresencePrvdr"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/camera/core/impl/Observable;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 386
    invoke-direct {p0, p2, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt(ILjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setupCameraStateObserver(Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 5

    .line 310
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCameraId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 315
    monitor-exit v1

    return-void

    .line 319
    :cond_1
    :try_start_1
    new-instance v2, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1, v2}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/lifecycle/Observer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string p1, "CameraPresencePrvdr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered state observer for camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private static final setupCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;Landroidx/camera/core/CameraState;)V
    .locals 3

    .line 321
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "CameraPresencePrvdr"

    if-nez v0, :cond_0

    .line 324
    const-string p0, "Ignore camera state change handling since already stop monitoring"

    .line 322
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 326
    :cond_0
    invoke-virtual {p2}, Landroidx/camera/core/CameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state changed to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/camera/core/CameraState;->getType()Landroidx/camera/core/CameraState$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p2}, Landroidx/camera/core/CameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/CameraState$StateError;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 329
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    const-string p1, ". Triggering refresh."

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private static final setupCameraStateObserver$lambda$0$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->triggerRefreshWithRetries()V

    return-void
.end method

.method private static final setupCameraStateObserver$lambda$0$1(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 338
    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final startup$lambda$1(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 2

    .line 95
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraIdentifier;

    .line 95
    invoke-virtual {v1}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final triggerRefreshWithRetries()V
    .locals 3

    .line 354
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 357
    :cond_0
    :goto_0
    const-string v1, "CameraPresencePrvdr"

    const-string v2, "Starting new refresh-with-retries sequence."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt(ILjava/util/List;)V

    .line 361
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final addCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    new-instance v0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;-><init>(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V

    .line 446
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addDependentInternalListener(Landroidx/camera/core/impl/InternalCameraPresenceListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/core/CameraPresenceListener;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public final shutdown()V
    .locals 3

    .line 106
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "CameraPresencePrvdr"

    const-string v1, "Shutdown called when not monitoring. Ignoring."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    const-string v0, "CameraPresencePrvdr"

    const-string v2, "Shutting down CameraPresenceProvider monitoring."

    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 116
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v0

    .line 118
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    invoke-interface {v0, v2}, Landroidx/camera/core/impl/Observable;->removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V

    .line 119
    :cond_2
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->clearAllCameraStateObservers()V

    .line 121
    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraValidator:Landroidx/camera/core/impl/CameraValidator;

    .line 122
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 123
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 125
    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 126
    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    return-void

    .line 113
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final startup(Landroidx/camera/core/impl/CameraValidator;Landroidx/camera/core/impl/CameraFactory;Landroidx/camera/core/impl/CameraRepository;)V
    .locals 4

    const-string v0, "cameraValidator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    const-string v0, "CameraPresencePrvdr"

    const-string v1, "Starting CameraPresenceProvider monitoring."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraValidator:Landroidx/camera/core/impl/CameraValidator;

    .line 89
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraFactory;->getAvailableCameraIds()Ljava/util/Set;

    move-result-object p1

    const-string v0, "getAvailableCameraIds(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v2, v3}, Landroidx/camera/core/CameraIdentifier$Factory;->create$default(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;ILjava/lang/Object;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    iput-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 90
    iput-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 91
    iput-object p3, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 92
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraFactory;->getCameraPresenceSource()Landroidx/camera/core/impl/Observable;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    .line 94
    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    if-eqz p1, :cond_2

    .line 99
    iget-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 100
    iget-object p3, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    .line 98
    invoke-interface {p1, p2, p3}, Landroidx/camera/core/impl/Observable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    :cond_2
    :goto_1
    return-void
.end method
