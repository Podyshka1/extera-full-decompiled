.class final Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;
.super Landroidx/camera/core/impl/AttachedSurfaceInfo;
.source "SourceFile"


# instance fields
.field private final captureTypes:Ljava/util/List;

.field private final customMaxFrameRate:I

.field private final dynamicRange:Landroidx/camera/core/DynamicRange;

.field private final imageFormat:I

.field private final implementationOptions:Landroidx/camera/core/impl/Config;

.field private final sessionType:I

.field private final size:Landroid/util/Size;

.field private final strictFrameRateRequired:Z

.field private final surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

.field private final targetFrameRate:Landroid/util/Range;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;ZI)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;-><init>()V

    if-eqz p1, :cond_4

    .line 49
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

    .line 50
    iput p2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->imageFormat:I

    if-eqz p3, :cond_3

    .line 54
    iput-object p3, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->size:Landroid/util/Size;

    if-eqz p4, :cond_2

    .line 58
    iput-object p4, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->dynamicRange:Landroidx/camera/core/DynamicRange;

    if-eqz p5, :cond_1

    .line 62
    iput-object p5, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->captureTypes:Ljava/util/List;

    .line 63
    iput-object p6, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 64
    iput p7, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->sessionType:I

    if-eqz p8, :cond_0

    .line 68
    iput-object p8, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->targetFrameRate:Landroid/util/Range;

    .line 69
    iput-boolean p9, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->strictFrameRateRequired:Z

    .line 70
    iput p10, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->customMaxFrameRate:I

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null targetFrameRate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null captureTypes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null dynamicRange"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null size"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null surfaceConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 145
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 146
    check-cast p1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 147
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->imageFormat:I

    .line 148
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImageFormat()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->size:Landroid/util/Size;

    .line 149
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 150
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/DynamicRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->captureTypes:Ljava/util/List;

    .line 151
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCaptureTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->implementationOptions:Landroidx/camera/core/impl/Config;

    if-nez v1, :cond_1

    .line 152
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->sessionType:I

    .line 153
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSessionType()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->targetFrameRate:Landroid/util/Range;

    .line 154
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getTargetFrameRate()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->strictFrameRateRequired:Z

    .line 155
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->isStrictFrameRateRequired()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->customMaxFrameRate:I

    .line 156
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCustomMaxFrameRate()I

    move-result p1

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCaptureTypes()Ljava/util/List;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->captureTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCustomMaxFrameRate()I
    .locals 1

    .line 121
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->customMaxFrameRate:I

    return v0
.end method

.method public getDynamicRange()Landroidx/camera/core/DynamicRange;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->dynamicRange:Landroidx/camera/core/DynamicRange;

    return-object v0
.end method

.method public getImageFormat()I
    .locals 1

    .line 80
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->imageFormat:I

    return v0
.end method

.method public getImplementationOptions()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->implementationOptions:Landroidx/camera/core/impl/Config;

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    .line 106
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->sessionType:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->size:Landroid/util/Size;

    return-object v0
.end method

.method public getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

    return-object v0
.end method

.method public getTargetFrameRate()Landroid/util/Range;
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->targetFrameRate:Landroid/util/Range;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 165
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceConfig;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 167
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->imageFormat:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 169
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 171
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->dynamicRange:Landroidx/camera/core/DynamicRange;

    invoke-virtual {v2}, Landroidx/camera/core/DynamicRange;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 173
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->captureTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 175
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->implementationOptions:Landroidx/camera/core/impl/Config;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 177
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->sessionType:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 179
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->targetFrameRate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 181
    iget-boolean v2, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->strictFrameRateRequired:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 183
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->customMaxFrameRate:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isStrictFrameRateRequired()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->strictFrameRateRequired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttachedSurfaceInfo{surfaceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->imageFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->dynamicRange:Landroidx/camera/core/DynamicRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", captureTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->captureTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", implementationOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->implementationOptions:Landroidx/camera/core/impl/Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->sessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->targetFrameRate:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strictFrameRateRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->strictFrameRateRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", customMaxFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->customMaxFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
