.class public abstract Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OPTION_CAPTURE_REQUEST_CONFIGURATOR:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "camerax.core.appConfig.captureRequestConfigurator"

    .line 29
    const-class v1, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfigurator;

    .line 27
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;->OPTION_CAPTURE_REQUEST_CONFIGURATOR:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method public static final getCamera2CaptureRequestConfigurator(Landroidx/camera/core/CameraXConfig;)Landroidx/camera/camera2/interop/Camera2CaptureRequestConfigurator;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroidx/camera/core/CameraXConfig;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object p0

    sget-object v0, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;->OPTION_CAPTURE_REQUEST_CONFIGURATOR:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-object v1
.end method
