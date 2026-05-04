.class public final Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraGraphIds:Ljava/util/Set;

.field private final cameraIds:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3

    const-string v0, "cameraGraphIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    .line 21
    iput-object p2, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Check failed."

    if-le v0, v1, :cond_1

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCameraGraphIds()Ljava/util/Set;
    .locals 1

    .line 20
    iget-object v0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getCameraIds()Ljava/util/Set;
    .locals 1

    .line 21
    iget-object v0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConcurrentCameraGraphs(cameraGraphIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
