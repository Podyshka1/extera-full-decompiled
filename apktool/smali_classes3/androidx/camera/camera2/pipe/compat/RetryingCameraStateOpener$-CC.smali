.class public abstract synthetic Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic openCameraWithRetry-aeCOTgg$default(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 91
    new-instance p3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener$$ExternalSyntheticLambda0;-><init>()V

    .line 88
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openCameraWithRetry-aeCOTgg"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openCameraWithRetry_aeCOTgg$lambda$0(Lkotlin/Unit;)Z
    .locals 1

    .line 0
    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
