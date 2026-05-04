.class public final Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;,
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;,
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;,
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;,
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$WhenMappings;
    }
.end annotation


# instance fields
.field private final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 59
    instance-of v0, p1, Landroid/app/Application;

    const-string v1, "CXCP"

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 102
    invoke-static {v1}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The provided context ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is application scoped and will be used to infer the default display for computing the default preview size, orientation, and default aspect ratio for UseCase outputs."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 66
    const-string v0, "Created UseCaseConfigurationMap"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;
    .locals 7

    const-string v0, "captureType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating config for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    .line 80
    sget-object v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    const/4 v4, 0x3

    const-class v5, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 89
    :pswitch_0
    sget-object v3, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    invoke-virtual {v3, v5}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v4

    .line 88
    :goto_0
    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    goto :goto_1

    .line 86
    :pswitch_1
    invoke-virtual {v1, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 95
    :goto_1
    sget-object v3, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_SESSION_CONFIG:Landroidx/camera/core/impl/Config$Option;

    .line 96
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v3, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 98
    new-instance v1, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 112
    :pswitch_2
    sget-object p2, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    invoke-virtual {p2, v5}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p2

    if-eqz p2, :cond_2

    move v4, v6

    .line 111
    :cond_2
    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    goto :goto_2

    .line 109
    :pswitch_3
    invoke-virtual {v1, v6}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    goto :goto_2

    :pswitch_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    const/4 v2, 0x5

    .line 101
    :cond_3
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 117
    :goto_2
    sget-object p2, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_CAPTURE_CONFIG:Landroidx/camera/core/impl/Config$Option;

    .line 118
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    .line 116
    invoke-virtual {v0, p2, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 124
    sget-object p2, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

    .line 125
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    if-ne p1, v1, :cond_4

    .line 126
    sget-object v1, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;->Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;->getINSTANCE()Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;

    move-result-object v1

    goto :goto_3

    .line 128
    :cond_4
    sget-object v1, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;->Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;->getINSTANCE()Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;

    move-result-object v1

    .line 123
    :goto_3
    invoke-virtual {v0, p2, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 132
    sget-object p2, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SESSION_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

    .line 133
    sget-object v1, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;->INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;

    .line 131
    invoke-virtual {v0, p2, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 136
    sget-object p2, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->PREVIEW:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    if-ne p1, p2, :cond_5

    .line 137
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object p1

    .line 138
    sget-object p2, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, p2, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 142
    :cond_5
    sget-object p1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 143
    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v1, v6, v2}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getMaxSizeDisplay$default(Landroidx/camera/camera2/impl/DisplayInfoManager;ZILjava/lang/Object;)Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 141
    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 145
    invoke-static {v0}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p1

    const-string p2, "from(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
