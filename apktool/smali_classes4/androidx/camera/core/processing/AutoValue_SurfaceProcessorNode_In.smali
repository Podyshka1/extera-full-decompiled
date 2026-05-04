.class final Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;
.super Landroidx/camera/core/processing/SurfaceProcessorNode$In;
.source "SourceFile"


# instance fields
.field private final outConfigs:Ljava/util/List;

.field private final surfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;


# direct methods
.method constructor <init>(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;-><init>()V

    if-eqz p1, :cond_1

    .line 22
    iput-object p1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->surfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz p2, :cond_0

    .line 26
    iput-object p2, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null outConfigs"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null surfaceEdge"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/SurfaceProcessorNode$In;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    check-cast p1, Landroidx/camera/core/processing/SurfaceProcessorNode$In;

    .line 55
    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->surfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;->getSurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;->getOutConfigs()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getOutConfigs()Ljava/util/List;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getSurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->surfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->surfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In{surfaceEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->surfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
