.class public final Landroidx/camera/camera2/pipe/compat/Camera2Quirks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;,
        Landroidx/camera/camera2/pipe/compat/Camera2Quirks$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

.field private static final SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP:Ljava/util/Map;

.field private static final SM8150_DEVICES:Ljava/util/Map;


# instance fields
.field private final metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

    .line 165
    const-string v6, "cheetah"

    const-string v7, "lynx"

    const-string v2, "oriole"

    const-string v3, "raven"

    const-string v4, "bluejay"

    const-string v5, "panther"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Google"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP:Ljava/util/Map;

    .line 168
    const-string v0, "pixel 4"

    const-string v1, "pixel 4 xl"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "google"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string/jumbo v1, "sm-g770f"

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "samsung"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SM8150_DEVICES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V
    .locals 1

    const-string v0, "metadataProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strictMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 36
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    return-void
.end method

.method public static final synthetic access$getSM8150_DEVICES$cp()Ljava/util/Map;
    .locals 1

    .line 31
    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SM8150_DEVICES:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraGraph$Flags;)I
    .locals 4

    const-string v0, "graphConfigFlags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getAwaitRepeatingRequestBeforeCapture()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    move-result-object p1

    .line 148
    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP:Ljava/util/Map;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-ge v0, v3, :cond_1

    const/16 v0, 0xa

    .line 151
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->getCompletionBehavior()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    move-result-object v0

    sget-object v3, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 157
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->getRepeatingFramesToComplete-pVg5ArA()I

    move-result p1

    return p1

    .line 155
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 156
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->getRepeatingFramesToComplete-pVg5ArA()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 118
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-gt v0, v2, :cond_1

    .line 119
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-interface {v2, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 121
    :goto_0
    const-string v2, "motorola"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const-string v2, "moto e20"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    const-string v2, "1"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v3
.end method

.method public final shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-gt v2, v0, :cond_1

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_1

    .line 80
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-interface {v2, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    return p1
.end method

.method public final shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Z
    .locals 2

    const-string v0, "graphConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getAwaitRepeatingRequestOnDisconnect()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 60
    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    return p1
.end method
