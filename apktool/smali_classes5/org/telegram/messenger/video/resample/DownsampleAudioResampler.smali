.class public Lorg/telegram/messenger/video/resample/DownsampleAudioResampler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/video/resample/AudioResampler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ratio(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V
    .locals 8

    if-lt p2, p4, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p5, v0, :cond_1

    if-ne p5, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal use of DownsampleAudioResampler. Channels:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    div-int/2addr v0, p5

    int-to-double v2, v0

    int-to-double v4, p4

    int-to-double v6, p2

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    sub-int/2addr v0, p2

    .line 29
    invoke-static {p2, p2}, Lorg/telegram/messenger/video/resample/DownsampleAudioResampler;->ratio(II)F

    move-result p4

    .line 30
    invoke-static {v0, v0}, Lorg/telegram/messenger/video/resample/DownsampleAudioResampler;->ratio(II)F

    move-result v2

    move v3, p2

    move v4, v0

    :goto_1
    if-lez v3, :cond_4

    if-lez v4, :cond_4

    cmpl-float v5, p4, v2

    if-ltz v5, :cond_3

    .line 35
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result p4

    invoke-virtual {p3, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-ne p5, v1, :cond_2

    .line 36
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result p4

    invoke-virtual {p3, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 38
    invoke-static {v3, p2}, Lorg/telegram/messenger/video/resample/DownsampleAudioResampler;->ratio(II)F

    move-result p4

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v4, v4, -0x1

    .line 43
    invoke-static {v4, v0}, Lorg/telegram/messenger/video/resample/DownsampleAudioResampler;->ratio(II)F

    move-result v2

    goto :goto_1

    :cond_4
    return-void

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of DownsampleAudioResampler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
