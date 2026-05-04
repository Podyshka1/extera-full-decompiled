.class public final Landroidx/camera/video/AudioSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/AudioSpec$Builder;,
        Landroidx/camera/video/AudioSpec$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/AudioSpec$Companion;

.field private static final DEFAULT:Landroidx/camera/video/AudioSpec;


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final mimeType:Ljava/lang/String;

.field private final sampleRate:I

.field private final source:I

.field private final sourceFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/AudioSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/AudioSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/AudioSpec;->Companion:Landroidx/camera/video/AudioSpec$Companion;

    .line 282
    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec$Companion;->builder()Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec$Builder;->build()Landroidx/camera/video/AudioSpec;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/AudioSpec;->DEFAULT:Landroidx/camera/video/AudioSpec;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 1

    const-string v0, "mimeType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    .line 32
    iput p2, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    .line 33
    iput p3, p0, Landroidx/camera/video/AudioSpec;->source:I

    .line 34
    iput p4, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    .line 35
    iput p5, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    .line 36
    iput-object p6, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Landroidx/camera/video/AudioSpec;
    .locals 1

    .line 27
    sget-object v0, Landroidx/camera/video/AudioSpec;->DEFAULT:Landroidx/camera/video/AudioSpec;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/AudioSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 52
    :cond_1
    iget v1, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    check-cast p1, Landroidx/camera/video/AudioSpec;

    iget v3, p1, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    if-ne v1, v3, :cond_2

    .line 53
    iget v1, p0, Landroidx/camera/video/AudioSpec;->source:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->source:I

    if-ne v1, v3, :cond_2

    .line 54
    iget v1, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->channelCount:I

    if-ne v1, v3, :cond_2

    .line 55
    iget v1, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->bitrate:I

    if-ne v1, v3, :cond_2

    .line 56
    iget v1, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->sampleRate:I

    if-ne v1, v3, :cond_2

    .line 57
    iget-object v1, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 61
    iget v0, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/camera/video/AudioSpec;->source:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSpec{bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", sourceFormat="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", source="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Landroidx/camera/video/AudioSpec;->source:I

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", sampleRate="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", channelCount="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", mimeType="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
