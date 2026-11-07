package androidx.media3.exoplayer.hls;

import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.FilteringHlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.DefaultCompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.MediaSourceFactory;
import androidx.media3.exoplayer.source.SinglePeriodTimeline;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class HlsMediaSource extends BaseMediaSource implements HlsPlaylistTracker.PrimaryPlaylistListener {
    private final boolean allowChunklessPreparation;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final HlsDataSourceFactory dataSourceFactory;
    private final DrmSessionManager drmSessionManager;
    private final long elapsedRealTimeOffsetMs;
    private final HlsExtractorFactory extractorFactory;
    private MediaItem.LiveConfiguration liveConfiguration;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private MediaItem mediaItem;
    private TransferListener mediaTransferListener;
    private final int metadataType;
    private final HlsPlaylistTracker playlistTracker;
    private final long timestampAdjusterInitializationTimeoutMs;
    private final boolean useSessionKeys;

    static {
        MediaLibraryInfo.registerModule("media3.exoplayer.hls");
    }

    public static final class Factory implements MediaSourceFactory {
        public static final /* synthetic */ int $r8$clinit = 0;
        private boolean allowChunklessPreparation;
        private int codecsToParseWithinGopSampleDependencies;
        private CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private long elapsedRealTimeOffsetMs;
        private HlsExtractorFactory extractorFactory;
        private final HlsDataSourceFactory hlsDataSourceFactory;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private int metadataType;
        private boolean parseSubtitlesDuringExtraction;
        private HlsPlaylistParserFactory playlistParserFactory;
        private HlsPlaylistTracker.Factory playlistTrackerFactory;
        private SubtitleParser.Factory subtitleParserFactoryOverride;
        private long timestampAdjusterInitializationTimeoutMs;
        private boolean useSessionKeys;

        public Factory(DataSource.Factory factory) {
            this(new DefaultHlsDataSourceFactory(factory));
        }

        public Factory(HlsDataSourceFactory hlsDataSourceFactory) {
            this.hlsDataSourceFactory = (HlsDataSourceFactory) Assertions.checkNotNull(hlsDataSourceFactory);
            this.drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            this.playlistParserFactory = new DefaultHlsPlaylistParserFactory();
            this.playlistTrackerFactory = DefaultHlsPlaylistTracker.FACTORY;
            this.loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            this.compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
            this.metadataType = 1;
            this.elapsedRealTimeOffsetMs = -9223372036854775807L;
            this.allowChunklessPreparation = true;
            experimentalParseSubtitlesDuringExtraction(true);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = (LoadErrorHandlingPolicy) Assertions.checkNotNull(loadErrorHandlingPolicy, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setSubtitleParserFactory(SubtitleParser.Factory factory) {
            this.subtitleParserFactoryOverride = factory;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        @Deprecated
        public Factory experimentalParseSubtitlesDuringExtraction(boolean z) {
            this.parseSubtitlesDuringExtraction = z;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i) {
            this.codecsToParseWithinGopSampleDependencies = i;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = (DrmSessionManagerProvider) Assertions.checkNotNull(drmSessionManagerProvider, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public HlsMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            if (this.extractorFactory == null) {
                this.extractorFactory = new DefaultHlsExtractorFactory();
            }
            SubtitleParser.Factory factory = this.subtitleParserFactoryOverride;
            if (factory != null) {
                this.extractorFactory.setSubtitleParserFactory(factory);
            }
            this.extractorFactory.experimentalParseSubtitlesDuringExtraction(this.parseSubtitlesDuringExtraction);
            this.extractorFactory.experimentalSetCodecsToParseWithinGopSampleDependencies(this.codecsToParseWithinGopSampleDependencies);
            HlsExtractorFactory hlsExtractorFactory = this.extractorFactory;
            HlsPlaylistParserFactory filteringHlsPlaylistParserFactory = this.playlistParserFactory;
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            if (!list.isEmpty()) {
                filteringHlsPlaylistParserFactory = new FilteringHlsPlaylistParserFactory(filteringHlsPlaylistParserFactory, list);
            }
            HlsDataSourceFactory hlsDataSourceFactory = this.hlsDataSourceFactory;
            CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory = this.compositeSequenceableLoaderFactory;
            DrmSessionManager drmSessionManager = this.drmSessionManagerProvider.get(mediaItem);
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
            return new HlsMediaSource(mediaItem, hlsDataSourceFactory, hlsExtractorFactory, compositeSequenceableLoaderFactory, null, drmSessionManager, loadErrorHandlingPolicy, this.playlistTrackerFactory.createTracker(this.hlsDataSourceFactory, loadErrorHandlingPolicy, filteringHlsPlaylistParserFactory, null), this.elapsedRealTimeOffsetMs, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys, this.timestampAdjusterInitializationTimeoutMs);
        }
    }

    private HlsMediaSource(MediaItem mediaItem, HlsDataSourceFactory hlsDataSourceFactory, HlsExtractorFactory hlsExtractorFactory, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistTracker hlsPlaylistTracker, long j, boolean z, int i, boolean z2, long j2) {
        this.mediaItem = mediaItem;
        this.liveConfiguration = mediaItem.liveConfiguration;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.extractorFactory = hlsExtractorFactory;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playlistTracker = hlsPlaylistTracker;
        this.elapsedRealTimeOffsetMs = j;
        this.allowChunklessPreparation = z;
        this.metadataType = i;
        this.useSessionKeys = z2;
        this.timestampAdjusterInitializationTimeoutMs = j2;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public synchronized MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        MediaItem mediaItem2 = getMediaItem();
        MediaItem.LocalConfiguration localConfiguration = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem2.localConfiguration);
        MediaItem.LocalConfiguration localConfiguration2 = mediaItem.localConfiguration;
        return localConfiguration2 != null && localConfiguration2.uri.equals(localConfiguration.uri) && localConfiguration2.streamKeys.equals(localConfiguration.streamKeys) && Objects.equals(localConfiguration2.drmConfiguration, localConfiguration.drmConfiguration) && mediaItem2.liveConfiguration.equals(mediaItem.liveConfiguration);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public void prepareSourceInternal(TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.setPlayer((Looper) Assertions.checkNotNull(Looper.myLooper()), getPlayerId());
        this.drmSessionManager.prepare();
        this.playlistTracker.start(((MediaItem.LocalConfiguration) Assertions.checkNotNull(getMediaItem().localConfiguration)).uri, createEventDispatcher(null), this);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
        this.playlistTracker.maybeThrowPrimaryPlaylistRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        MediaSourceEventListener.EventDispatcher eventDispatcherCreateEventDispatcher = createEventDispatcher(mediaPeriodId);
        return new HlsMediaPeriod(this.extractorFactory, this.playlistTracker, this.dataSourceFactory, this.mediaTransferListener, null, this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadErrorHandlingPolicy, eventDispatcherCreateEventDispatcher, allocator, this.compositeSequenceableLoaderFactory, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys, getPlayerId(), this.timestampAdjusterInitializationTimeoutMs);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((HlsMediaPeriod) mediaPeriod).release();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.playlistTracker.stop();
        this.drmSessionManager.release();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener
    public void onPrimaryPlaylistRefreshed(HlsMediaPlaylist hlsMediaPlaylist) {
        HlsMediaSource hlsMediaSource;
        SinglePeriodTimeline singlePeriodTimelineCreateTimelineForOnDemand;
        long jUsToMs = hlsMediaPlaylist.hasProgramDateTime ? Util.usToMs(hlsMediaPlaylist.startTimeUs) : -9223372036854775807L;
        int i = hlsMediaPlaylist.playlistType;
        long j = (i == 2 || i == 1) ? jUsToMs : -9223372036854775807L;
        HlsManifest hlsManifest = new HlsManifest((HlsMultivariantPlaylist) Assertions.checkNotNull(this.playlistTracker.getMultivariantPlaylist()), hlsMediaPlaylist);
        if (this.playlistTracker.isLive()) {
            hlsMediaSource = this;
            singlePeriodTimelineCreateTimelineForOnDemand = hlsMediaSource.createTimelineForLive(hlsMediaPlaylist, j, jUsToMs, hlsManifest);
        } else {
            hlsMediaSource = this;
            singlePeriodTimelineCreateTimelineForOnDemand = hlsMediaSource.createTimelineForOnDemand(hlsMediaPlaylist, j, jUsToMs, hlsManifest);
        }
        hlsMediaSource.refreshSourceInfo(singlePeriodTimelineCreateTimelineForOnDemand);
    }

    private SinglePeriodTimeline createTimelineForLive(HlsMediaPlaylist hlsMediaPlaylist, long j, long j2, HlsManifest hlsManifest) {
        long targetLiveOffsetUs;
        long initialStartTimeUs = hlsMediaPlaylist.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        long j3 = hlsMediaPlaylist.hasEndTag ? initialStartTimeUs + hlsMediaPlaylist.durationUs : -9223372036854775807L;
        long liveEdgeOffsetUs = getLiveEdgeOffsetUs(hlsMediaPlaylist);
        long j4 = this.liveConfiguration.targetOffsetMs;
        if (j4 != -9223372036854775807L) {
            targetLiveOffsetUs = Util.msToUs(j4);
        } else {
            targetLiveOffsetUs = getTargetLiveOffsetUs(hlsMediaPlaylist, liveEdgeOffsetUs);
        }
        updateLiveConfiguration(hlsMediaPlaylist, Util.constrainValue(targetLiveOffsetUs, liveEdgeOffsetUs, hlsMediaPlaylist.durationUs + liveEdgeOffsetUs));
        return new SinglePeriodTimeline(j, j2, -9223372036854775807L, j3, hlsMediaPlaylist.durationUs, initialStartTimeUs, getLiveWindowDefaultStartPositionUs(hlsMediaPlaylist, liveEdgeOffsetUs), true, !hlsMediaPlaylist.hasEndTag, hlsMediaPlaylist.playlistType == 2 && hlsMediaPlaylist.hasPositiveStartOffset, hlsManifest, getMediaItem(), this.liveConfiguration);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private SinglePeriodTimeline createTimelineForOnDemand(HlsMediaPlaylist hlsMediaPlaylist, long j, long j2, HlsManifest hlsManifest) {
        long j3;
        if (hlsMediaPlaylist.startOffsetUs == -9223372036854775807L || hlsMediaPlaylist.segments.isEmpty()) {
            j3 = 0;
        } else if (!hlsMediaPlaylist.preciseStart) {
            long j4 = hlsMediaPlaylist.startOffsetUs;
            if (j4 == hlsMediaPlaylist.durationUs) {
                j3 = hlsMediaPlaylist.startOffsetUs;
            } else {
                j3 = findClosestPrecedingSegment(hlsMediaPlaylist.segments, j4).relativeStartTimeUs;
            }
        }
        long j5 = j3;
        long j6 = hlsMediaPlaylist.durationUs;
        return new SinglePeriodTimeline(j, j2, -9223372036854775807L, j6, j6, 0L, j5, true, false, true, hlsManifest, getMediaItem(), null);
    }

    private long getLiveEdgeOffsetUs(HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist.hasProgramDateTime) {
            return Util.msToUs(Util.getNowUnixTimeMs(this.elapsedRealTimeOffsetMs)) - hlsMediaPlaylist.getEndTimeUs();
        }
        return 0L;
    }

    private long getLiveWindowDefaultStartPositionUs(HlsMediaPlaylist hlsMediaPlaylist, long j) {
        long jMsToUs = hlsMediaPlaylist.startOffsetUs;
        if (jMsToUs == -9223372036854775807L) {
            jMsToUs = (hlsMediaPlaylist.durationUs + j) - Util.msToUs(this.liveConfiguration.targetOffsetMs);
        }
        if (hlsMediaPlaylist.preciseStart) {
            return jMsToUs;
        }
        HlsMediaPlaylist.Part partFindClosestPrecedingIndependentPart = findClosestPrecedingIndependentPart(hlsMediaPlaylist.trailingParts, jMsToUs);
        if (partFindClosestPrecedingIndependentPart != null) {
            return partFindClosestPrecedingIndependentPart.relativeStartTimeUs;
        }
        if (hlsMediaPlaylist.segments.isEmpty()) {
            return 0L;
        }
        HlsMediaPlaylist.Segment segmentFindClosestPrecedingSegment = findClosestPrecedingSegment(hlsMediaPlaylist.segments, jMsToUs);
        HlsMediaPlaylist.Part partFindClosestPrecedingIndependentPart2 = findClosestPrecedingIndependentPart(segmentFindClosestPrecedingSegment.parts, jMsToUs);
        if (partFindClosestPrecedingIndependentPart2 != null) {
            return partFindClosestPrecedingIndependentPart2.relativeStartTimeUs;
        }
        return segmentFindClosestPrecedingSegment.relativeStartTimeUs;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateLiveConfiguration(HlsMediaPlaylist hlsMediaPlaylist, long j) {
        boolean z;
        MediaItem.LiveConfiguration liveConfiguration = getMediaItem().liveConfiguration;
        if (liveConfiguration.minPlaybackSpeed == -3.4028235E38f && liveConfiguration.maxPlaybackSpeed == -3.4028235E38f) {
            HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
            if (serverControl.holdBackUs == -9223372036854775807L && serverControl.partHoldBackUs == -9223372036854775807L) {
                z = true;
            }
        } else {
            z = false;
        }
        this.liveConfiguration = new MediaItem.LiveConfiguration.Builder().setTargetOffsetMs(Util.usToMs(j)).setMinPlaybackSpeed(z ? 1.0f : this.liveConfiguration.minPlaybackSpeed).setMaxPlaybackSpeed(z ? 1.0f : this.liveConfiguration.maxPlaybackSpeed).build();
    }

    private static long getTargetLiveOffsetUs(HlsMediaPlaylist hlsMediaPlaylist, long j) {
        long j2;
        HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
        long j3 = hlsMediaPlaylist.startOffsetUs;
        if (j3 != -9223372036854775807L) {
            j2 = hlsMediaPlaylist.durationUs - j3;
        } else {
            long j4 = serverControl.partHoldBackUs;
            if (j4 == -9223372036854775807L || hlsMediaPlaylist.partTargetDurationUs == -9223372036854775807L) {
                long j5 = serverControl.holdBackUs;
                j2 = j5 != -9223372036854775807L ? j5 : hlsMediaPlaylist.targetDurationUs * 3;
            } else {
                j2 = j4;
            }
        }
        return j2 + j;
    }

    private static HlsMediaPlaylist.Part findClosestPrecedingIndependentPart(List<HlsMediaPlaylist.Part> list, long j) {
        HlsMediaPlaylist.Part part = null;
        for (int i = 0; i < list.size(); i++) {
            HlsMediaPlaylist.Part part2 = list.get(i);
            long j2 = part2.relativeStartTimeUs;
            if (j2 > j || !part2.isIndependent) {
                if (j2 > j) {
                    break;
                }
            } else {
                part = part2;
            }
        }
        return part;
    }

    private static HlsMediaPlaylist.Segment findClosestPrecedingSegment(List<HlsMediaPlaylist.Segment> list, long j) {
        return list.get(Util.binarySearchFloor((List<? extends Comparable<? super Long>>) list, Long.valueOf(j), true, true));
    }
}
