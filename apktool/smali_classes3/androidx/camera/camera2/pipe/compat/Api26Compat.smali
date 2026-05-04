.class public final Landroidx/camera/camera2/pipe/compat/Api26Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api26Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api26Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api26Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api26Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api26Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addSurfaces(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V
    .locals 1

    const-string v0, "outputConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public static final enableSurfaceSharing(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 1

    const-string v0, "outputConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    return-void
.end method

.method public static final finalizeOutputConfigurations(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;)V
    .locals 1

    const-string v0, "cameraCaptureSession"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    return-void
.end method

.method public static final newOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method
