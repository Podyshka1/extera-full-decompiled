.class public final Landroidx/camera/camera2/adapter/CameraStateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;,
        Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;,
        Landroidx/camera/camera2/adapter/CameraStateAdapter$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;


# instance fields
.field private final cameraInternalState:Landroidx/camera/core/impl/LiveDataObservable;

.field private final cameraState:Landroidx/lifecycle/MutableLiveData;

.field private final cameraStateListeners:Ljava/util/Map;

.field private currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

.field private currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

.field private currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

.field private isRemoved:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$6FOKxeEC7IWChTAzIfXreZ8PTVY(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$lambda$1$0(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroidx/camera/core/impl/LiveDataObservable;

    invoke-direct {v0}, Landroidx/camera/core/impl/LiveDataObservable;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/camera/core/impl/LiveDataObservable;

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    .line 48
    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 55
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 58
    invoke-static {p0, v0, v1, v2, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentCameraInternalState$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/core/impl/CameraInternal$State;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    return-object p0
.end method

.method public static final synthetic access$getCurrentGraph$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method private final handleStateTransition(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V
    .locals 3

    .line 109
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CXCP"

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored stale transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->calculateNextState$camera_camera2(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/camera2/pipe/GraphState;)Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    move-result-object p1

    if-nez p1, :cond_2

    .line 116
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    invoke-static {v1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Impermissible state transition: current camera internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->access$getCurrentCameraInternalState$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", received graph state: "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 123
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 124
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

    .line 127
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated current camera internal state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-void
.end method

.method private final postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V
    .locals 3

    .line 135
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/camera/core/impl/LiveDataObservable;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/LiveDataObservable;->postValue(Ljava/lang/Object;)V

    .line 137
    sget-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraState$camera_camera2(Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/CameraState$Type;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;Landroidx/camera/core/CameraState$StateError;)Landroidx/camera/core/CameraState;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p2, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->setOrPostValue$camera_camera2(Landroidx/lifecycle/MutableLiveData;Landroidx/camera/core/CameraState;)V

    .line 141
    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 142
    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 143
    new-instance v2, Landroidx/camera/camera2/adapter/CameraStateAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p2

    throw p1
.end method

.method static synthetic postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 131
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-void
.end method

.method private static final postCameraState$lambda$1$0(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V
    .locals 0

    .line 143
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final calculateNextState$camera_camera2(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/camera2/pipe/GraphState;)Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;
    .locals 3

    const-string v0, "currentState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_15

    if-eq p1, v1, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-object v2

    .line 220
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 221
    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 222
    :cond_2
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p1, :cond_4

    .line 223
    sget-object p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 225
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    .line 226
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    .line 224
    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object v0

    .line 229
    :cond_3
    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 230
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    .line 231
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    .line 229
    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object v0

    :cond_4
    return-object v2

    .line 209
    :cond_5
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 210
    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 211
    :cond_7
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p1, :cond_8

    .line 212
    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 213
    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    .line 214
    sget-object v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p2

    .line 212
    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    :cond_8
    return-object v2

    .line 191
    :cond_9
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 192
    :cond_a
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 193
    :cond_b
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p1, :cond_d

    .line 194
    sget-object p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 196
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    .line 197
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    .line 195
    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object v0

    .line 200
    :cond_c
    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 201
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    .line 202
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    .line 200
    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object v0

    :cond_d
    return-object v2

    .line 165
    :cond_e
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 166
    :cond_f
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p1, :cond_12

    .line 167
    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getWillAttemptRetry()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 168
    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 169
    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    .line 170
    sget-object v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p2

    .line 168
    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    .line 173
    :cond_10
    sget-object p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 174
    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 175
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    .line 176
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    .line 174
    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object v0

    .line 179
    :cond_11
    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 180
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    .line 181
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    .line 179
    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object v0

    .line 185
    :cond_12
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 186
    :cond_13
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_14
    return-object v2

    .line 159
    :cond_15
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 160
    :cond_16
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p2, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_17
    return-object v2
.end method

.method public final getCameraState$camera_camera2()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V
    .locals 4

    const-string v0, "cameraGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z

    if-eqz v1, :cond_1

    .line 98
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring graph state update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " on removed camera."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 102
    :cond_1
    :try_start_1
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->handleStateTransition(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    .line 104
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final onGraphUpdated(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 5

    const-string v0, "cameraGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera graph updated from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->access$getCurrentGraph$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 86
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    sget-object v2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    if-eq v1, v2, :cond_1

    .line 87
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v3, v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V

    .line 88
    invoke-static {p0, v2, v4, v3, v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V

    .line 90
    :cond_1
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    .line 91
    iput-object v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 92
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final onRemoved()V
    .locals 4

    const/16 v0, 0x8

    .line 68
    invoke-static {v0}, Landroidx/camera/core/CameraState$StateError;->create(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 69
    monitor-exit v1

    return-void

    .line 72
    :cond_0
    :try_start_1
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "Camera is removed, forcing state to CLOSED."

    .line 86
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 73
    iput-boolean v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z

    .line 74
    sget-object v2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    iput-object v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 75
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

    .line 76
    invoke-direct {p0, v2, v0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    .line 80
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw v0
.end method
