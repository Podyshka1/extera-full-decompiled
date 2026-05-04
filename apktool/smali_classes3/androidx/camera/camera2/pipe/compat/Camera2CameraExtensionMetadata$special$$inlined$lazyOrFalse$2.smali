.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;
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

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 5

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#isCaptureProgressSupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    :try_start_0
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_0

    .line 98
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->access$getExtensionCharacteristics$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v2

    .line 99
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->getCameraExtension()I

    move-result v3

    .line 97
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/compat/Api34Compat;->isCaptureProcessProgressAvailable(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    move v2, v1

    .line 79
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move v1, v2

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :goto_2
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 75
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "! Caching false and ignoring exception."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v3, "CXCP"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_1
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
