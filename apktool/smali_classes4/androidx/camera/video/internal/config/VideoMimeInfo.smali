.class public final Landroidx/camera/video/internal/config/VideoMimeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final compatibleVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

.field private final mimeType:Ljava/lang/String;

.field private final profile:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)V
    .locals 1

    const-string v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->mimeType:Ljava/lang/String;

    .line 29
    iput p2, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->profile:I

    .line 36
    iput-object p3, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->compatibleVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/VideoMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/config/VideoMimeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/internal/config/VideoMimeInfo;

    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/video/internal/config/VideoMimeInfo;->mimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->profile:I

    iget v3, p1, Landroidx/camera/video/internal/config/VideoMimeInfo;->profile:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->compatibleVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    iget-object p1, p1, Landroidx/camera/video/internal/config/VideoMimeInfo;->compatibleVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCompatibleVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->compatibleVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->profile:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->compatibleVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMimeInfo(mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compatibleVideoProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoMimeInfo;->compatibleVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
