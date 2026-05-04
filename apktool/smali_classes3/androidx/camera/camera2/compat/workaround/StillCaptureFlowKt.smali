.class public abstract Landroidx/camera/camera2/compat/workaround/StillCaptureFlowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final shouldStopRepeatingBeforeCapture(Ljava/util/List;)Z
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/Request;

    .line 33
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v5

    if-ne v5, v6, :cond_2

    move v0, v4

    .line 38
    :cond_2
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "CONTROL_AE_MODE"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroidx/camera/camera2/pipe/Request;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v6, :cond_5

    :goto_1
    if-nez v3, :cond_4

    goto :goto_0

    .line 40
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    return v4

    :cond_7
    return v1
.end method
