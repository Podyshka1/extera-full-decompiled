.class public final Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;


# instance fields
.field private final cache:Landroid/util/ArrayMap;

.field private final cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

.field private final cameraPipeContext:Landroid/content/Context;

.field private final extensionCache:Landroid/util/ArrayMap;

.field private final extensionCharacteristicsCache:Landroid/util/ArrayMap;

.field private final permissions:Landroidx/camera/camera2/pipe/core/Permissions;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;Landroidx/camera/camera2/pipe/core/TimeSource;)V
    .locals 1

    const-string v0, "cameraPipeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraMetadataConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraPipeContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 57
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->permissions:Landroidx/camera/camera2/pipe/core/Permissions;

    .line 58
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    .line 59
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 62
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    .line 65
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCache:Landroid/util/ArrayMap;

    .line 68
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCharacteristicsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public static final synthetic access$createCameraExtensionMetadata-RzXb1QE(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->createCameraExtensionMetadata-RzXb1QE(Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createCameraMetadata-0r8Bogc(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->createCameraMetadata-0r8Bogc(Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getCameraExtensionCharacteristics-EfqyGwQ(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->getCameraExtensionCharacteristics-EfqyGwQ(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    return-object p0
.end method

.method public static final synthetic access$getCameraPipeContext$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraPipeContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCache:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/core/TimeSource;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    return-object p0
.end method

.method public static final synthetic access$isMetadataRedacted(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->isMetadataRedacted()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldBlockSensorOrientationCache(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->shouldBlockSensorOrientationCache(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method private final createCameraExtensionMetadata-RzXb1QE(Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;
    .locals 12

    .line 220
    sget-object v0, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v0

    .line 222
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#readCameraExtensionMetadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :try_start_0
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 224
    :try_start_1
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v4, "CXCP"

    if-eqz v3, :cond_0

    .line 224
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading extension metadata for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v6, p1

    goto/16 :goto_4

    .line 226
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraExtensionCharacteristics-EfqyGwQ(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v9

    .line 229
    new-instance v5, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    .line 234
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v11, 0x0

    move-object v6, p1

    move v7, p2

    move v8, p3

    .line 229
    :try_start_4
    invoke-direct/range {v5 .. v11}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;-><init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 238
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 29
    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide p1

    const/4 p3, 0x1

    if-nez v7, :cond_1

    .line 241
    const-string v0, ""

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    move-object p2, v0

    goto :goto_4

    :cond_1
    if-ne v7, p3, :cond_2

    .line 242
    const-string v0, " (redacted)"

    .line 244
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded extension metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "f ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    long-to-double p1, p1

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v7

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-array p2, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p2, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p1, v0

    move-object p2, p1

    goto :goto_4

    .line 240
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v5

    :catchall_3
    move-exception v0

    move-object v6, p1

    goto :goto_1

    .line 250
    :goto_4
    :try_start_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 251
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load extension metadata for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x21

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 250
    invoke-direct {p1, p3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object p1, v0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method

.method private final createCameraMetadata-0r8Bogc(Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;
    .locals 13

    .line 150
    sget-object v0, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v8

    .line 152
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#readCameraMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v10, 0x21

    .line 154
    :try_start_1
    sget-object v11, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "CXCP"

    if-eqz v0, :cond_0

    .line 154
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading metadata for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 156
    :cond_0
    :goto_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraPipeContext$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 157
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    const-string v0, "getCameraCharacteristics(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    .line 169
    invoke-static {p0, v3}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$shouldBlockSensorOrientationCache(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCameraCacheBlocklist()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 171
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 170
    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 173
    :cond_2
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCameraCacheBlocklist()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_1
    if-nez v0, :cond_3

    .line 177
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCacheBlocklist()Ljava/util/Set;

    move-result-object v0

    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 179
    :cond_3
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCacheBlocklist()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    .line 183
    :goto_3
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 188
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/4 v7, 0x0

    move-object v4, p0

    move-object v1, p1

    move v2, p2

    .line 183
    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;-><init>(Ljava/lang/String;ZLandroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Ljava/util/Map;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 193
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v3

    sub-long/2addr v3, v8

    .line 29
    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v3

    const/4 v1, 0x1

    if-nez p2, :cond_4

    .line 196
    const-string v2, ""

    goto :goto_4

    :cond_4
    if-ne p2, v1, :cond_5

    .line 197
    const-string v2, " (redacted)"

    .line 199
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded metadata for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "f ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v3, v3

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 195
    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :cond_6
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    .line 163
    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get CameraCharacteristics for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :goto_6
    :try_start_4
    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->shouldHandleDoNotDisturbException$camera_camera2_pipe(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 205
    new-instance v0, Landroidx/camera/camera2/pipe/DoNotDisturbException;

    .line 206
    const-string v1, "Failed to load metadata: Do Not Disturb mode is on!"

    .line 205
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/DoNotDisturbException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 209
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v0
.end method

.method private final getCameraExtensionCharacteristics-EfqyGwQ(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 3

    .line 262
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCharacteristicsCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCharacteristicsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 262
    monitor-exit v0

    return-object v1

    .line 267
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    monitor-exit v0

    .line 268
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CXCP"

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving CameraExtensionCharacteristics for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraPipeContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 273
    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->getCameraExtensionCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get CameraExtensionCharacteristics for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 262
    monitor-exit v0

    throw p1
.end method

.method private final isMetadataRedacted()Z
    .locals 1

    .line 285
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->permissions:Landroidx/camera/camera2/pipe/core/Permissions;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Permissions;->getHasCameraPermission()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final shouldBlockSensorOrientationCache(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 2

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 289
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$$ExternalSyntheticApiModelOutline1;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public awaitCameraExtensionMetadata-0r8Bogc(Ljava/lang/String;I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 120
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#awaitExtensionMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 125
    :cond_0
    :try_start_3
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$isMetadataRedacted(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 126
    invoke-static {p0, p1, v1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraExtensionMetadata-RzXb1QE(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    move-result-object v1

    .line 127
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 130
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :try_start_4
    monitor-exit v0

    const/4 v0, 0x1

    .line 131
    invoke-static {p0, p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraExtensionMetadata-RzXb1QE(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    .line 121
    :goto_2
    :try_start_5
    monitor-exit v0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1

    .line 134
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extension sessions are only supported on Android S or higher. Device SDK is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#awaitMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 105
    :cond_0
    :try_start_3
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$isMetadataRedacted(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraMetadata-0r8Bogc(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    move-result-object v1

    .line 107
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 110
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :try_start_4
    monitor-exit v0

    const/4 v0, 0x1

    .line 111
    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraMetadata-0r8Bogc(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    .line 101
    :goto_2
    :try_start_5
    monitor-exit v0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method

.method public getCameraMetadata-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 71
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 71
    monitor-exit v0

    return-object v1

    .line 76
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit v0

    .line 79
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getBackgroundDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$getCameraMetadata$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$getCameraMetadata$3;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v0

    throw p1
.end method

.method public getSupportedCameraExtensions-EfqyGwQ(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 143
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->getCameraExtensionCharacteristics-EfqyGwQ(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->getSupportedExtensions(Landroid/hardware/camera2/CameraExtensionCharacteristics;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
