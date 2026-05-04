.class final Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/EncoderProfilesResolverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# instance fields
.field private final cameraConfig:Ljava/lang/Object;

.field private final cameraId:Ljava/lang/String;

.field private final videoCapabilitiesSource:I

.field private final videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

.field private final videoRecordingType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEncoderInfoFinder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    .line 120
    iput p3, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    .line 121
    iput p4, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    .line 122
    iput-object p5, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    iget v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    iget v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    iget-object p1, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheKey(cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoRecordingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoCapabilitiesSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoEncoderInfoFinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
