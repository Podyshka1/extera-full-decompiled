.class public Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultCaptureOptionsUnpacker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;

.field private static final INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;->Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;

    .line 187
    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;-><init>()V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;->INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;
    .locals 1

    .line 148
    sget-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;->INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;

    return-object v0
.end method


# virtual methods
.method public unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    .line 153
    invoke-static {}, Landroidx/camera/core/impl/OptionsBundle;->emptyBundle()Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v2

    const-string v3, "emptyBundle(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroidx/camera/core/impl/CaptureConfig;->defaultEmptyCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v3

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v3

    .line 159
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p2, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 160
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v2

    const-string v4, "getImplementationOptions(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->isUseRepeatingSurface()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 164
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllTags(Landroidx/camera/core/impl/TagBundle;)V

    .line 165
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v1

    const-string v4, "getSurfaces(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/DeferrableSurface;

    .line 165
    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p2, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 172
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    invoke-direct {v1, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;-><init>(Landroidx/camera/core/impl/Config;)V

    .line 175
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getCaptureRequestTemplate(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    const/4 p1, 0x1

    .line 178
    invoke-static {v1, v0, p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getSessionCaptureCallback$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILjava/lang/Object;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 179
    sget-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;->create(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 183
    :cond_1
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    return-void
.end method
