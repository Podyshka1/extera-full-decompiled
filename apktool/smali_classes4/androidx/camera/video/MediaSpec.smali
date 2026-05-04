.class public final Landroidx/camera/video/MediaSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/MediaSpec$Builder;,
        Landroidx/camera/video/MediaSpec$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/MediaSpec$Companion;


# instance fields
.field private final audioSpec:Landroidx/camera/video/AudioSpec;

.field private final outputFormat:I

.field private final videoSpec:Landroidx/camera/video/VideoSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/MediaSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/MediaSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;I)V
    .locals 1

    const-string v0, "videoSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 37
    iput-object p2, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 38
    iput p3, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    return-void
.end method

.method public static final builder()Landroidx/camera/video/MediaSpec$Builder;
    .locals 1

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec$Companion;->builder()Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final outputFormatToMuxerFormat(I)I
    .locals 1

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToMuxerFormat(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/MediaSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 52
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    check-cast p1, Landroidx/camera/video/MediaSpec;

    iget-object v3, p1, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    iget-object v3, p1, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget v1, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    iget p1, p1, Landroidx/camera/video/MediaSpec;->outputFormat:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getOutputFormat()I
    .locals 1

    .line 38
    iget v0, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    return v0
.end method

.method public final getVideoSpec()Landroidx/camera/video/VideoSpec;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 58
    iget-object v0, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    iget v2, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toBuilder()Landroidx/camera/video/MediaSpec$Builder;
    .locals 2

    .line 43
    new-instance v0, Landroidx/camera/video/MediaSpec$Builder;

    invoke-direct {v0}, Landroidx/camera/video/MediaSpec$Builder;-><init>()V

    .line 44
    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v0, v1}, Landroidx/camera/video/MediaSpec$Builder;->setVideoSpec(Landroidx/camera/video/VideoSpec;)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    .line 45
    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0, v1}, Landroidx/camera/video/MediaSpec$Builder;->setAudioSpec(Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    .line 46
    iget v1, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/MediaSpec$Builder;->setOutputFormat(I)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSpec{videoSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", audioSpec="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", outputFormat="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
