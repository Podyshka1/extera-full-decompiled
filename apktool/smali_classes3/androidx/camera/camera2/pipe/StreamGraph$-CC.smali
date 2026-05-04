.class public abstract synthetic Landroidx/camera/camera2/pipe/StreamGraph$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$get-aKI5c8E(Landroidx/camera/camera2/pipe/StreamGraph;I)Landroidx/camera/camera2/pipe/CameraStream;
    .locals 2

    .line 38
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/StreamGraph;->getStreams()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v1

    invoke-static {v1, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/CameraStream;

    return-object v0
.end method

.method public static $default$get-iYJqvbA(Landroidx/camera/camera2/pipe/StreamGraph;I)Landroidx/camera/camera2/pipe/OutputStream;
    .locals 2

    .line 40
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v1

    invoke-static {v1, p1}, Landroidx/camera/camera2/pipe/OutputId;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/OutputStream;

    return-object v0
.end method
