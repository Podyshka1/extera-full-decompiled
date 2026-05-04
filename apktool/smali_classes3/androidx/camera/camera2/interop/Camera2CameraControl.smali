.class public final Landroidx/camera/camera2/interop/Camera2CameraControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;


# instance fields
.field private _useCaseCameraRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

.field private final requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/interop/Camera2CameraControl;->Companion:Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    .line 50
    iput-object p2, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 51
    iput-object p3, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/interop/Camera2CameraControl;-><init>(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V

    return-void
.end method

.method private final updateAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 148
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-virtual {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat$-CC;->applyAsync$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;ZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string v0, "nonCancellationPropagating(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final addCaptureRequestOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->addRequestOption(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V

    .line 119
    const-string p1, "addCaptureRequestOptions"

    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final clearCaptureRequestOptions()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->clearRequestOption()V

    .line 143
    const-string v0, "clearCaptureRequestOptions"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->getRequestOption()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->_useCaseCameraRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 71
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->cancelCurrentTask()V

    .line 72
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 3

    .line 59
    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->_useCaseCameraRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    iget-object v2, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/impl/ComboRequestListener;->addListener(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V

    .line 63
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lkotlinx/coroutines/Deferred;

    :cond_0
    return-void
.end method
