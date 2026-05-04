.class public Lorg/telegram/messenger/video/remix/DefaultAudioRemixer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/video/remix/AudioRemixer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemixedSize(III)I
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 28
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->SURROUND:Lorg/telegram/messenger/video/remix/AudioRemixer;

    goto :goto_0

    :cond_0
    if-le p2, p3, :cond_1

    .line 30
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->DOWNMIX:Lorg/telegram/messenger/video/remix/AudioRemixer;

    goto :goto_0

    :cond_1
    if-ge p2, p3, :cond_2

    .line 32
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->UPMIX:Lorg/telegram/messenger/video/remix/AudioRemixer;

    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->PASSTHROUGH:Lorg/telegram/messenger/video/remix/AudioRemixer;

    .line 36
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/video/remix/AudioRemixer;->getRemixedSize(III)I

    move-result p1

    return p1
.end method

.method public remix(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 13
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->SURROUND:Lorg/telegram/messenger/video/remix/AudioRemixer;

    goto :goto_0

    :cond_0
    if-le p2, p4, :cond_1

    .line 15
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->DOWNMIX:Lorg/telegram/messenger/video/remix/AudioRemixer;

    goto :goto_0

    :cond_1
    if-ge p2, p4, :cond_2

    .line 17
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->UPMIX:Lorg/telegram/messenger/video/remix/AudioRemixer;

    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Lorg/telegram/messenger/video/remix/AudioRemixer;->PASSTHROUGH:Lorg/telegram/messenger/video/remix/AudioRemixer;

    .line 21
    :goto_0
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/video/remix/AudioRemixer;->remix(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;I)V

    return-void
.end method
