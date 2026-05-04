.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraOpener;


# instance fields
.field private final cameraManager:Ljavax/inject/Provider;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 1

    const-string v0, "cameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;->cameraManager:Ljavax/inject/Provider;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-void
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    .line 106
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method


# virtual methods
.method public openCamera-RzXb1QE(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 115
    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;->cameraManager:Ljavax/inject/Provider;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CameraManager;

    .line 116
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#openCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 119
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 118
    invoke-static {p3, p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->openCamera(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 125
    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 127
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 128
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 79
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method
