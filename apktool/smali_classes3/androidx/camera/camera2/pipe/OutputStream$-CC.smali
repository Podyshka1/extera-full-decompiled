.class public abstract synthetic Landroidx/camera/camera2/pipe/OutputStream$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$isValidForHighSpeedOperatingMode(Landroidx/camera/camera2/pipe/OutputStream;)Z
    .locals 7

    .line 490
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 491
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getDEFAULT-vrKr8v8()J

    move-result-wide v2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_6

    .line 492
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getPREVIEW-vrKr8v8()J

    move-result-wide v2

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_6

    .line 493
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getVIDEO_RECORD-vrKr8v8()J

    move-result-wide v1

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_6

    .line 494
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 495
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getDEFAULT-4VYZOf8()J

    move-result-wide v2

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_6

    .line 496
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object p0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getVIDEO_RECORD-4VYZOf8()J

    move-result-wide v0

    if-nez p0, :cond_4

    move p0, v4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result p0

    :goto_4
    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    return v4

    :cond_6
    :goto_5
    const/4 p0, 0x1

    return p0
.end method
