.class public final Landroidx/camera/camera2/impl/EvCompControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final compat:Landroidx/camera/camera2/compat/EvCompCompat;

.field private evCompIndex:I

.field private exposureState:Landroidx/camera/camera2/adapter/EvCompValue;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/compat/EvCompCompat;)V
    .locals 4

    const-string v0, "compat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    .line 50
    new-instance v0, Landroidx/camera/camera2/adapter/EvCompValue;

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getSupported()Z

    move-result v1

    iget v2, p0, Landroidx/camera/camera2/impl/EvCompControl;->evCompIndex:I

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object v3

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getStep()Landroid/util/Rational;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/adapter/EvCompValue;-><init>(ZILandroid/util/Range;Landroid/util/Rational;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    return-void
.end method

.method private final createFailureResult(Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method private final setEvCompIndex(I)V
    .locals 1

    .line 45
    iput p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->evCompIndex:I

    .line 46
    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/adapter/EvCompValue;->updateIndex$camera_camera2(I)Landroidx/camera/camera2/adapter/EvCompValue;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    return-void
.end method

.method public static synthetic updateAsync$default(Landroidx/camera/camera2/impl/EvCompControl;IZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync(IZ)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object v0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/EvCompControl;->setEvCompIndex(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 62
    invoke-static {p0, v0, v0, v1, v2}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync$default(Landroidx/camera/camera2/impl/EvCompControl;IZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1

    .line 56
    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 57
    iget p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->evCompIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync(IZ)Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public final updateAsync(IZ)Lkotlinx/coroutines/Deferred;
    .locals 2

    .line 66
    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/EvCompCompat;->getSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExposureCompensation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/EvCompControl;->createFailureResult(Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested ExposureCompensation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not within valid range ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string p1, " .. "

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/EvCompControl;->createFailureResult(Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/EvCompControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/EvCompControl;->setEvCompIndex(I)V

    .line 83
    iget-object v1, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v1, p1, v0, p2}, Landroidx/camera/camera2/compat/EvCompCompat;->applyAsync(ILandroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    .line 86
    :cond_3
    :goto_0
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p2, "Camera is not active."

    invoke-direct {p1, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {p2, p1}, Landroidx/camera/camera2/compat/EvCompCompat;->stopRunningTask(Ljava/lang/Throwable;)V

    .line 89
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/EvCompControl;->createFailureResult(Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1
.end method
