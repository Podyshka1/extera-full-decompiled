.class public final Landroidx/camera/camera2/pipe/compat/RequestOpen;
.super Landroidx/camera/camera2/pipe/compat/CameraRequest;
.source "SourceFile"


# instance fields
.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private final isForegroundObserver:Lkotlin/jvm/functions/Function1;

.field private final isPrewarm:Z

.field private final sharedCameraIds:Ljava/util/List;

.field private final virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string/jumbo v0, "virtualCamera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedCameraIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isForegroundObserver"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraRequest;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 44
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 45
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 46
    iput-boolean p4, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    .line 47
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getSharedCameraIds()Ljava/util/List;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    return-object v0
.end method

.method public final getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isForegroundObserver()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final isPrewarm()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestOpen(virtualCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sharedCameraIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPrewarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForegroundObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
