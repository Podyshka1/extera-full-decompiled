.class public final Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private final queue:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    .line 42
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 89
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 91
    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z

    .line 92
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit v0

    .line 97
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    return-void

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 100
    sget-object v0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_ABORTED-U7r42EA()I

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v1

    .line 89
    monitor-exit v0

    throw v1
.end method

.method public final remove(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 48
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    monitor-exit p1

    return-object v1

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lkotlin/collections/ArrayDeque;

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 295
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 51
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_0
    monitor-exit p1

    throw v0
.end method
