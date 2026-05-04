.class public final Landroidx/camera/video/VideoSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoSpec$Builder;,
        Landroidx/camera/video/VideoSpec$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/VideoSpec$Companion;

.field private static final DEFAULT:Landroidx/camera/video/VideoSpec;

.field private static final QUALITY_SELECTOR_UNSPECIFIED:Landroidx/camera/video/QualitySelector;


# instance fields
.field private final aspectRatio:I

.field private final bitrate:I

.field private final encodeFrameRate:I

.field private final mimeType:Ljava/lang/String;

.field private final qualitySelector:Landroidx/camera/video/QualitySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/video/VideoSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/VideoSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/VideoSpec;->Companion:Landroidx/camera/video/VideoSpec$Companion;

    .line 136
    sget-object v1, Landroidx/camera/video/QualitySelector;->NONE:Landroidx/camera/video/QualitySelector;

    const-string v2, "NONE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Landroidx/camera/video/VideoSpec;->QUALITY_SELECTOR_UNSPECIFIED:Landroidx/camera/video/QualitySelector;

    .line 139
    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Companion;->builder()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Builder;->build()Landroidx/camera/video/VideoSpec;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/VideoSpec;->DEFAULT:Landroidx/camera/video/VideoSpec;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;)V
    .locals 1

    const-string v0, "qualitySelector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    .line 29
    iput p2, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    .line 30
    iput p3, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    .line 31
    iput p4, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    .line 32
    iput-object p5, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Landroidx/camera/video/VideoSpec;
    .locals 1

    .line 24
    sget-object v0, Landroidx/camera/video/VideoSpec;->DEFAULT:Landroidx/camera/video/VideoSpec;

    return-object v0
.end method

.method public static final synthetic access$getQUALITY_SELECTOR_UNSPECIFIED$cp()Landroidx/camera/video/QualitySelector;
    .locals 1

    .line 24
    sget-object v0, Landroidx/camera/video/VideoSpec;->QUALITY_SELECTOR_UNSPECIFIED:Landroidx/camera/video/QualitySelector;

    return-object v0
.end method

.method public static final builder()Landroidx/camera/video/VideoSpec$Builder;
    .locals 1

    sget-object v0, Landroidx/camera/video/VideoSpec;->Companion:Landroidx/camera/video/VideoSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Companion;->builder()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 57
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/VideoSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 58
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    check-cast p1, Landroidx/camera/video/VideoSpec;

    iget-object v3, p1, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    iget v3, p1, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    if-ne v1, v3, :cond_2

    .line 60
    iget v1, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    iget v3, p1, Landroidx/camera/video/VideoSpec;->bitrate:I

    if-ne v1, v3, :cond_2

    .line 61
    iget v1, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    iget v3, p1, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    if-ne v1, v3, :cond_2

    .line 62
    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getAspectRatio()I
    .locals 1

    .line 31
    iget v0, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    return v0
.end method

.method public final getBitrate()I
    .locals 1

    .line 30
    iget v0, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    return v0
.end method

.method public final getEncodeFrameRate()I
    .locals 1

    .line 29
    iget v0, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    return v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getQualitySelector()Landroidx/camera/video/QualitySelector;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 66
    iget-object v0, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toBuilder()Landroidx/camera/video/VideoSpec$Builder;
    .locals 2

    .line 37
    new-instance v0, Landroidx/camera/video/VideoSpec$Builder;

    invoke-direct {v0}, Landroidx/camera/video/VideoSpec$Builder;-><init>()V

    .line 38
    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    .line 39
    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setEncodeFrameRate(I)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    .line 40
    iget v1, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setBitrate(I)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    .line 41
    iget v1, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    .line 42
    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSpec{qualitySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", encodeFrameRate="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", bitrate="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", aspectRatio="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v1, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", mimeType="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
