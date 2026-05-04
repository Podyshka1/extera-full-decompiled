.class public abstract synthetic Landroidx/camera/camera2/pipe/CameraDevices$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic awaitCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 50
    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitCameraIds-SeavPBo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: awaitCameraIds-SeavPBo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic awaitCameraMetadata-FpsL5FU$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 83
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitCameraMetadata-FpsL5FU(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: awaitCameraMetadata-FpsL5FU"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic awaitConcurrentCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Set;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 66
    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitConcurrentCameraIds-SeavPBo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: awaitConcurrentCameraIds-SeavPBo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic cameraIdsFlow-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 36
    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices;->cameraIdsFlow-SeavPBo(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cameraIdsFlow-SeavPBo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
