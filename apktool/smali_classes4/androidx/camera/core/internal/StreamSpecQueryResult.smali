.class public final Landroidx/camera/core/internal/StreamSpecQueryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final maxSupportedFrameRate:I

.field private final streamSpecs:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;I)V
    .locals 1

    const-string v0, "streamSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->streamSpecs:Ljava/util/Map;

    .line 32
    iput p2, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->maxSupportedFrameRate:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/internal/StreamSpecQueryResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object v1, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->streamSpecs:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/core/internal/StreamSpecQueryResult;->streamSpecs:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->maxSupportedFrameRate:I

    iget p1, p1, Landroidx/camera/core/internal/StreamSpecQueryResult;->maxSupportedFrameRate:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMaxSupportedFrameRate()I
    .locals 1

    .line 32
    iget v0, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->maxSupportedFrameRate:I

    return v0
.end method

.method public final getStreamSpecs()Ljava/util/Map;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->streamSpecs:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->streamSpecs:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->maxSupportedFrameRate:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamSpecQueryResult(streamSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->streamSpecs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSupportedFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/internal/StreamSpecQueryResult;->maxSupportedFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
