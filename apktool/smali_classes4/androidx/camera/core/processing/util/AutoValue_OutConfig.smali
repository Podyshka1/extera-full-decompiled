.class final Landroidx/camera/core/processing/util/AutoValue_OutConfig;
.super Landroidx/camera/core/processing/util/OutConfig;
.source "SourceFile"


# instance fields
.field private final getCropRect:Landroid/graphics/Rect;

.field private final getFormat:I

.field private final getRotationDegrees:I

.field private final getSize:Landroid/util/Size;

.field private final getTargets:I

.field private final getUuid:Ljava/util/UUID;

.field private final isMirroring:Z

.field private final shouldRespectInputCropRect:Z


# direct methods
.method constructor <init>(Ljava/util/UUID;IILandroid/graphics/Rect;Landroid/util/Size;IZZ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/camera/core/processing/util/OutConfig;-><init>()V

    if-eqz p1, :cond_2

    .line 42
    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    .line 43
    iput p2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    .line 44
    iput p3, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    if-eqz p4, :cond_1

    .line 48
    iput-object p4, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    if-eqz p5, :cond_0

    .line 52
    iput-object p5, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    .line 53
    iput p6, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    .line 54
    iput-boolean p7, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    .line 55
    iput-boolean p8, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null getSize"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null getCropRect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null getUuid"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 119
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/util/OutConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 120
    check-cast p1, Landroidx/camera/core/processing/util/OutConfig;

    .line 121
    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    .line 122
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getTargets()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    .line 123
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    .line 125
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    .line 126
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getRotationDegrees()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    .line 127
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->isMirroring()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    .line 128
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->shouldRespectInputCropRect()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 72
    iget v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    return v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 87
    iget v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    return-object v0
.end method

.method public getTargets()I
    .locals 1

    .line 66
    iget v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    return v0
.end method

.method getUuid()Ljava/util/UUID;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 137
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 139
    iget v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 141
    iget v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 143
    iget-object v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 145
    iget-object v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 147
    iget v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 149
    iget-boolean v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 151
    iget-boolean v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public isMirroring()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    return v0
.end method

.method public shouldRespectInputCropRect()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutConfig{getUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getTargets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getRotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMirroring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRespectInputCropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
