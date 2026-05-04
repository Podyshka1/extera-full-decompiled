.class public final Landroidx/camera/extensions/ExtensionsManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/ExtensionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ZqJS1Tfdy4HtYDtuUHL26vYdpKs(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/extensions/ExtensionsManager$Companion;->getInstanceAsync$lambda$0$1(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/extensions/ExtensionsManager$Companion;-><init>()V

    return-void
.end method

.method private static final getInstanceAsync$lambda$0$1(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    const-string v0, "completer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 409
    new-instance v1, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;-><init>(Landroid/hardware/camera2/CameraManager;)V

    .line 412
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "getCameraIdList(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 414
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->getExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v6

    .line 415
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedExtensions()Ljava/util/List;

    move-result-object v6

    .line 414
    const-string v7, "getSupportedExtensions(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/util/Collection;

    .line 416
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 420
    :cond_2
    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

    if-nez v3, :cond_3

    .line 422
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->NONE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    goto :goto_2

    .line 424
    :cond_3
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    .line 420
    :goto_2
    invoke-direct {v0, v1, p1, p0}, Landroidx/camera/extensions/ExtensionsManager$Companion;->getOrCreateExtensionsManager(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;Landroid/content/Context;)Landroidx/camera/extensions/ExtensionsManager;

    move-result-object p0

    .line 419
    invoke-virtual {p2, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 430
    const-string p0, "Initialize extensions"

    return-object p0
.end method

.method private final getOrCreateExtensionsManager(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;Landroid/content/Context;)Landroidx/camera/extensions/ExtensionsManager;
    .locals 2

    .line 442
    invoke-static {}, Landroidx/camera/extensions/ExtensionsManager;->access$getEXTENSIONS_LOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_0
    invoke-static {}, Landroidx/camera/extensions/ExtensionsManager;->access$getSExtensionsManager$cp()Landroidx/camera/extensions/ExtensionsManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 444
    new-instance v1, Landroidx/camera/extensions/ExtensionsManager;

    invoke-direct {v1, p1, p2, p3}, Landroidx/camera/extensions/ExtensionsManager;-><init>(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;Landroid/content/Context;)V

    .line 445
    invoke-static {v1}, Landroidx/camera/extensions/ExtensionsManager;->access$setSExtensionsManager$cp(Landroidx/camera/extensions/ExtensionsManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 442
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/camera/extensions/ExtensionsManager;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0, p1, p2}, Landroidx/camera/extensions/ExtensionsManager$Companion;->getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/concurrent/futures/ListenableFutureKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraProvider;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Landroidx/camera/extensions/ExtensionsManager;->access$getEXTENSIONS_LOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 384
    :try_start_0
    invoke-static {}, Landroidx/camera/extensions/ExtensionsManager;->access$getSDeinitializeFuture$cp()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 386
    invoke-static {v1}, Landroidx/camera/extensions/ExtensionsManager;->access$setSDeinitializeFuture$cp(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 387
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "getPersistentApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1

    .line 394
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager;->Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

    .line 395
    sget-object v2, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->NONE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    .line 394
    invoke-direct {v1, v2, p2, p1}, Landroidx/camera/extensions/ExtensionsManager$Companion;->getOrCreateExtensionsManager(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;Landroid/content/Context;)Landroidx/camera/extensions/ExtensionsManager;

    move-result-object p1

    .line 393
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string p2, "immediateFuture(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit v0

    return-object p1

    .line 402
    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/camera/extensions/ExtensionsManager;->access$getSInitializeFuture$cp()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    if-nez v1, :cond_2

    .line 404
    new-instance v1, Landroidx/camera/extensions/ExtensionsManager$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroidx/camera/extensions/ExtensionsManager$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 403
    invoke-static {p1}, Landroidx/camera/extensions/ExtensionsManager;->access$setSInitializeFuture$cp(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 433
    :cond_2
    invoke-static {}, Landroidx/camera/extensions/ExtensionsManager;->access$getSInitializeFuture$cp()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit v0

    return-object p1

    .line 385
    :cond_3
    :try_start_2
    const-string p1, "Not yet done deinitializing extensions"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    :goto_1
    monitor-exit v0

    throw p1
.end method
