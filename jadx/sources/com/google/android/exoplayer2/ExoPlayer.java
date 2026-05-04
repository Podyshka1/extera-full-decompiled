package com.google.android.exoplayer2;

import android.content.Context;
import android.opengl.EGLContext;
import android.os.Looper;
import com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.DefaultAnalyticsCollector;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoListener;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import org.telegram.messenger.DispatchQueue;

/* JADX INFO: loaded from: classes4.dex */
public interface ExoPlayer extends Player {
    void addAnalyticsListener(AnalyticsListener analyticsListener);

    void addVideoListener(VideoListener videoListener);

    Renderer getRenderer(int i);

    Format getVideoFormat();

    void setAudioAttributes(AudioAttributes audioAttributes, boolean z);

    void setMediaSource(MediaSource mediaSource);

    void setMediaSource(MediaSource mediaSource, boolean z);

    void setSeekParameters(SeekParameters seekParameters);

    void setWorkerQueue(DispatchQueue dispatchQueue);

    public interface AudioOffloadListener {
        void onExperimentalOffloadedPlayback(boolean z);

        void onExperimentalSleepingForOffloadChanged(boolean z);

        /* JADX INFO: renamed from: com.google.android.exoplayer2.ExoPlayer$AudioOffloadListener$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onExperimentalOffloadedPlayback(AudioOffloadListener audioOffloadListener, boolean z) {
            }
        }
    }

    public static final class Builder {
        Function analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        Supplier bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        public EGLContext eglContext;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        Supplier loadControlSupplier;
        Looper looper;
        Supplier mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;
        Looper playbackLooper;
        long releaseTimeoutMs;
        Supplier renderersFactorySupplier;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        Supplier trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;

        public static /* synthetic */ TrackSelector $r8$lambda$C4W3_CpBDGRsHmoIhfOUQmtXsl4(TrackSelector trackSelector) {
            return trackSelector;
        }

        /* JADX INFO: renamed from: $r8$lambda$GYdozbRODnlGDQgrVACU4rpd-6I, reason: not valid java name */
        public static /* synthetic */ RenderersFactory m2835$r8$lambda$GYdozbRODnlGDQgrVACU4rpd6I(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ LoadControl $r8$lambda$riCuehVJ3XIhWdU_TuhRzEblprE(LoadControl loadControl) {
            return loadControl;
        }

        public Builder(final Context context) {
            this(context, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.m2834$r8$lambda$4qhvUKIRrNDysIrv45HiMI7TtI(context);
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$Z9NUWa_6QXYrw0QqdfsKlmwIjME(context);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$4qhvUKIRrN-DysIrv45HiMI7TtI, reason: not valid java name */
        public static /* synthetic */ RenderersFactory m2834$r8$lambda$4qhvUKIRrNDysIrv45HiMI7TtI(Context context) {
            return new DefaultRenderersFactory(context);
        }

        public static /* synthetic */ MediaSource.Factory $r8$lambda$Z9NUWa_6QXYrw0QqdfsKlmwIjME(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        private Builder(final Context context, Supplier supplier, Supplier supplier2) {
            this(context, supplier, supplier2, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$jNFyOnL11Ub_hDLTi6yxZquXOOw(context);
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda6
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return new DefaultLoadControl();
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda7
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            }, new Function() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda8
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return new DefaultAnalyticsCollector((Clock) obj);
                }
            });
        }

        public static /* synthetic */ TrackSelector $r8$lambda$jNFyOnL11Ub_hDLTi6yxZquXOOw(Context context) {
            return new DefaultTrackSelector(context);
        }

        private Builder(Context context, Supplier supplier, Supplier supplier2, Supplier supplier3, Supplier supplier4, Supplier supplier5, Function function) {
            this.context = (Context) Assertions.checkNotNull(context);
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
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
            this.usePlatformDiagnostics = true;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(renderersFactory);
            this.renderersFactorySupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.m2835$r8$lambda$GYdozbRODnlGDQgrVACU4rpd6I(renderersFactory);
                }
            };
            return this;
        }

        public Builder setTrackSelector(final TrackSelector trackSelector) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(trackSelector);
            this.trackSelectorSupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$C4W3_CpBDGRsHmoIhfOUQmtXsl4(trackSelector);
                }
            };
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(loadControl);
            this.loadControlSupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$riCuehVJ3XIhWdU_TuhRzEblprE(loadControl);
                }
            };
            return this;
        }

        public Builder setLooper(Looper looper) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(looper);
            this.looper = looper;
            return this;
        }

        public ExoPlayer build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }

        public SimpleExoPlayer buildSimpleExoPlayer() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new SimpleExoPlayer(this);
        }
    }
}
