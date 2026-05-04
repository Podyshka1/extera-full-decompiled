.class public final Landroidx/camera/camera2/compat/ZoomCompat$Bindings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/ZoomCompat$Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/ZoomCompat$Bindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideZoomCompat(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/compat/ZoomCompat;
    .locals 5

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->Companion:Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;->getRequiredCharacteristics()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1761
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 70
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for zoom features."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    new-instance v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/compat/NoOpZoomCompat;-><init>(Landroidx/camera/camera2/impl/CameraProperties;)V

    return-object v0

    .line 78
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    .line 79
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/compat/workaround/CameraMetadataSafeGetterKt;->getControlZoomRatioRangeSafely(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 81
    new-instance v1, Landroidx/camera/camera2/compat/AndroidRZoomCompat;

    invoke-direct {v1, p1, v0}, Landroidx/camera/camera2/compat/AndroidRZoomCompat;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroid/util/Range;)V

    return-object v1

    .line 84
    :cond_4
    :goto_0
    new-instance v0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/compat/CropRegionZoomCompat;-><init>(Landroidx/camera/camera2/impl/CameraProperties;)V

    return-object v0
.end method
