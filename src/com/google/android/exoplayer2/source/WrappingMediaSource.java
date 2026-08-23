package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.TransferListener;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WrappingMediaSource extends CompositeMediaSource<Void> {
    private static final Void CHILD_SOURCE_ID = null;
    protected final MediaSource mediaSource;

    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    public long getMediaTimeForChildMediaTime(long j) {
        return j;
    }

    public int getWindowIndexForChildWindowIndex(int i) {
        return i;
    }

    public abstract void onChildSourceInfoRefreshed(Timeline timeline);

    public WrappingMediaSource(MediaSource mediaSource) {
        this.mediaSource = mediaSource;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public final void prepareSourceInternal(TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        prepareSourceInternal();
    }

    public void prepareSourceInternal() {
        prepareChildSource();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public Timeline getInitialTimeline() {
        return this.mediaSource.getInitialTimeline();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public boolean isSingleWindow() {
        return this.mediaSource.isSingleWindow();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaSource.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* JADX INFO: renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final void lambda$prepareChildSource$0(Void r1, MediaSource mediaSource, Timeline timeline) {
        onChildSourceInfoRefreshed(timeline);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public final int getWindowIndexForChildWindowIndex(Void r1, int i) {
        return getWindowIndexForChildWindowIndex(i);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public final MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(Void r1, MediaSource.MediaPeriodId mediaPeriodId) {
        return getMediaPeriodIdForChildMediaPeriodId(mediaPeriodId);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public final long getMediaTimeForChildMediaTime(Void r1, long j) {
        return getMediaTimeForChildMediaTime(j);
    }

    public final void prepareChildSource() {
        prepareChildSource(CHILD_SOURCE_ID, this.mediaSource);
    }
}
