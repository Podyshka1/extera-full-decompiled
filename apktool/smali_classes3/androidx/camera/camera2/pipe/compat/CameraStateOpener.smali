.class public final Landroidx/camera/camera2/pipe/compat/CameraStateOpener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;


# instance fields
.field private final camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

.field private cameraOpenCancelled:Lkotlinx/coroutines/CompletableDeferred;

.field private final cameraOpener:Landroidx/camera/camera2/pipe/compat/CameraOpener;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->Companion:Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 1

    const-string v0, "cameraOpener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2MetadataProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2Quirks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpener:Landroidx/camera/camera2/pipe/compat/CameraOpener;

    .line 220
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 221
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 222
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 223
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 224
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 225
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 227
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpenCancelled:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public static final synthetic access$getCameraOpenCancelled$p(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 216
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpenCancelled:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getCameraOpener$p(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;)Landroidx/camera/camera2/pipe/compat/CameraOpener;
    .locals 0

    .line 216
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpener:Landroidx/camera/camera2/pipe/compat/CameraOpener;

    return-object p0
.end method


# virtual methods
.method public final cancelOpen$camera_camera2_pipe()V
    .locals 2

    .line 380
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpenCancelled:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    instance-of v3, v2, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    iget v4, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    invoke-direct {v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 229
    iget v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v7, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->J$0:J

    iget v1, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->I$0:I

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iget-object v9, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Ljava/lang/Object;

    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v10, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v5

    move-wide v11, v7

    move-object v15, v9

    move-object v8, v10

    move v10, v1

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 236
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/Object;

    move-object/from16 v5, p5

    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p6

    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Ljava/lang/Object;

    move/from16 v9, p2

    iput v9, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->I$0:I

    move-wide/from16 v10, p3

    iput-wide v10, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->J$0:J

    iput v7, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    invoke-interface {v2, v1, v3}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->getCameraMetadata-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    goto :goto_4

    :cond_4
    move-object v15, v5

    move-object/from16 v18, v8

    move-wide v11, v10

    move-object v8, v1

    move v10, v9

    .line 229
    :goto_1
    move-object v9, v2

    check-cast v9, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 238
    new-instance v7, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 243
    iget-object v13, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 244
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 246
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 247
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 249
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_2

    :cond_5
    move-object/from16 v19, v6

    .line 250
    :goto_2
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->getCameraCaptureSessionListener()Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_3

    :cond_6
    move-object/from16 v20, v6

    :goto_3
    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 238
    invoke-direct/range {v7 .. v21}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 275
    new-instance v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;

    invoke-direct {v1, v0, v8, v7, v6}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/Object;

    iput-object v6, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    invoke-static {v1, v3}, Lkotlinx/coroutines/SupervisorKt;->supervisorScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_7

    :goto_4
    return-object v4

    :cond_7
    return-object v1
.end method
