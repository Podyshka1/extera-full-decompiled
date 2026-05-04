.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/CameraPipeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$u5fcAhcmf6Jw690I5-P-Cj5GlYg(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideCameraBackends$lambda$2(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;-><init>()V

    return-void
.end method

.method private static final provideCameraBackends$lambda$2(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final configureImageSources(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/media/ImageSources;
    .locals 1

    const-string v0, "imageReaderImageSources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getImageSources()Landroidx/camera/camera2/pipe/media/ImageSources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getImageSources()Landroidx/camera/camera2/pipe/media/ImageSources;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final provideCameraBackends(Landroidx/camera/camera2/pipe/CameraPipe$Config;Ljavax/inject/Provider;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 9

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCameraBackend"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeLifetime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getInternalBackend()Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "Initialize defaultCameraBackend"

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 166
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/CameraBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getCameraBackends()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 174
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getCameraBackends()Ljava/util/Map;

    move-result-object p2

    .line 175
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 174
    invoke-static {p2, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 177
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getDefaultBackend-AKmI2lo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v3, p1

    .line 178
    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 182
    new-instance v2, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    const/4 v8, 0x0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 179
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in the list of available CameraPipe backends! Available values are "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 170
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraBackendConfig#cameraBackends should not contain a backend with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string p2, ". Use CameraBackendConfig#internalBackend field instead."

    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final provideCameraContext(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)Landroidx/camera/camera2/pipe/CameraContext;
    .locals 1

    const-string v0, "cameraPipeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraBackends"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)V

    return-object v0
.end method

.method public final provideCameraDeviceSetupCompatFactory(Landroid/content/Context;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;
    .locals 1

    const-string v0, "cameraPipeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;

    invoke-direct {v0, p1}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final provideCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    const-string v0, "cameraPipeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    return-object p1
.end method

.method public final provideCameraMetadataConfig(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraMetadataConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object p1

    return-object p1
.end method

.method public final provideCameraPipeJob()Lkotlinx/coroutines/Job;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    return-object v0
.end method

.method public final provideCameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 1

    .line 202
    new-instance v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;-><init>()V

    return-object v0
.end method

.method public final provideContext(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroid/content/Context;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getAppContext()Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public final provideDevicePolicyManagerWrapper(Landroid/content/Context;)Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;
    .locals 2

    const-string v0, "cameraPipeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 132
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;

    const-string v1, "null cannot be cast to non-null type android.app.admin.DevicePolicyManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-object v0
.end method

.method public final providePackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    const-string v0, "cameraPipeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "getPackageManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final provideStrictMode(Landroidx/camera/camera2/pipe/CameraPipe$Flags;)Landroidx/camera/camera2/pipe/StrictMode;
    .locals 1

    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->getStrictModeEnabled()Z

    move-result p1

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/StrictMode;-><init>(Z)V

    return-object v0
.end method
