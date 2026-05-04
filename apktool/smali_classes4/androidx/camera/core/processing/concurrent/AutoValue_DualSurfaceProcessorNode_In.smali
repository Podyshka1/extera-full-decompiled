.class final Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;
.super Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;
.source "SourceFile"


# instance fields
.field private final outConfigs:Ljava/util/List;

.field private final primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

.field private final secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;


# direct methods
.method constructor <init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;-><init>()V

    if-eqz p1, :cond_2

    .line 25
    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz p2, :cond_1

    .line 29
    iput-object p2, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz p3, :cond_0

    .line 33
    iput-object p3, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null outConfigs"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null secondarySurfaceEdge"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null primarySurfaceEdge"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 67
    check-cast p1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    .line 68
    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getPrimarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 69
    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getSecondarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getOutConfigs()Ljava/util/List;

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

    .line 49
    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getPrimarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    return-object v0
.end method

.method public getSecondarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 79
    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 81
    iget-object v2, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 83
    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In{primarySurfaceEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondarySurfaceEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
