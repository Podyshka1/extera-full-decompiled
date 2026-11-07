package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.Player;
import androidx.media3.common.VideoListener;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DefaultLivePlaybackSpeedControl;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.extractor.DefaultExtractorsFactory;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.util.concurrent.Executor;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public interface ExoPlayer extends Player {

    public interface AudioOffloadListener {
        default void onOffloadedPlayback(boolean z) {
        }

        void onSleepingForOffloadChanged(boolean z);
    }

    void addAnalyticsListener(AnalyticsListener analyticsListener);

    void addVideoListener(VideoListener videoListener);

    Renderer getRenderer(int i);

    Format getVideoFormat();

    void release();

    void removeAnalyticsListener(AnalyticsListener analyticsListener);

    void removeVideoListener(VideoListener videoListener);

    void setMediaSource(MediaSource mediaSource);

    void setMediaSource(MediaSource mediaSource, boolean z);

    void setSeekParameters(SeekParameters seekParameters);

    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    void setWorkerQueue(Executor executor);

    public static class PreloadConfiguration {
        public static final PreloadConfiguration DEFAULT = new PreloadConfiguration(-9223372036854775807L);
        public final long targetPreloadDurationUs;

        public PreloadConfiguration(long j) {
            this.targetPreloadDurationUs = j;
        }
    }

    public static final class Builder {
        public static final int DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS;
        public static boolean experimentalEnableStuckPlayingDetection;
        Function<Clock, AnalyticsCollector> analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        AudioOutputProvider audioOutputProvider;
        boolean avoidLoadingWhileEnded;
        Supplier<BandwidthMeter> bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        boolean deviceVolumeControlEnabled;
        boolean dynamicSchedulingEnabled;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        Supplier<LoadControl> loadControlSupplier;
        Looper looper;
        long maxSeekToPreviousPositionMs;
        Supplier<MediaSource.Factory> mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;
        PlaybackLooperProvider playbackLooperProvider;
        String playerName;
        int priority;
        long releaseTimeoutMs;
        Supplier<RenderersFactory> renderersFactorySupplier;
        ScrubbingModeParameters scrubbingModeParameters;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        int stuckBufferingDetectionTimeoutMs;
        int stuckPlayingDetectionTimeoutMs;
        int stuckPlayingNotEndingTimeoutMs;
        int stuckSuppressedDetectionTimeoutMs;
        SuitableOutputChecker suitableOutputChecker;
        boolean suppressPlaybackOnUnsuitableOutput;
        Supplier<TrackSelector> trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;
        boolean wakeModeSet;

        /* JADX INFO: renamed from: $r8$lambda$1S4JTYE6v7ASEpYX-zQPTquCFzM, reason: not valid java name */
        public static /* synthetic */ RenderersFactory m1892$r8$lambda$1S4JTYE6v7ASEpYXzQPTquCFzM(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ LoadControl $r8$lambda$HekyiBTTjarrX819XM5j8sFRos8(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: renamed from: $r8$lambda$YdD1-a4RqBfR_B5CWrkD4jlJiGk, reason: not valid java name */
        public static /* synthetic */ TrackSelector m1894$r8$lambda$YdD1a4RqBfR_B5CWrkD4jlJiGk(TrackSelector trackSelector) {
            return trackSelector;
        }

        static {
            DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS = Util.isRunningOnEmulator() ? 30000 : 10000;
            experimentalEnableStuckPlayingDetection = true;
        }

        public Builder(final Context context) {
            this(context, new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.m1893$r8$lambda$6RcAC_BqYMBagvVbrZlEBfEca8(context);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$EUAzPSpf_tY17bpaOOdpyKtURb0(context);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$6RcAC-_BqYMBagvVbrZlEBfEca8, reason: not valid java name */
        public static /* synthetic */ RenderersFactory m1893$r8$lambda$6RcAC_BqYMBagvVbrZlEBfEca8(Context context) {
            return new DefaultRenderersFactory(context);
        }

        public static /* synthetic */ MediaSource.Factory $r8$lambda$EUAzPSpf_tY17bpaOOdpyKtURb0(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        private Builder(final Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2) {
            this(context, supplier, supplier2, new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$xUvto8h1vMLVIth0_snkoRcg_Fw(context);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda6
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return new DefaultLoadControl();
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda7
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            }, new Function() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda8
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return new DefaultAnalyticsCollector((Clock) obj);
                }
            });
        }

        public static /* synthetic */ TrackSelector $r8$lambda$xUvto8h1vMLVIth0_snkoRcg_Fw(Context context) {
            return new DefaultTrackSelector(context);
        }

        private Builder(Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2, Supplier<TrackSelector> supplier3, Supplier<LoadControl> supplier4, Supplier<BandwidthMeter> supplier5, Function<Clock, AnalyticsCollector> function) {
            this.context = (Context) Preconditions.checkNotNull(context);
            this.renderersFactorySupplier = supplier;
            this.mediaSourceFactorySupplier = supplier2;
            this.trackSelectorSupplier = supplier3;
            this.loadControlSupplier = supplier4;
            this.bandwidthMeterSupplier = supplier5;
            this.analyticsCollectorFunction = function;
            this.looper = Util.getCurrentOrMainLooper();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.maxSeekToPreviousPositionMs = 3000L;
            this.scrubbingModeParameters = ScrubbingModeParameters.DEFAULT;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
            this.stuckBufferingDetectionTimeoutMs = 600000;
            boolean z = experimentalEnableStuckPlayingDetection;
            this.stuckPlayingDetectionTimeoutMs = z ? DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS : Integer.MAX_VALUE;
            this.stuckPlayingNotEndingTimeoutMs = z ? 60000 : Integer.MAX_VALUE;
            this.stuckSuppressedDetectionTimeoutMs = 600000;
            this.usePlatformDiagnostics = true;
            this.playerName = _UrlKt.FRAGMENT_ENCODE_SET;
            this.priority = -1000;
            this.suitableOutputChecker = new DefaultSuitableOutputChecker();
            this.avoidLoadingWhileEnded = true;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(renderersFactory);
            this.renderersFactorySupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.m1892$r8$lambda$1S4JTYE6v7ASEpYXzQPTquCFzM(renderersFactory);
                }
            };
            return this;
        }

        public Builder setTrackSelector(final TrackSelector trackSelector) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(trackSelector);
            this.trackSelectorSupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.m1894$r8$lambda$YdD1a4RqBfR_B5CWrkD4jlJiGk(trackSelector);
                }
            };
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(loadControl);
            this.loadControlSupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$HekyiBTTjarrX819XM5j8sFRos8(loadControl);
                }
            };
            return this;
        }

        public Builder setLooper(Looper looper) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(looper);
            this.looper = looper;
            return this;
        }

        public ExoPlayer build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }
    }
}
