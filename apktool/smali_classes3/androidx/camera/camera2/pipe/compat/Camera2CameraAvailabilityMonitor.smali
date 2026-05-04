.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;


# instance fields
.field private final availableCameraFlow:Lkotlinx/coroutines/flow/Flow;

.field private final cameraManager:Ljavax/inject/Provider;

.field private final cameraPipeJob:Lkotlinx/coroutines/Job;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "cameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeJob"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraManager:Ljavax/inject/Provider;

    .line 135
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 136
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraPipeJob:Lkotlinx/coroutines/Job;

    .line 139
    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->availableCameraFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$getAvailableCameraFlow$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 131
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->availableCameraFlow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public static final synthetic access$getCameraManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Ljavax/inject/Provider;
    .locals 0

    .line 131
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraManager:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static final synthetic access$getCameraPipeJob$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 131
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraPipeJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    .line 131
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method


# virtual methods
.method public startMonitoring-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 163
    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    invoke-direct {p2, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Ljava/lang/String;)V

    return-object p2
.end method
