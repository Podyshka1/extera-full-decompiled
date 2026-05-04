.class public final Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BestSizesAndMaxFpsForConfigs"
.end annotation


# instance fields
.field private final bestSizes:Ljava/util/List;

.field private final bestSizesForStreamUseCase:Ljava/util/List;

.field private final maxFpsForAllSizes:I

.field private final maxFpsForBestSizes:I

.field private final maxFpsForStreamUseCase:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;III)V
    .locals 1

    const-string v0, "bestSizes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2383
    iput-object p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizes:Ljava/util/List;

    .line 2384
    iput-object p2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizesForStreamUseCase:Ljava/util/List;

    .line 2385
    iput p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForBestSizes:I

    .line 2386
    iput p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForStreamUseCase:I

    .line 2387
    iput p5, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForAllSizes:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizes:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizesForStreamUseCase:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizesForStreamUseCase:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForBestSizes:I

    iget v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForBestSizes:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForStreamUseCase:I

    iget v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForStreamUseCase:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForAllSizes:I

    iget p1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForAllSizes:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBestSizes()Ljava/util/List;
    .locals 1

    .line 2383
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizes:Ljava/util/List;

    return-object v0
.end method

.method public final getBestSizesForStreamUseCase()Ljava/util/List;
    .locals 1

    .line 2384
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizesForStreamUseCase:Ljava/util/List;

    return-object v0
.end method

.method public final getMaxFpsForAllSizes()I
    .locals 1

    .line 2387
    iget v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForAllSizes:I

    return v0
.end method

.method public final getMaxFpsForBestSizes()I
    .locals 1

    .line 2385
    iget v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForBestSizes:I

    return v0
.end method

.method public final getMaxFpsForStreamUseCase()I
    .locals 1

    .line 2386
    iget v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForStreamUseCase:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizesForStreamUseCase:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForBestSizes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForStreamUseCase:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForAllSizes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BestSizesAndMaxFpsForConfigs(bestSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bestSizesForStreamUseCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizesForStreamUseCase:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxFpsForBestSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForBestSizes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxFpsForStreamUseCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForStreamUseCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxFpsForAllSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForAllSizes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
