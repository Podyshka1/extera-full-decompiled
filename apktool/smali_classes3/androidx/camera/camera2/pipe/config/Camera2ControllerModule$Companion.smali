.class public final Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/Camera2ControllerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCameraStatusMonitor(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlinx/coroutines/Job;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;
    .locals 7

    const-string v0, "cameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeJob"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 190
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 187
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final provideCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeJob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    .line 175
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "CXCP-Camera2Controller"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 174
    invoke-interface {p2, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 173
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    return-object p1
.end method
