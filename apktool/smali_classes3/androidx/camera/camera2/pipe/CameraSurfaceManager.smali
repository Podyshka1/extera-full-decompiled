.class public final Landroidx/camera/camera2/pipe/CameraSurfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;,
        Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;,
        Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;

.field private static final surfaceTokenDebugIds:Lkotlinx/atomicfu/AtomicInt;


# instance fields
.field private final listeners:Ljava/util/Set;

.field private final lock:Ljava/lang/Object;

.field private final useCountMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->Companion:Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;

    const/4 v0, 0x0

    .line 176
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->surfaceTokenDebugIds:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->lock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->useCountMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->listeners:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getSurfaceTokenDebugIds$cp()Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    .line 42
    sget-object v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->surfaceTokenDebugIds:Lkotlinx/atomicfu/AtomicInt;

    return-object v0
.end method


# virtual methods
.method public final addListener(Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;)V
    .locals 5

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->useCountMap:Ljava/util/Map;

    .line 180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 523
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 101
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v0

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 104
    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;->onSurfaceActive(Landroid/view/Surface;)V

    goto :goto_1

    :cond_2
    return-void

    .line 99
    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final onTokenClosed$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;)V
    .locals 4

    const-string/jumbo v0, "surfaceToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->getSurface$camera_camera2_pipe()Landroid/view/Surface;

    move-result-object v1

    .line 149
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->useCountMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 152
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->useCountMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->listeners:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 166
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->useCountMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 168
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    if-eqz p1, :cond_1

    .line 170
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;

    .line 170
    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;->onSurfaceInactive(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void

    .line 150
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") has no use count"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final registerSurface$camera_camera2_pipe(Landroid/view/Surface;)Ljava/lang/AutoCloseable;
    .locals 6

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSurface: Surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t valid!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    new-instance v1, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;-><init>(Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroid/view/Surface;)V

    .line 121
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->useCountMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 122
    iget-object v4, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->useCountMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 135
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->listeners:Ljava/util/Set;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 137
    :goto_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v0

    if-eqz v2, :cond_3

    .line 139
    check-cast v2, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;

    .line 139
    invoke-interface {v2, p1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;->onSurfaceActive(Landroid/view/Surface;)V

    goto :goto_2

    :cond_3
    return-object v1

    .line 119
    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public final removeListener(Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
