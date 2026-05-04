.class public final Landroidx/camera/camera2/adapter/ZoomValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ZoomState;


# instance fields
.field private linearZoom:Ljava/lang/Float;

.field private final maxZoomRatio:F

.field private final minZoomRatio:F

.field private final zoomRatio:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    .line 26
    iput p2, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    .line 27
    iput p3, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/ZoomValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/ZoomValue;

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    iget v3, p1, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    iget v3, p1, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    iget p1, p1, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getLinearZoom()F
    .locals 4

    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->linearZoom:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 63
    :cond_0
    sget-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    .line 64
    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    .line 65
    iget v2, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    .line 66
    iget v3, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/camera2/internal/ZoomMath;->getLinearZoomFromZoomRatio(FFF)F

    move-result v0

    return v0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .line 57
    iget v0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 1

    .line 59
    iget v0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .line 55
    iget v0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    .line 0
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 0
    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    .line 0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 0
    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    .line 0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoomValue(zoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
