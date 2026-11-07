package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ExternallyLoadedMediaSource extends BaseMediaSource {
    private MediaItem mediaItem;
    private final long timelineDurationUs;

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
    }

    public static final class Factory implements MediaSource.Factory {
        private final long timelineDurationUs;

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSource.Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSource.Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            return this;
        }

        public Factory(long j, ExternalLoader externalLoader) {
            this.timelineDurationUs = j;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public ExternallyLoadedMediaSource createMediaSource(MediaItem mediaItem) {
            return new ExternallyLoadedMediaSource(mediaItem, this.timelineDurationUs, null);
        }
    }

    private ExternallyLoadedMediaSource(MediaItem mediaItem, long j, ExternalLoader externalLoader) {
        this.mediaItem = mediaItem;
        this.timelineDurationUs = j;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public void prepareSourceInternal(TransferListener transferListener) {
        refreshSourceInfo(new SinglePeriodTimeline(this.timelineDurationUs, true, false, false, null, getMediaItem()));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public synchronized MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        MediaItem.LocalConfiguration localConfiguration2 = (MediaItem.LocalConfiguration) Assertions.checkNotNull(getMediaItem().localConfiguration);
        if (localConfiguration == null || !localConfiguration.uri.equals(localConfiguration2.uri) || !Objects.equals(localConfiguration.mimeType, localConfiguration2.mimeType)) {
            return false;
        }
        long j = localConfiguration.imageDurationMs;
        return j == -9223372036854775807L || Util.msToUs(j) == this.timelineDurationUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        MediaItem mediaItem = getMediaItem();
        Assertions.checkNotNull(mediaItem.localConfiguration);
        Assertions.checkNotNull(mediaItem.localConfiguration.mimeType, "Externally loaded mediaItems require a MIME type.");
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        return new ExternallyLoadedMediaPeriod(localConfiguration.uri, localConfiguration.mimeType, null);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((ExternallyLoadedMediaPeriod) mediaPeriod).releasePeriod();
    }
}
