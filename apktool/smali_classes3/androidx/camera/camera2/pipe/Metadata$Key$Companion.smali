.class public final Landroidx/camera/camera2/pipe/Metadata$Key$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/Metadata$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->getKeys$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->getKeys$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v1

    .line 384
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Landroidx/camera/camera2/pipe/Metadata$Key;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Landroidx/camera/camera2/pipe/Metadata$Key;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    check-cast v2, Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 53
    invoke-static {v2}, Landroidx/camera/camera2/pipe/Metadata$Key;->access$getType$p(Landroidx/camera/camera2/pipe/Metadata$Key;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 51
    monitor-exit v0

    return-object v2

    .line 53
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final getKeys$camera_camera2_pipe()Ljava/util/Map;
    .locals 1

    .line 40
    invoke-static {}, Landroidx/camera/camera2/pipe/Metadata$Key;->access$getKeys$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
