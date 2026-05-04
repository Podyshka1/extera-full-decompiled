.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cameraId:Ljava/lang/String;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1$1;->$cameraId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p1, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1$1;->emit-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 171
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1$1;->$cameraId:Ljava/lang/String;

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has become available! Notifying listeners..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->access$getListeners$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/CompletableDeferred;

    .line 174
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
