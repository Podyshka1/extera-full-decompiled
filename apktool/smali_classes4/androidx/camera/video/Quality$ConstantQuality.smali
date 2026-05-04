.class public abstract Landroidx/camera/video/Quality$ConstantQuality;
.super Landroidx/camera/video/Quality;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/Quality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConstantQuality"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Landroidx/camera/video/Quality;-><init>(Landroidx/camera/video/Quality$1;)V

    return-void
.end method

.method static of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;
    .locals 1

    .line 179
    new-instance v0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method abstract getHighSpeedValue()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getQualityValue(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 201
    invoke-virtual {p0}, Landroidx/camera/video/Quality$ConstantQuality;->getHighSpeedValue()I

    move-result p1

    return p1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown quality source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/video/Quality$ConstantQuality;->getValue()I

    move-result p1

    return p1
.end method

.method public abstract getTypicalSizes()Ljava/util/List;
.end method

.method abstract getValue()I
.end method
