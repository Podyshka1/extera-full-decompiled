.class public final Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;
    }
.end annotation


# instance fields
.field private final configuredOutputs:Ljava/util/List;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->lock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->configuredOutputs:Ljava/util/List;

    return-void
.end method

.method private final closeIfConfigured(Ljava/util/List;Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 1

    .line 108
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;

    .line 109
    invoke-virtual {v0, p2}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->contains(Landroidx/camera/core/impl/DeferrableSurface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 3

    .line 86
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->configuredOutputs:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;

    .line 87
    invoke-virtual {v2}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 88
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->configuredOutputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public configure-hB7JTeY(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 4

    const-string v0, "deferrableSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graph"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->configuredOutputs:Ljava/util/List;

    new-instance v2, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;-><init>(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public onSurfaceInactive(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 2

    const-string v0, "deferrableSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->configuredOutputs:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;->closeIfConfigured(Ljava/util/List;Landroidx/camera/core/impl/DeferrableSurface;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
