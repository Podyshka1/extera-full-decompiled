.class final Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;
.super Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private IFrameInterval:Ljava/lang/Integer;

.field private bitrate:Ljava/lang/Integer;

.field private captureFrameRate:Ljava/lang/Integer;

.field private colorFormat:Ljava/lang/Integer;

.field private dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

.field private encodeFrameRate:Ljava/lang/Integer;

.field private inputTimebase:Landroidx/camera/core/impl/Timebase;

.field private mimeType:Ljava/lang/String;

.field private profile:Ljava/lang/Integer;

.field private resolution:Landroid/util/Size;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->mimeType:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getProfile()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->profile:Ljava/lang/Integer;

    .line 189
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getInputTimebase()Landroidx/camera/core/impl/Timebase;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 190
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getResolution()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->resolution:Landroid/util/Size;

    .line 191
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getColorFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->colorFormat:Ljava/lang/Integer;

    .line 192
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getDataSpace()Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 193
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getCaptureFrameRate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->captureFrameRate:Ljava/lang/Integer;

    .line 194
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getEncodeFrameRate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->encodeFrameRate:Ljava/lang/Integer;

    .line 195
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getIFrameInterval()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->IFrameInterval:Ljava/lang/Integer;

    .line 196
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getBitrate()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->bitrate:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;-><init>(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .locals 14

    .line 263
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->mimeType:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mimeType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->profile:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    if-nez v0, :cond_2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inputTimebase"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_2
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->resolution:Landroid/util/Size;

    if-nez v0, :cond_3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resolution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_3
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->colorFormat:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " colorFormat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    :cond_4
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    if-nez v0, :cond_5

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_5
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->captureFrameRate:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " captureFrameRate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_6
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->encodeFrameRate:Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encodeFrameRate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_7
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->IFrameInterval:Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IFrameInterval"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_8
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->bitrate:Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bitrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    new-instance v2, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;

    iget-object v3, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->profile:Ljava/lang/Integer;

    .line 298
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    iget-object v6, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->resolution:Landroid/util/Size;

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->colorFormat:Ljava/lang/Integer;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->captureFrameRate:Ljava/lang/Integer;

    .line 303
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->encodeFrameRate:Ljava/lang/Integer;

    .line 304
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->IFrameInterval:Ljava/lang/Integer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->bitrate:Ljava/lang/Integer;

    .line 306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroid/util/Size;ILandroidx/camera/video/internal/encoder/VideoEncoderDataSpace;IIIILandroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$1;)V

    return-object v2

    .line 294
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBitrate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->bitrate:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCaptureFrameRate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->captureFrameRate:Ljava/lang/Integer;

    return-object p0
.end method

.method public setColorFormat(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->colorFormat:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDataSpace(Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 237
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    return-object p0

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null dataSpace"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncodeFrameRate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->encodeFrameRate:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIFrameInterval(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->IFrameInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method public setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 216
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    return-object p0

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null inputTimebase"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->mimeType:Ljava/lang/String;

    return-object p0

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null mimeType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProfile(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->profile:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResolution(Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 224
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->resolution:Landroid/util/Size;

    return-object p0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null resolution"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
