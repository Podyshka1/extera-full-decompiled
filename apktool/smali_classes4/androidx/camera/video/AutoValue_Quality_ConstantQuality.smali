.class final Landroidx/camera/video/AutoValue_Quality_ConstantQuality;
.super Landroidx/camera/video/Quality$ConstantQuality;
.source "SourceFile"


# instance fields
.field private final highSpeedValue:I

.field private final name:Ljava/lang/String;

.field private final typicalSizes:Ljava/util/List;

.field private final value:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/camera/video/Quality$ConstantQuality;-><init>()V

    .line 25
    iput p1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->value:I

    .line 26
    iput p2, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->highSpeedValue:I

    if-eqz p3, :cond_1

    .line 30
    iput-object p3, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->name:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 34
    iput-object p4, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->typicalSizes:Ljava/util/List;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null typicalSizes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/Quality$ConstantQuality;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 74
    check-cast p1, Landroidx/camera/video/Quality$ConstantQuality;

    .line 75
    iget v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->value:I

    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->highSpeedValue:I

    .line 76
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getHighSpeedValue()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->name:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->typicalSizes:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getTypicalSizes()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method getHighSpeedValue()I
    .locals 1

    .line 44
    iget v0, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->highSpeedValue:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypicalSizes()Ljava/util/List;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->typicalSizes:Ljava/util/List;

    return-object v0
.end method

.method getValue()I
    .locals 1

    .line 39
    iget v0, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 87
    iget v0, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->value:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 89
    iget v2, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->highSpeedValue:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 91
    iget-object v2, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 93
    iget-object v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->typicalSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstantQuality{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", highSpeedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->highSpeedValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typicalSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;->typicalSizes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
