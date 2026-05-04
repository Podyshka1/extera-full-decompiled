.class public abstract Landroidx/camera/camera2/compat/workaround/ImageCapturePixelHDRPlusKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toggleHDRPlus(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Landroidx/camera/core/impl/ImageCaptureConfig;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCaptureConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->hasCaptureMode()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureMode()I

    move-result p1

    const-string v0, "CONTROL_ENABLE_ZSL"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-static {}, Landroidx/camera/camera2/compat/workaround/ImageCapturePixelHDRPlusKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-void

    .line 44
    :cond_3
    invoke-static {}, Landroidx/camera/camera2/compat/workaround/ImageCapturePixelHDRPlusKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-void
.end method
