.class public Lorg/telegram/messenger/video/resample/UpsampleAudioResampler;
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

.method private static fakeSample(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;II)S
    .locals 0

    .line 72
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p0

    return p0
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
    .locals 9

    if-gt p2, p4, :cond_6

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

    const-string p3, "Illegal use of UpsampleAudioResampler. Channels:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    div-int/2addr v2, p5

    int-to-double v3, v2

    int-to-double v5, p4

    int-to-double v7, p2

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    sub-int/2addr p2, v2

    .line 31
    invoke-static {v2, v2}, Lorg/telegram/messenger/video/resample/UpsampleAudioResampler;->ratio(II)F

    move-result p4

    .line 32
    invoke-static {p2, p2}, Lorg/telegram/messenger/video/resample/UpsampleAudioResampler;->ratio(II)F

    move-result v3

    move v5, p2

    move v4, v2

    :goto_1
    if-lez v4, :cond_5

    if-lez v5, :cond_5

    cmpl-float v6, p4, v3

    if-ltz v6, :cond_3

    .line 37
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result p4

    invoke-virtual {p3, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-ne p5, v1, :cond_2

    .line 38
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result p4

    invoke-virtual {p3, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 40
    invoke-static {v4, v2}, Lorg/telegram/messenger/video/resample/UpsampleAudioResampler;->ratio(II)F

    move-result p4

    goto :goto_1

    .line 42
    :cond_3
    invoke-static {p3, p1, v0, p5}, Lorg/telegram/messenger/video/resample/UpsampleAudioResampler;->fakeSample(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;II)S

    move-result v3

    invoke-virtual {p3, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-ne p5, v1, :cond_4

    .line 43
    invoke-static {p3, p1, v1, p5}, Lorg/telegram/messenger/video/resample/UpsampleAudioResampler;->fakeSample(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;II)S

    move-result v3

    invoke-virtual {p3, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 45
    invoke-static {v5, p2}, Lorg/telegram/messenger/video/resample/UpsampleAudioResampler;->ratio(II)F

    move-result v3

    goto :goto_1

    :cond_5
    return-void

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of UpsampleAudioResampler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
