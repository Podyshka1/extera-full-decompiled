.class public final Landroidx/camera/lifecycle/LifecycleCameraRepositories;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/lifecycle/LifecycleCameraRepositories;

.field private static final repositoryMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;

    invoke-direct {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepositories;-><init>()V

    sput-object v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->INSTANCE:Landroidx/camera/lifecycle/LifecycleCameraRepositories;

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->repositoryMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance$camera_lifecycle(I)Landroidx/camera/lifecycle/LifecycleCameraRepository;
    .locals 3

    .line 42
    sget-object v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->repositoryMap:Ljava/util/Map;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 384
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-direct {v2, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;-><init>(I)V

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 385
    :cond_0
    :goto_0
    check-cast v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method
