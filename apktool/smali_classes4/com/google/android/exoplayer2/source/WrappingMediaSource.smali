.class public abstract Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "SourceFile"


# static fields
.field private static final CHILD_SOURCE_ID:Ljava/lang/Void;


# instance fields
.field protected final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 0
    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 166
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaTimeForChildMediaTime(J)J
    .locals 0

    .line 0
    return-wide p1
.end method

.method protected bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J
    .locals 0

    .line 185
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getWindowIndexForChildWindowIndex(I)I
    .locals 0

    .line 0
    return p1
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I

    move-result p1

    return p1
.end method

.method protected final getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I
    .locals 0

    .line 148
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(I)I

    move-result p1

    return p1
.end method

.method public isSingleWindow()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->isSingleWindow()Z

    move-result v0

    return v0
.end method

.method protected abstract onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected final onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 130
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected final prepareChildSource()V
    .locals 2

    .line 212
    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method protected prepareSourceInternal()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareChildSource()V

    return-void
.end method

.method protected final prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareSourceInternal()V

    return-void
.end method
