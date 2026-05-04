.class public final Landroidx/camera/camera2/pipe/compat/OutputConfigurations;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final all:Ljava/util/List;

.field private final deferred:Ljava/util/Map;

.field private final outputSurfaceMap:Ljava/util/Map;

.field private final postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;)V
    .locals 1

    const-string v0, "all"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deferred"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputSurfaceMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    .line 584
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    .line 585
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 586
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAll()Ljava/util/List;
    .locals 1

    .line 583
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    return-object v0
.end method

.method public final getDeferred()Ljava/util/Map;
    .locals 1

    .line 584
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    return-object v0
.end method

.method public final getOutputSurfaceMap()Ljava/util/Map;
    .locals 1

    .line 586
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getPostviewOutput()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 1

    .line 585
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputConfigurations(all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postviewOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputSurfaceMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
