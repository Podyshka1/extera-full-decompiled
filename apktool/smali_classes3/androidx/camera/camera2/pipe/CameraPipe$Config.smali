.class public final Landroidx/camera/camera2/pipe/CameraPipe$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final cameraBackendConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

.field private final cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

.field private final cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

.field private final flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

.field private final imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

.field private final threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/media/ImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Flags;Landroidx/camera/camera2/pipe/PlatformApiCompat;)V
    .locals 0

    const-string p8, "appContext"

    invoke-static {p1, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p8, "threadConfig"

    invoke-static {p2, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "cameraMetadataConfig"

    invoke-static {p3, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "cameraBackendConfig"

    invoke-static {p4, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "cameraInteropConfig"

    invoke-static {p5, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "flags"

    invoke-static {p7, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->appContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    .line 147
    iput-object p3, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    .line 148
    iput-object p4, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraBackendConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    .line 149
    iput-object p5, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 150
    iput-object p6, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    .line 151
    iput-object p7, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/media/ImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Flags;Landroidx/camera/camera2/pipe/PlatformApiCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 146
    new-instance v2, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    const/16 v10, 0x7f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v2

    :cond_0
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 147
    new-instance p3, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    const/4 v1, 0x3

    invoke-direct {p3, v2, v2, v1, v2}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;-><init>(Ljava/util/Set;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 148
    new-instance v3, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 149
    new-instance v4, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;-><init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/DurationNs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_3
    move-object/from16 v4, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object/from16 v1, p6

    :goto_2
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_5

    .line 151
    new-instance v5, Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v2}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_5
    move-object/from16 v5, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object/from16 p10, v2

    :goto_4
    move-object/from16 p4, p2

    move-object/from16 p5, p3

    move-object/from16 p8, v1

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p9, v5

    move-object p2, p0

    move-object p3, p1

    goto :goto_5

    :cond_6
    move-object/from16 p10, p8

    goto :goto_4

    .line 144
    :goto_5
    invoke-direct/range {p2 .. p10}, Landroidx/camera/camera2/pipe/CameraPipe$Config;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/media/ImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Flags;Landroidx/camera/camera2/pipe/PlatformApiCompat;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->appContext:Landroid/content/Context;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;->appContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraBackendConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraBackendConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/CameraPipe$Config;->flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    const/4 p1, 0x0

    invoke-static {p1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraBackendConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    return-object v0
.end method

.method public final getCameraInteropConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    return-object v0
.end method

.method public final getCameraMetadataConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    return-object v0
.end method

.method public final getFlags()Landroidx/camera/camera2/pipe/CameraPipe$Flags;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    return-object v0
.end method

.method public final getImageSources()Landroidx/camera/camera2/pipe/media/ImageSources;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    return-object v0
.end method

.method public final getPlatformApiCompat()Landroidx/camera/camera2/pipe/PlatformApiCompat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getThreadConfig()Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraBackendConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(appContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threadConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraMetadataConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraBackendConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraBackendConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraInteropConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platformApiCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
