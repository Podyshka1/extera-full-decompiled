package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
final class MediaPeriodQueue {
    private final AnalyticsCollector analyticsCollector;
    private final HandlerWrapper analyticsCollectorHandler;
    private int length;
    private MediaPeriodHolder loading;
    private long nextWindowSequenceNumber;
    private Object oldFrontPeriodUid;
    private long oldFrontPeriodWindowSequenceNumber;
    private MediaPeriodHolder playing;
    private MediaPeriodHolder reading;
    private int repeatMode;
    private boolean shuffleModeEnabled;
    private final Timeline.Period period = new Timeline.Period();
    private final Timeline.Window window = new Timeline.Window();

    public MediaPeriodQueue(AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper) {
        this.analyticsCollector = analyticsCollector;
        this.analyticsCollectorHandler = handlerWrapper;
    }

    public boolean updateRepeatMode(Timeline timeline, int i) {
        this.repeatMode = i;
        return updateForPlaybackModeChange(timeline);
    }

    public boolean updateShuffleModeEnabled(Timeline timeline, boolean z) {
        this.shuffleModeEnabled = z;
        return updateForPlaybackModeChange(timeline);
    }

    public boolean isLoading(MediaPeriod mediaPeriod) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder != null && mediaPeriodHolder.mediaPeriod == mediaPeriod;
    }

    public void reevaluateBuffer(long j) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            mediaPeriodHolder.reevaluateBuffer(j);
        }
    }

    public boolean shouldLoadNextMediaPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            return !mediaPeriodHolder.info.isFinal && mediaPeriodHolder.isFullyBuffered() && this.loading.info.durationUs != -9223372036854775807L && this.length < 100;
        }
        return true;
    }

    public MediaPeriodInfo getNextMediaPeriodInfo(long j, PlaybackInfo playbackInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder == null) {
            return getFirstMediaPeriodInfo(playbackInfo);
        }
        return getFollowingMediaPeriodInfo(playbackInfo.timeline, mediaPeriodHolder, j);
    }

    public MediaPeriodHolder enqueueNextMediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, MediaPeriodInfo mediaPeriodInfo, TrackSelectorResult trackSelectorResult) {
        MediaPeriodInfo mediaPeriodInfo2;
        long rendererOffset;
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder == null) {
            rendererOffset = 1000000000000L;
            mediaPeriodInfo2 = mediaPeriodInfo;
        } else {
            mediaPeriodInfo2 = mediaPeriodInfo;
            rendererOffset = (mediaPeriodHolder.getRendererOffset() + this.loading.info.durationUs) - mediaPeriodInfo2.startPositionUs;
        }
        MediaPeriodHolder mediaPeriodHolder2 = new MediaPeriodHolder(rendererCapabilitiesArr, rendererOffset, trackSelector, allocator, mediaSourceList, mediaPeriodInfo2, trackSelectorResult);
        MediaPeriodHolder mediaPeriodHolder3 = this.loading;
        if (mediaPeriodHolder3 != null) {
            mediaPeriodHolder3.setNext(mediaPeriodHolder2);
        } else {
            this.playing = mediaPeriodHolder2;
            this.reading = mediaPeriodHolder2;
        }
        this.oldFrontPeriodUid = null;
        this.loading = mediaPeriodHolder2;
        this.length++;
        notifyQueueUpdate();
        return mediaPeriodHolder2;
    }

    public MediaPeriodHolder getLoadingPeriod() {
        return this.loading;
    }

    public MediaPeriodHolder getPlayingPeriod() {
        return this.playing;
    }

    public MediaPeriodHolder getReadingPeriod() {
        return this.reading;
    }

    public MediaPeriodHolder advanceReadingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.reading;
        Assertions.checkState((mediaPeriodHolder == null || mediaPeriodHolder.getNext() == null) ? false : true);
        this.reading = this.reading.getNext();
        notifyQueueUpdate();
        return this.reading;
    }

    public MediaPeriodHolder advancePlayingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.playing;
        if (mediaPeriodHolder == null) {
            return null;
        }
        if (mediaPeriodHolder == this.reading) {
            this.reading = mediaPeriodHolder.getNext();
        }
        this.playing.release();
        int i = this.length - 1;
        this.length = i;
        if (i == 0) {
            this.loading = null;
            MediaPeriodHolder mediaPeriodHolder2 = this.playing;
            this.oldFrontPeriodUid = mediaPeriodHolder2.uid;
            this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolder2.info.id.windowSequenceNumber;
        }
        this.playing = this.playing.getNext();
        notifyQueueUpdate();
        return this.playing;
    }

    public boolean removeAfter(MediaPeriodHolder mediaPeriodHolder) {
        boolean z = false;
        Assertions.checkState(mediaPeriodHolder != null);
        if (mediaPeriodHolder.equals(this.loading)) {
            return false;
        }
        this.loading = mediaPeriodHolder;
        while (mediaPeriodHolder.getNext() != null) {
            mediaPeriodHolder = mediaPeriodHolder.getNext();
            if (mediaPeriodHolder == this.reading) {
                this.reading = this.playing;
                z = true;
            }
            mediaPeriodHolder.release();
            this.length--;
        }
        this.loading.setNext(null);
        notifyQueueUpdate();
        return z;
    }

    public void clear() {
        if (this.length == 0) {
            return;
        }
        MediaPeriodHolder next = (MediaPeriodHolder) Assertions.checkStateNotNull(this.playing);
        this.oldFrontPeriodUid = next.uid;
        this.oldFrontPeriodWindowSequenceNumber = next.info.id.windowSequenceNumber;
        while (next != null) {
            next.release();
            next = next.getNext();
        }
        this.playing = null;
        this.loading = null;
        this.reading = null;
        this.length = 0;
        notifyQueueUpdate();
    }

    public boolean updateQueuedPeriods(Timeline timeline, long j, long j2) {
        boolean zRemoveAfter;
        MediaPeriodInfo updatedMediaPeriodInfo;
        MediaPeriodHolder mediaPeriodHolder = null;
        for (MediaPeriodHolder next = this.playing; next != null; next = next.getNext()) {
            MediaPeriodInfo mediaPeriodInfo = next.info;
            if (mediaPeriodHolder == null) {
                updatedMediaPeriodInfo = getUpdatedMediaPeriodInfo(timeline, mediaPeriodInfo);
            } else {
                MediaPeriodInfo followingMediaPeriodInfo = getFollowingMediaPeriodInfo(timeline, mediaPeriodHolder, j);
                if (followingMediaPeriodInfo == null) {
                    zRemoveAfter = removeAfter(mediaPeriodHolder);
                } else if (canKeepMediaPeriodHolder(mediaPeriodInfo, followingMediaPeriodInfo)) {
                    updatedMediaPeriodInfo = followingMediaPeriodInfo;
                } else {
                    zRemoveAfter = removeAfter(mediaPeriodHolder);
                }
                return !zRemoveAfter;
            }
            next.info = updatedMediaPeriodInfo.copyWithRequestedContentPositionUs(mediaPeriodInfo.requestedContentPositionUs);
            mediaPeriodHolder = next;
        }
        return true;
    }

    public MediaPeriodInfo getUpdatedMediaPeriodInfo(Timeline timeline, MediaPeriodInfo mediaPeriodInfo) {
        long durationUs;
        boolean zIsServerSideInsertedAdGroup;
        int i;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        boolean zIsLastInPeriod = isLastInPeriod(mediaPeriodId);
        boolean zIsLastInWindow = isLastInWindow(timeline, mediaPeriodId);
        boolean zIsLastInTimeline = isLastInTimeline(timeline, mediaPeriodId, zIsLastInPeriod);
        timeline.getPeriodByUid(mediaPeriodInfo.id.periodUid, this.period);
        long adGroupTimeUs = (mediaPeriodId.isAd() || (i = mediaPeriodId.nextAdGroupIndex) == -1) ? -9223372036854775807L : this.period.getAdGroupTimeUs(i);
        if (mediaPeriodId.isAd()) {
            durationUs = this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        } else {
            durationUs = (adGroupTimeUs == -9223372036854775807L || adGroupTimeUs == Long.MIN_VALUE) ? this.period.getDurationUs() : adGroupTimeUs;
        }
        if (mediaPeriodId.isAd()) {
            zIsServerSideInsertedAdGroup = this.period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex);
        } else {
            int i2 = mediaPeriodId.nextAdGroupIndex;
            zIsServerSideInsertedAdGroup = i2 != -1 && this.period.isServerSideInsertedAdGroup(i2);
        }
        return new MediaPeriodInfo(mediaPeriodId, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.requestedContentPositionUs, adGroupTimeUs, durationUs, zIsServerSideInsertedAdGroup, zIsLastInPeriod, zIsLastInWindow, zIsLastInTimeline);
    }

    private static MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(Timeline timeline, Object obj, long j, long j2, Timeline.Window window, Timeline.Period period) {
        timeline.getPeriodByUid(obj, period);
        timeline.getWindow(period.windowIndex, window);
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        while (period.durationUs == 0 && period.getAdGroupCount() > 0 && period.isServerSideInsertedAdGroup(period.getRemovedAdGroupCount()) && period.getAdGroupIndexForPositionUs(0L) == -1) {
            int i = indexOfPeriod + 1;
            if (indexOfPeriod >= window.lastPeriodIndex) {
                break;
            }
            timeline.getPeriod(i, period, true);
            obj = Assertions.checkNotNull(period.uid);
            indexOfPeriod = i;
        }
        timeline.getPeriodByUid(obj, period);
        int adGroupIndexForPositionUs = period.getAdGroupIndexForPositionUs(j);
        if (adGroupIndexForPositionUs == -1) {
            return new MediaSource.MediaPeriodId(obj, j2, period.getAdGroupIndexAfterPositionUs(j));
        }
        return new MediaSource.MediaPeriodId(obj, adGroupIndexForPositionUs, period.getFirstAdIndexToPlay(adGroupIndexForPositionUs), j2);
    }

    public MediaSource.MediaPeriodId resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Timeline timeline, Object obj, long j) {
        long jResolvePeriodIndexToWindowSequenceNumber = resolvePeriodIndexToWindowSequenceNumber(timeline, obj);
        timeline.getPeriodByUid(obj, this.period);
        timeline.getWindow(this.period.windowIndex, this.window);
        boolean z = false;
        for (int indexOfPeriod = timeline.getIndexOfPeriod(obj); indexOfPeriod >= this.window.firstPeriodIndex; indexOfPeriod--) {
            timeline.getPeriod(indexOfPeriod, this.period, true);
            boolean z2 = this.period.getAdGroupCount() > 0;
            z |= z2;
            Timeline.Period period = this.period;
            if (period.getAdGroupIndexForPositionUs(period.durationUs) != -1) {
                obj = Assertions.checkNotNull(this.period.uid);
            }
            if (z && (!z2 || this.period.durationUs != 0)) {
                break;
            }
        }
        return resolveMediaPeriodIdForAds(timeline, obj, j, jResolvePeriodIndexToWindowSequenceNumber, this.window, this.period);
    }

    private void notifyQueueUpdate() {
        final ImmutableList.Builder builder = ImmutableList.builder();
        for (MediaPeriodHolder next = this.playing; next != null; next = next.getNext()) {
            builder.add(next.info.id);
        }
        MediaPeriodHolder mediaPeriodHolder = this.reading;
        final MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodHolder == null ? null : mediaPeriodHolder.info.id;
        this.analyticsCollectorHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaPeriodQueue$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyQueueUpdate$0(builder, mediaPeriodId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyQueueUpdate$0(ImmutableList.Builder builder, MediaSource.MediaPeriodId mediaPeriodId) {
        this.analyticsCollector.updateMediaPeriodQueueInfo(builder.build(), mediaPeriodId);
    }

    private long resolvePeriodIndexToWindowSequenceNumber(Timeline timeline, Object obj) {
        int indexOfPeriod;
        int i = timeline.getPeriodByUid(obj, this.period).windowIndex;
        Object obj2 = this.oldFrontPeriodUid;
        if (obj2 != null && (indexOfPeriod = timeline.getIndexOfPeriod(obj2)) != -1 && timeline.getPeriod(indexOfPeriod, this.period).windowIndex == i) {
            return this.oldFrontPeriodWindowSequenceNumber;
        }
        for (MediaPeriodHolder next = this.playing; next != null; next = next.getNext()) {
            if (next.uid.equals(obj)) {
                return next.info.id.windowSequenceNumber;
            }
        }
        for (MediaPeriodHolder next2 = this.playing; next2 != null; next2 = next2.getNext()) {
            int indexOfPeriod2 = timeline.getIndexOfPeriod(next2.uid);
            if (indexOfPeriod2 != -1 && timeline.getPeriod(indexOfPeriod2, this.period).windowIndex == i) {
                return next2.info.id.windowSequenceNumber;
            }
        }
        long j = this.nextWindowSequenceNumber;
        this.nextWindowSequenceNumber = 1 + j;
        if (this.playing == null) {
            this.oldFrontPeriodUid = obj;
            this.oldFrontPeriodWindowSequenceNumber = j;
        }
        return j;
    }

    private boolean canKeepMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo, MediaPeriodInfo mediaPeriodInfo2) {
        return mediaPeriodInfo.startPositionUs == mediaPeriodInfo2.startPositionUs && mediaPeriodInfo.id.equals(mediaPeriodInfo2.id);
    }

    private boolean updateForPlaybackModeChange(Timeline timeline) {
        Timeline timeline2;
        MediaPeriodHolder next = this.playing;
        if (next == null) {
            return true;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(next.uid);
        while (true) {
            timeline2 = timeline;
            indexOfPeriod = timeline2.getNextPeriodIndex(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            while (next.getNext() != null && !next.info.isLastInTimelinePeriod) {
                next = next.getNext();
            }
            MediaPeriodHolder next2 = next.getNext();
            if (indexOfPeriod == -1 || next2 == null || timeline2.getIndexOfPeriod(next2.uid) != indexOfPeriod) {
                break;
            }
            next = next2;
            timeline = timeline2;
        }
        boolean zRemoveAfter = removeAfter(next);
        next.info = getUpdatedMediaPeriodInfo(timeline2, next.info);
        return !zRemoveAfter;
    }

    private MediaPeriodInfo getFirstMediaPeriodInfo(PlaybackInfo playbackInfo) {
        return getMediaPeriodInfo(playbackInfo.timeline, playbackInfo.periodId, playbackInfo.requestedContentPositionUs, playbackInfo.positionUs);
    }

    private MediaPeriodInfo getFollowingMediaPeriodInfo(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j) {
        Timeline timeline2;
        long j2;
        long j3;
        Object obj;
        long j4;
        long j5;
        long j6;
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        long rendererOffset = (mediaPeriodHolder.getRendererOffset() + mediaPeriodInfo.durationUs) - j;
        boolean z = mediaPeriodInfo.isLastInTimelinePeriod;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        boolean z2 = false;
        if (z) {
            int nextPeriodIndex = timeline.getNextPeriodIndex(timeline.getIndexOfPeriod(mediaPeriodId.periodUid), this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            if (nextPeriodIndex == -1) {
                return null;
            }
            int i = timeline.getPeriod(nextPeriodIndex, this.period, true).windowIndex;
            Object objCheckNotNull = Assertions.checkNotNull(this.period.uid);
            long j7 = mediaPeriodInfo.id.windowSequenceNumber;
            if (timeline.getWindow(i, this.window).firstPeriodIndex == nextPeriodIndex) {
                Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.window, this.period, i, -9223372036854775807L, Math.max(0L, rendererOffset));
                if (periodPositionUs == null) {
                    return null;
                }
                Object obj2 = periodPositionUs.first;
                long jLongValue = ((Long) periodPositionUs.second).longValue();
                MediaPeriodHolder next = mediaPeriodHolder.getNext();
                if (next != null && next.uid.equals(obj2)) {
                    j3 = next.info.id.windowSequenceNumber;
                } else {
                    j3 = this.nextWindowSequenceNumber;
                    this.nextWindowSequenceNumber = 1 + j3;
                }
                obj = obj2;
                j4 = jLongValue;
                j2 = -9223372036854775807L;
            } else {
                j2 = 0;
                j3 = j7;
                obj = objCheckNotNull;
                j4 = 0;
            }
            MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds = resolveMediaPeriodIdForAds(timeline, obj, j4, j3, this.window, this.period);
            if (j2 == -9223372036854775807L || mediaPeriodInfo.requestedContentPositionUs == -9223372036854775807L) {
                j5 = j4;
                j6 = j2;
            } else {
                if (timeline.getPeriodByUid(mediaPeriodInfo.id.periodUid, this.period).getAdGroupCount() > 0) {
                    Timeline.Period period = this.period;
                    if (period.isServerSideInsertedAdGroup(period.getRemovedAdGroupCount())) {
                        z2 = true;
                    }
                }
                if (mediaPeriodIdResolveMediaPeriodIdForAds.isAd() && z2) {
                    j5 = j4;
                    j6 = mediaPeriodInfo.requestedContentPositionUs;
                } else {
                    if (z2) {
                        j4 = mediaPeriodInfo.requestedContentPositionUs;
                    }
                    j5 = j4;
                    j6 = j2;
                }
            }
            return getMediaPeriodInfo(timeline, mediaPeriodIdResolveMediaPeriodIdForAds, j6, j5);
        }
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        if (mediaPeriodId.isAd()) {
            int i2 = mediaPeriodId.adGroupIndex;
            int adCountInAdGroup = this.period.getAdCountInAdGroup(i2);
            if (adCountInAdGroup == -1) {
                return null;
            }
            int nextAdIndexToPlay = this.period.getNextAdIndexToPlay(i2, mediaPeriodId.adIndexInAdGroup);
            if (nextAdIndexToPlay < adCountInAdGroup) {
                return getMediaPeriodInfoForAd(timeline, mediaPeriodId.periodUid, i2, nextAdIndexToPlay, mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber);
            }
            long jLongValue2 = mediaPeriodInfo.requestedContentPositionUs;
            if (jLongValue2 == -9223372036854775807L) {
                Timeline.Window window = this.window;
                Timeline.Period period2 = this.period;
                Pair<Object, Long> periodPositionUs2 = timeline.getPeriodPositionUs(window, period2, period2.windowIndex, -9223372036854775807L, Math.max(0L, rendererOffset));
                timeline2 = timeline;
                if (periodPositionUs2 == null) {
                    return null;
                }
                jLongValue2 = ((Long) periodPositionUs2.second).longValue();
            } else {
                timeline2 = timeline;
            }
            return getMediaPeriodInfoForContent(timeline, mediaPeriodId.periodUid, Math.max(getMinStartPositionAfterAdGroupUs(timeline2, mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex), jLongValue2), mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber);
        }
        int firstAdIndexToPlay = this.period.getFirstAdIndexToPlay(mediaPeriodId.nextAdGroupIndex);
        if (this.period.isServerSideInsertedAdGroup(mediaPeriodId.nextAdGroupIndex) && this.period.getAdState(mediaPeriodId.nextAdGroupIndex, firstAdIndexToPlay) == 3) {
            z2 = true;
        }
        if (firstAdIndexToPlay == this.period.getAdCountInAdGroup(mediaPeriodId.nextAdGroupIndex) || z2) {
            return getMediaPeriodInfoForContent(timeline, mediaPeriodId.periodUid, getMinStartPositionAfterAdGroupUs(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex), mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
        }
        return getMediaPeriodInfoForAd(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex, firstAdIndexToPlay, mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
    }

    private MediaPeriodInfo getMediaPeriodInfo(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j, long j2) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        boolean zIsAd = mediaPeriodId.isAd();
        Object obj = mediaPeriodId.periodUid;
        if (zIsAd) {
            return getMediaPeriodInfoForAd(timeline, obj, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j, mediaPeriodId.windowSequenceNumber);
        }
        return getMediaPeriodInfoForContent(timeline, obj, j2, j, mediaPeriodId.windowSequenceNumber);
    }

    private MediaPeriodInfo getMediaPeriodInfoForAd(Timeline timeline, Object obj, int i, int i2, long j, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, i, i2, j2);
        long adDurationUs = timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        long adResumePositionUs = i2 == this.period.getFirstAdIndexToPlay(i) ? this.period.getAdResumePositionUs() : 0L;
        boolean zIsServerSideInsertedAdGroup = this.period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex);
        if (adDurationUs != -9223372036854775807L && adResumePositionUs >= adDurationUs) {
            adResumePositionUs = Math.max(0L, adDurationUs - 1);
        }
        return new MediaPeriodInfo(mediaPeriodId, adResumePositionUs, j, -9223372036854775807L, adDurationUs, zIsServerSideInsertedAdGroup, false, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private MediaPeriodInfo getMediaPeriodInfoForContent(Timeline timeline, Object obj, long j, long j2, long j3) {
        boolean z;
        long j4;
        long adGroupTimeUs;
        long j5;
        long jMax;
        timeline.getPeriodByUid(obj, this.period);
        int adGroupIndexAfterPositionUs = this.period.getAdGroupIndexAfterPositionUs(j);
        Timeline.Period period = this.period;
        int i = 1;
        if (adGroupIndexAfterPositionUs == -1) {
            if (period.getAdGroupCount() > 0) {
                Timeline.Period period2 = this.period;
                z = period2.isServerSideInsertedAdGroup(period2.getRemovedAdGroupCount());
            }
        } else if (period.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs)) {
            long adGroupTimeUs2 = this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
            Timeline.Period period3 = this.period;
            if (adGroupTimeUs2 == period3.durationUs && period3.hasPlayedAdGroup(adGroupIndexAfterPositionUs)) {
                z = true;
                adGroupIndexAfterPositionUs = -1;
            }
        }
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, j3, adGroupIndexAfterPositionUs);
        boolean zIsLastInPeriod = isLastInPeriod(mediaPeriodId);
        boolean zIsLastInWindow = isLastInWindow(timeline, mediaPeriodId);
        boolean zIsLastInTimeline = isLastInTimeline(timeline, mediaPeriodId, zIsLastInPeriod);
        boolean z2 = adGroupIndexAfterPositionUs != -1 && this.period.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs);
        if (adGroupIndexAfterPositionUs != -1) {
            adGroupTimeUs = this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
        } else if (z) {
            adGroupTimeUs = this.period.durationUs;
        } else {
            j4 = -9223372036854775807L;
            j5 = (j4 != -9223372036854775807L || j4 == Long.MIN_VALUE) ? this.period.durationUs : j4;
            if (j5 != -9223372036854775807L || j < j5) {
                jMax = j;
            } else {
                if (!zIsLastInTimeline && z) {
                    i = 0;
                }
                jMax = Math.max(0L, j5 - ((long) i));
            }
            return new MediaPeriodInfo(mediaPeriodId, jMax, j2, j4, j5, z2, zIsLastInPeriod, zIsLastInWindow, zIsLastInTimeline);
        }
        j4 = adGroupTimeUs;
        if (j4 != -9223372036854775807L) {
        }
        if (j5 != -9223372036854775807L) {
            jMax = j;
        }
        return new MediaPeriodInfo(mediaPeriodId, jMax, j2, j4, j5, z2, zIsLastInPeriod, zIsLastInWindow, zIsLastInTimeline);
    }

    private boolean isLastInPeriod(MediaSource.MediaPeriodId mediaPeriodId) {
        return !mediaPeriodId.isAd() && mediaPeriodId.nextAdGroupIndex == -1;
    }

    private boolean isLastInWindow(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (isLastInPeriod(mediaPeriodId)) {
            return timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window).lastPeriodIndex == timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        }
        return false;
    }

    private boolean isLastInTimeline(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        int indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        return !timeline.getWindow(timeline.getPeriod(indexOfPeriod, this.period).windowIndex, this.window).isDynamic && timeline.isLastPeriod(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled) && z;
    }

    private long getMinStartPositionAfterAdGroupUs(Timeline timeline, Object obj, int i) {
        timeline.getPeriodByUid(obj, this.period);
        long adGroupTimeUs = this.period.getAdGroupTimeUs(i);
        Timeline.Period period = this.period;
        if (adGroupTimeUs == Long.MIN_VALUE) {
            return period.durationUs;
        }
        return adGroupTimeUs + period.getContentResumeOffsetUs(i);
    }
}
