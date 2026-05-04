.class public abstract Landroidx/camera/camera2/pipe/graph/Controller3AKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$isNullOrIn(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->isNullOrIn(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private static final isNullOrIn(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 866
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final shouldUnlockAe-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z
    .locals 1

    .line 868
    sget-object v0, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getAFTER_NEW_SCAN-hRqSH3k()I

    move-result v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->equals-impl0(II)Z

    move-result p0

    return p0
.end method

.method public static final shouldUnlockAf-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z
    .locals 1

    .line 870
    sget-object v0, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getAFTER_NEW_SCAN-hRqSH3k()I

    move-result v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->equals-impl0(II)Z

    move-result p0

    return p0
.end method

.method public static final shouldUnlockAwb-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z
    .locals 1

    .line 872
    sget-object v0, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getAFTER_NEW_SCAN-hRqSH3k()I

    move-result v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->equals-impl0(II)Z

    move-result p0

    return p0
.end method

.method public static final shouldWaitForAeToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 878
    sget-object v0, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getIMMEDIATE-hRqSH3k()I

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final shouldWaitForAfToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 896
    sget-object v0, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getIMMEDIATE-hRqSH3k()I

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final shouldWaitForAwbToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 881
    sget-object v0, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getIMMEDIATE-hRqSH3k()I

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
