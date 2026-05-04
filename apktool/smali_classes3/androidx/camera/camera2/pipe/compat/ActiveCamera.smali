.class public final Landroidx/camera/camera2/pipe/compat/ActiveCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allCameraIds:Ljava/util/Set;

.field private final androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field private current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

.field private final wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;


# direct methods
.method public static synthetic $r8$lambda$Pft0woi-3wOq-0lzMTXAHXs4ZXo(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v1, "androidCameraState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "allCameraIds"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scope"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "closeCallback"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 112
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->allCameraIds:Ljava/util/Set;

    .line 122
    new-instance v2, Landroidx/camera/camera2/pipe/core/WakeLock;

    .line 125
    new-instance v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera$$ExternalSyntheticLambda0;

    invoke-direct {v7, p4, p0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    move-object v3, p3

    .line 122
    invoke-direct/range {v2 .. v7}, Landroidx/camera/camera2/pipe/core/WakeLock;-><init>(Lkotlinx/coroutines/CoroutineScope;JZLkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    .line 136
    new-instance v5, Landroidx/camera/camera2/pipe/compat/ActiveCamera$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getAndroidCameraState$p(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
    .locals 0

    .line 110
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    return-object p0
.end method

.method public static final synthetic access$getWakelock$p(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Landroidx/camera/camera2/pipe/core/WakeLock;
    .locals 0

    .line 110
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    return-object p0
.end method

.method private static final wakelock$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lkotlin/Unit;
    .locals 0

    .line 125
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final acquire()Landroidx/camera/camera2/pipe/core/Token;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->acquire()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    return-object v0
.end method

.method public final awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->release()Z

    .line 159
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    return-void
.end method

.method public final connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 150
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 151
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-static {v0, v2, v1, v2}, Landroidx/camera/camera2/pipe/compat/VirtualCamera$-CC;->disconnect-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/VirtualCamera;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)V

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->connect$camera_camera2_pipe(Lkotlinx/coroutines/flow/Flow;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getAllCameraIds$camera_camera2_pipe()Ljava/util/Set;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->allCameraIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActiveCamera(cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
