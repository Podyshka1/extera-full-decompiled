.class final Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private final eventTimesUs:[J

.field private final globalStyles:Ljava/util/Map;

.field private final imageMap:Ljava/util/Map;

.field private final regionMap:Ljava/util/Map;

.field private final root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 42
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    .line 43
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 45
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getEventTimesUs()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    .line 52
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
