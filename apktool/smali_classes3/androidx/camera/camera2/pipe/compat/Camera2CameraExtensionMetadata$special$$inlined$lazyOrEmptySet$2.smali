.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;-><init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;->invoke()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Set;
    .locals 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#availableCaptureResultKeys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->access$getExtensionCharacteristics$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->getCameraExtension()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->getAvailableCaptureResultKeys(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Ljava/util/Set;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 53
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :goto_2
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 75
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "! Caching {} and ignoring exception."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v2, "CXCP"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_2
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
