.class public final Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;
.super Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageCaptureOptionUnpacker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;

.field private static final INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;->Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;

    .line 202
    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;-><init>()V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;
    .locals 1

    .line 191
    sget-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;

    return-object v0
.end method


# virtual methods
.method public unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;->unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    .line 195
    instance-of v0, p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {v0, p1}, Landroidx/camera/camera2/compat/workaround/ImageCapturePixelHDRPlusKt;->toggleHDRPlus(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Landroidx/camera/core/impl/ImageCaptureConfig;)V

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p1

    .line 196
    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    return-void

    .line 195
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "config is not ImageCaptureConfig"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
