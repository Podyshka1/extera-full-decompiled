.class final Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleEventSubtitle"
.end annotation


# instance fields
.field private final cues:Lcom/google/common/collect/ImmutableList;

.field private final timeUs:J


# direct methods
.method public constructor <init>(JLcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    .line 151
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 166
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 167
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
