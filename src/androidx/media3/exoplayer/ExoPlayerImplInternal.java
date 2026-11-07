package androidx.media3.exoplayer;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.AudioFocusManager;
import androidx.media3.exoplayer.DefaultMediaClock;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.MediaPeriodHolder;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.common.collect.ImmutableList;
import com.google.common.math.DoubleMath;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender, AudioFocusManager.PlayerControl, VideoFrameMetadataListener {
    private static final long BUFFERING_MAXIMUM_INTERVAL_MS = Util.usToMs(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    private final AnalyticsCollector analyticsCollector;
    private final HandlerWrapper applicationLooperHandler;
    private final AudioFocusManager audioFocusManager;
    private final long backBufferDurationUs;
    private final BandwidthMeter bandwidthMeter;
    private final Clock clock;
    private boolean deliverPendingMessageAtStartPositionRequired;
    private final boolean dynamicSchedulingEnabled;
    private final TrackSelectorResult emptyTrackSelectorResult;
    private int enabledRendererCount;
    private boolean foregroundMode;
    private final HandlerWrapper handler;
    private final boolean hasSecondaryRenderers;
    private boolean isPrewarmingDisabledUntilNextTransition;
    private boolean isRebuffering;
    private final LivePlaybackSpeedControl livePlaybackSpeedControl;
    private final LoadControl loadControl;
    private final DefaultMediaClock mediaClock;
    private final MediaSourceList mediaSourceList;
    private int nextPendingMessageIndexHint;
    private boolean offloadSchedulingEnabled;
    private boolean pauseAtEndOfWindow;
    private SeekPosition pendingInitialSeekPosition;
    private final ArrayList<PendingMessageInfo> pendingMessages;
    private boolean pendingPauseAtEndOfPeriod;
    private ExoPlaybackException pendingRecoverableRendererError;
    private final Timeline.Period period;
    private PlaybackInfo playbackInfo;
    private PlaybackInfoUpdate playbackInfoUpdate;
    private final PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private final Looper playbackLooper;
    private final PlaybackLooperProvider playbackLooperProvider;
    private final PlayerId playerId;
    private ExoPlayer.PreloadConfiguration preloadConfiguration;
    private final MediaPeriodQueue queue;
    private SeekPosition queuedSeekWhileScrubbing;
    private final long releaseTimeoutMs;
    private boolean releasedOnApplicationThread;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionElapsedRealtimeUs;
    private long rendererPositionUs;
    private final boolean[] rendererReportedReady;
    private final RendererHolder[] renderers;
    private int repeatMode;
    private boolean requestForRendererSleep;
    private final boolean retainBackBufferFromKeyframe;
    private boolean scrubbingModeEnabled;
    private SeekParameters scrubbingModeSeekParameters;
    private boolean seekIsPendingWhileScrubbing;
    private SeekParameters seekParameters;
    private long setForegroundModeTimeoutMs;
    private boolean shouldContinueLoading;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;
    private final Timeline.Window window;
    private long prewarmingMediaPeriodDiscontinuity = -9223372036854775807L;
    private float volume = 1.0f;
    private ScrubbingModeParameters scrubbingModeParameters = ScrubbingModeParameters.DEFAULT;
    private long playbackMaybeBecameStuckAtMs = -9223372036854775807L;
    private long lastRebufferRealtimeMs = -9223372036854775807L;
    private Timeline lastPreloadPoolInvalidationTimeline = Timeline.EMPTY;

    public interface PlaybackInfoUpdateListener {
        void onPlaybackInfoUpdate(PlaybackInfoUpdate playbackInfoUpdate);
    }

    private static int updatePlayWhenReadyChangeReason(int i, int i2) {
        if (i == -1) {
            return 2;
        }
        if (i2 == 2) {
            return 1;
        }
        return i2;
    }

    private static int updatePlaybackSuppressionReason(int i, int i2) {
        if (i == 0) {
            return 1;
        }
        if (i2 == 1) {
            return 0;
        }
        return i2;
    }

    public static final class PlaybackInfoUpdate {
        public int discontinuityReason;
        private boolean hasPendingChange;
        public int operationAcks;
        public PlaybackInfo playbackInfo;
        public boolean positionDiscontinuity;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo) {
            this.playbackInfo = playbackInfo;
        }

        public void incrementPendingOperationAcks(int i) {
            this.hasPendingChange |= i > 0;
            this.operationAcks += i;
        }

        public void setPlaybackInfo(PlaybackInfo playbackInfo) {
            this.hasPendingChange |= this.playbackInfo != playbackInfo;
            this.playbackInfo = playbackInfo;
        }

        public void setPositionDiscontinuity(int i) {
            if (this.positionDiscontinuity && this.discontinuityReason != 5) {
                Assertions.checkArgument(i == 5);
                return;
            }
            this.hasPendingChange = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = i;
        }
    }

    public ExoPlayerImplInternal(Context context, Renderer[] rendererArr, Renderer[] rendererArr2, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, int i, boolean z, AnalyticsCollector analyticsCollector, SeekParameters seekParameters, LivePlaybackSpeedControl livePlaybackSpeedControl, long j, boolean z2, boolean z3, Looper looper, Clock clock, PlaybackInfoUpdateListener playbackInfoUpdateListener, PlayerId playerId, PlaybackLooperProvider playbackLooperProvider, ExoPlayer.PreloadConfiguration preloadConfiguration, final VideoFrameMetadataListener videoFrameMetadataListener) {
        this.playbackInfoUpdateListener = playbackInfoUpdateListener;
        this.trackSelector = trackSelector;
        this.emptyTrackSelectorResult = trackSelectorResult;
        this.loadControl = loadControl;
        this.bandwidthMeter = bandwidthMeter;
        this.repeatMode = i;
        this.shuffleModeEnabled = z;
        this.seekParameters = seekParameters;
        this.livePlaybackSpeedControl = livePlaybackSpeedControl;
        this.releaseTimeoutMs = j;
        this.setForegroundModeTimeoutMs = j;
        this.pauseAtEndOfWindow = z2;
        this.dynamicSchedulingEnabled = z3;
        this.clock = clock;
        this.playerId = playerId;
        this.preloadConfiguration = preloadConfiguration;
        this.analyticsCollector = analyticsCollector;
        this.backBufferDurationUs = loadControl.getBackBufferDurationUs(playerId);
        this.retainBackBufferFromKeyframe = loadControl.retainBackBufferFromKeyframe(playerId);
        PlaybackInfo playbackInfoCreateDummy = PlaybackInfo.createDummy(trackSelectorResult);
        this.playbackInfo = playbackInfoCreateDummy;
        this.playbackInfoUpdate = new PlaybackInfoUpdate(playbackInfoCreateDummy);
        this.rendererCapabilities = new RendererCapabilities[rendererArr.length];
        this.rendererReportedReady = new boolean[rendererArr.length];
        RendererCapabilities.Listener rendererCapabilitiesListener = trackSelector.getRendererCapabilitiesListener();
        this.renderers = new RendererHolder[rendererArr.length];
        boolean z4 = false;
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            rendererArr[i2].init(i2, playerId, clock);
            this.rendererCapabilities[i2] = rendererArr[i2].getCapabilities();
            if (rendererCapabilitiesListener != null) {
                this.rendererCapabilities[i2].setListener(rendererCapabilitiesListener);
            }
            Renderer renderer = rendererArr2[i2];
            if (renderer != null) {
                renderer.init(i2, playerId, clock);
                z4 = true;
            }
            this.renderers[i2] = new RendererHolder(rendererArr[i2], rendererArr2[i2], i2);
        }
        this.hasSecondaryRenderers = z4;
        this.mediaClock = new DefaultMediaClock(this, clock);
        this.pendingMessages = new ArrayList<>();
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        trackSelector.init(this, bandwidthMeter);
        this.deliverPendingMessageAtStartPositionRequired = true;
        HandlerWrapper handlerWrapperCreateHandler = clock.createHandler(looper, null);
        this.applicationLooperHandler = handlerWrapperCreateHandler;
        this.queue = new MediaPeriodQueue(analyticsCollector, handlerWrapperCreateHandler, new MediaPeriodHolder.Factory() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda2
            @Override // androidx.media3.exoplayer.MediaPeriodHolder.Factory
            public final MediaPeriodHolder create(MediaPeriodInfo mediaPeriodInfo, long j2) {
                return this.f$0.createMediaPeriodHolder(mediaPeriodInfo, j2);
            }
        }, preloadConfiguration);
        this.mediaSourceList = new MediaSourceList(this, analyticsCollector, handlerWrapperCreateHandler, playerId);
        PlaybackLooperProvider playbackLooperProvider2 = playbackLooperProvider == null ? new PlaybackLooperProvider() : playbackLooperProvider;
        this.playbackLooperProvider = playbackLooperProvider2;
        Looper looperObtainLooper = playbackLooperProvider2.obtainLooper();
        this.playbackLooper = looperObtainLooper;
        HandlerWrapper handlerWrapperCreateHandler2 = clock.createHandler(looperObtainLooper, this);
        this.handler = handlerWrapperCreateHandler2;
        this.audioFocusManager = new AudioFocusManager(context, looperObtainLooper, this);
        handlerWrapperCreateHandler2.obtainMessage(35, new VideoFrameMetadataListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda3
            @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
            public final void onVideoFrameAboutToBeRendered(long j2, long j3, Format format, MediaFormat mediaFormat) {
                ExoPlayerImplInternal.$r8$lambda$PHPl0lerVHRNmb61QccGegOGlG0(this.f$0, videoFrameMetadataListener, j2, j3, format, mediaFormat);
            }
        }).sendToTarget();
    }

    public static /* synthetic */ void $r8$lambda$PHPl0lerVHRNmb61QccGegOGlG0(ExoPlayerImplInternal exoPlayerImplInternal, VideoFrameMetadataListener videoFrameMetadataListener, long j, long j2, Format format, MediaFormat mediaFormat) {
        exoPlayerImplInternal.getClass();
        videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
        exoPlayerImplInternal.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaPeriodHolder createMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo, long j) {
        return new MediaPeriodHolder(this.rendererCapabilities, j, this.trackSelector, this.loadControl.getAllocator(), this.mediaSourceList, mediaPeriodInfo, this.emptyTrackSelectorResult, this.preloadConfiguration.targetPreloadDurationUs);
    }

    public void experimentalSetForegroundModeTimeoutMs(long j) {
        this.setForegroundModeTimeoutMs = j;
    }

    public void prepare() {
        this.handler.obtainMessage(29).sendToTarget();
    }

    public void setPlayWhenReady(boolean z, int i, int i2) {
        this.handler.obtainMessage(1, z ? 1 : 0, i | (i2 << 4)).sendToTarget();
    }

    public void setRepeatMode(int i) {
        this.handler.obtainMessage(11, i, 0).sendToTarget();
    }

    public void setShuffleModeEnabled(boolean z) {
        this.handler.obtainMessage(12, z ? 1 : 0, 0).sendToTarget();
    }

    public void seekTo(Timeline timeline, int i, long j) {
        this.handler.obtainMessage(3, new SeekPosition(timeline, i, j)).sendToTarget();
    }

    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(4, playbackParameters).sendToTarget();
    }

    public void setSeekParameters(SeekParameters seekParameters) {
        this.handler.obtainMessage(5, seekParameters).sendToTarget();
    }

    public void setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters) {
        this.handler.obtainMessage(38, scrubbingModeParameters).sendToTarget();
    }

    public void stop() {
        this.handler.obtainMessage(6).sendToTarget();
    }

    public void setMediaSources(List<MediaSourceList.MediaSourceHolder> list, int i, long j, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(17, new MediaSourceListUpdateMessage(list, shuffleOrder, i, j)).sendToTarget();
    }

    public void addMediaSources(int i, List<MediaSourceList.MediaSourceHolder> list, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(18, i, 0, new MediaSourceListUpdateMessage(list, shuffleOrder, -1, -9223372036854775807L)).sendToTarget();
    }

    public void removeMediaSources(int i, int i2, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(20, i, i2, shuffleOrder).sendToTarget();
    }

    public void moveMediaSources(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(19, new MoveMediaItemsMessage(i, i2, i3, shuffleOrder)).sendToTarget();
    }

    public void updateMediaSourcesWithMediaItems(int i, int i2, List<MediaItem> list) {
        this.handler.obtainMessage(27, i, i2, list).sendToTarget();
    }

    public void setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
        this.handler.obtainMessage(31, z ? 1 : 0, 0, audioAttributes).sendToTarget();
    }

    public void setVolume(float f) {
        this.handler.obtainMessage(32, Float.valueOf(f)).sendToTarget();
    }

    private void handleAudioFocusPlayerCommandInternal(int i) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        updatePlayWhenReadyWithAudioFocus(playbackInfo.playWhenReady, i, playbackInfo.playbackSuppressionReason, playbackInfo.playWhenReadyChangeReason);
    }

    private void handleAudioFocusVolumeMultiplierChange() {
        setVolumeInternal(this.volume);
    }

    private void setVideoFrameMetadataListenerInternal(VideoFrameMetadataListener videoFrameMetadataListener) {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setVideoFrameMetadataListener(videoFrameMetadataListener);
        }
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Sender
    public void sendMessage(PlayerMessage playerMessage) {
        if (this.releasedOnApplicationThread || !this.playbackLooper.getThread().isAlive()) {
            Log.m163w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            playerMessage.markAsProcessed(false);
        } else {
            this.handler.obtainMessage(14, playerMessage).sendToTarget();
        }
    }

    public boolean setVideoOutput(Object obj, long j) {
        if (!this.releasedOnApplicationThread && this.playbackLooper.getThread().isAlive()) {
            ConditionVariable conditionVariable = new ConditionVariable(this.clock);
            this.handler.obtainMessage(30, new Pair(obj, conditionVariable)).sendToTarget();
            if (j != -9223372036854775807L) {
                return conditionVariable.blockUninterruptible(j);
            }
        }
        return true;
    }

    public boolean release() {
        if (this.releasedOnApplicationThread || !this.playbackLooper.getThread().isAlive()) {
            return true;
        }
        this.releasedOnApplicationThread = true;
        ConditionVariable conditionVariable = new ConditionVariable(this.clock);
        this.handler.obtainMessage(7, conditionVariable).sendToTarget();
        return conditionVariable.blockUninterruptible(this.releaseTimeoutMs);
    }

    public Looper getPlaybackLooper() {
        return this.playbackLooper;
    }

    @Override // androidx.media3.exoplayer.MediaSourceList.MediaSourceListInfoRefreshListener
    public void onPlaylistUpdateRequested() {
        this.handler.removeMessages(2);
        this.handler.sendEmptyMessage(22);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(8, mediaPeriod).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(9, mediaPeriod).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(10);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onRendererCapabilitiesChanged(Renderer renderer) {
        this.handler.sendEmptyMessage(26);
    }

    @Override // androidx.media3.exoplayer.DefaultMediaClock.PlaybackParametersListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(16, playbackParameters).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.AudioFocusManager.PlayerControl
    public void setVolumeMultiplier(float f) {
        this.handler.sendEmptyMessage(34);
    }

    @Override // androidx.media3.exoplayer.AudioFocusManager.PlayerControl
    public void executePlayerCommand(int i) {
        this.handler.obtainMessage(33, i, 0).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
    public void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat) {
        if (this.seekIsPendingWhileScrubbing) {
            this.handler.obtainMessage(37).sendToTarget();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        int i;
        MediaPeriodQueue mediaPeriodQueue;
        MediaSource.MediaPeriodId mediaPeriodId;
        MediaPeriodHolder readingPeriod;
        try {
            switch (message.what) {
                case 1:
                    boolean z = message.arg1 != 0;
                    int i2 = message.arg2;
                    setPlayWhenReadyInternal(z, i2 >> 4, true, i2 & 15);
                    break;
                case 2:
                    doSomeWork();
                    break;
                case 3:
                    seekToInternal((SeekPosition) message.obj, true);
                    break;
                case 4:
                    setPlaybackParametersInternal((PlaybackParameters) message.obj);
                    break;
                case 5:
                    setSeekParametersInternal((SeekParameters) message.obj);
                    break;
                case 6:
                    stopInternal(false, true);
                    break;
                case 7:
                    releaseInternal((ConditionVariable) message.obj);
                    return true;
                case 8:
                    handlePeriodPrepared((MediaPeriod) message.obj);
                    break;
                case 9:
                    handleContinueLoadingRequested((MediaPeriod) message.obj);
                    break;
                case 10:
                    reselectTracksInternal();
                    break;
                case 11:
                    setRepeatModeInternal(message.arg1);
                    break;
                case 12:
                    setShuffleModeEnabledInternal(message.arg1 != 0);
                    break;
                case 13:
                    setForegroundModeInternal(message.arg1 != 0, (ConditionVariable) message.obj);
                    break;
                case 14:
                    sendMessageInternal((PlayerMessage) message.obj);
                    break;
                case 15:
                    sendMessageToTargetThread((PlayerMessage) message.obj);
                    break;
                case 16:
                    handlePlaybackParameters((PlaybackParameters) message.obj, false);
                    break;
                case 17:
                    setMediaItemsInternal((MediaSourceListUpdateMessage) message.obj);
                    break;
                case 18:
                    addMediaItemsInternal((MediaSourceListUpdateMessage) message.obj, message.arg1);
                    break;
                case 19:
                    moveMediaItemsInternal((MoveMediaItemsMessage) message.obj);
                    break;
                case 20:
                    removeMediaItemsInternal(message.arg1, message.arg2, (ShuffleOrder) message.obj);
                    break;
                case 21:
                    setShuffleOrderInternal((ShuffleOrder) message.obj);
                    break;
                case 22:
                    mediaSourceListUpdateRequestedInternal();
                    break;
                case 23:
                    setPauseAtEndOfWindowInternal(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    attemptRendererErrorRecovery();
                    break;
                case 26:
                    reselectTracksInternalAndSeek();
                    break;
                case 27:
                    updateMediaSourcesWithMediaItemsInternal(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    setPreloadConfigurationInternal((ExoPlayer.PreloadConfiguration) message.obj);
                    break;
                case 29:
                    prepareInternal();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    setVideoOutputInternal(pair.first, (ConditionVariable) pair.second);
                    break;
                case 31:
                    setAudioAttributesInternal((AudioAttributes) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    setVolumeInternal(((Float) message.obj).floatValue());
                    break;
                case 33:
                    handleAudioFocusPlayerCommandInternal(message.arg1);
                    break;
                case 34:
                    handleAudioFocusVolumeMultiplierChange();
                    break;
                case 35:
                    setVideoFrameMetadataListenerInternal((VideoFrameMetadataListener) message.obj);
                    break;
                case 36:
                    setScrubbingModeEnabledInternal(((Boolean) message.obj).booleanValue());
                    break;
                case 37:
                    this.seekIsPendingWhileScrubbing = false;
                    SeekPosition seekPosition = this.queuedSeekWhileScrubbing;
                    if (seekPosition != null) {
                        seekToInternal(seekPosition, false);
                        this.queuedSeekWhileScrubbing = null;
                    }
                    break;
                case 38:
                    setScrubbingModeParametersInternal((ScrubbingModeParameters) message.obj);
                    break;
            }
        } catch (ParserException e) {
            int i3 = e.dataType;
            if (i3 == 1) {
                i = e.contentIsMalformed ? 3001 : 3003;
            } else if (i3 == 4) {
                i = e.contentIsMalformed ? 3002 : 3004;
            }
            handleIoException(e, i);
        } catch (DataSourceException e2) {
            handleIoException(e2, e2.reason);
        } catch (ExoPlaybackException e3) {
            e = e3;
            if (e.type == 1 && (readingPeriod = this.queue.getReadingPeriod()) != null && e.mediaPeriodId == null) {
                e = e.copyWithMediaPeriodId(readingPeriod.info.id);
            }
            if (e.type == 1 && (mediaPeriodId = e.mediaPeriodId) != null && isRendererPrewarmingMediaPeriod(e.rendererIndex, mediaPeriodId)) {
                this.isPrewarmingDisabledUntilNextTransition = true;
                disableAndResetPrewarmingRenderers();
                MediaPeriodHolder prewarmingPeriod = this.queue.getPrewarmingPeriod();
                MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
                if (this.queue.getPlayingPeriod() != prewarmingPeriod) {
                    while (playingPeriod != null && playingPeriod.getNext() != prewarmingPeriod) {
                        playingPeriod = playingPeriod.getNext();
                    }
                }
                this.queue.removeAfter(playingPeriod);
                if (this.playbackInfo.playbackState != 4) {
                    maybeContinueLoading();
                    this.handler.sendEmptyMessage(2);
                }
            } else {
                ExoPlaybackException exoPlaybackException = this.pendingRecoverableRendererError;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.pendingRecoverableRendererError;
                }
                if (e.type == 1 && this.queue.getPlayingPeriod() != this.queue.getReadingPeriod()) {
                    while (true) {
                        MediaPeriodHolder playingPeriod2 = this.queue.getPlayingPeriod();
                        MediaPeriodHolder readingPeriod2 = this.queue.getReadingPeriod();
                        mediaPeriodQueue = this.queue;
                        if (playingPeriod2 == readingPeriod2) {
                            break;
                        }
                        mediaPeriodQueue.advancePlayingPeriod();
                    }
                    MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(mediaPeriodQueue.getPlayingPeriod());
                    maybeNotifyPlaybackInfoChanged();
                    MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodInfo.id;
                    long j = mediaPeriodInfo.startPositionUs;
                    this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId2, j, mediaPeriodInfo.requestedContentPositionUs, j, true, 0);
                }
                if (e.isRecoverable && (this.pendingRecoverableRendererError == null || (i = e.errorCode) == 5004 || i == 5003)) {
                    Log.m164w("ExoPlayerImplInternal", "Recoverable renderer error", e);
                    if (this.pendingRecoverableRendererError == null) {
                        this.pendingRecoverableRendererError = e;
                    }
                    HandlerWrapper handlerWrapper = this.handler;
                    handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(25, e));
                } else {
                    Log.m161e("ExoPlayerImplInternal", "Playback error", e);
                    stopInternal(true, false);
                    this.playbackInfo = this.playbackInfo.copyWithPlaybackError(e);
                }
            }
        } catch (DrmSession.DrmSessionException e4) {
            handleIoException(e4, e4.errorCode);
        } catch (BehindLiveWindowException e5) {
            handleIoException(e5, 1002);
        } catch (IOException e6) {
            handleIoException(e6, CastStatusCodes.AUTHENTICATION_FAILED);
        } catch (RuntimeException e7) {
            ExoPlaybackException exoPlaybackExceptionCreateForUnexpected = ExoPlaybackException.createForUnexpected(e7, ((e7 instanceof IllegalStateException) || (e7 instanceof IllegalArgumentException)) ? 1004 : 1000);
            Log.m161e("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForUnexpected);
            stopInternal(true, false);
            this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackExceptionCreateForUnexpected);
        }
        maybeNotifyPlaybackInfoChanged();
        return true;
    }

    private void handleIoException(IOException iOException, int i) {
        ExoPlaybackException exoPlaybackExceptionCreateForSource = ExoPlaybackException.createForSource(iOException, i);
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(playingPeriod.info.id);
        }
        Log.m161e("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForSource);
        stopInternal(false, false);
        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackExceptionCreateForSource);
    }

    private void setState(int i) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != i) {
            if (i != 2) {
                this.playbackMaybeBecameStuckAtMs = -9223372036854775807L;
            }
            if (i != 3 && playbackInfo.sleepingForOffload) {
                this.playbackInfo = playbackInfo.copyWithSleepingForOffload(false);
            }
            this.playbackInfo = this.playbackInfo.copyWithPlaybackState(i);
        }
    }

    private void maybeNotifyPlaybackInfoChanged() {
        this.playbackInfoUpdate.setPlaybackInfo(this.playbackInfo);
        if (this.playbackInfoUpdate.hasPendingChange) {
            this.playbackInfoUpdateListener.onPlaybackInfoUpdate(this.playbackInfoUpdate);
            this.playbackInfoUpdate = new PlaybackInfoUpdate(this.playbackInfo);
        }
    }

    private void prepareInternal() {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        resetInternal(false, false, false, true);
        this.loadControl.onPrepared(this.playerId);
        setState(this.playbackInfo.timeline.isEmpty() ? 4 : 2);
        updatePlayWhenReadyWithAudioFocus();
        this.mediaSourceList.prepare(this.bandwidthMeter.getTransferListener());
        this.handler.sendEmptyMessage(2);
    }

    private void setMediaItemsInternal(MediaSourceListUpdateMessage mediaSourceListUpdateMessage) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        if (mediaSourceListUpdateMessage.windowIndex != -1) {
            this.pendingInitialSeekPosition = new SeekPosition(new PlaylistTimeline(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), mediaSourceListUpdateMessage.windowIndex, mediaSourceListUpdateMessage.positionUs);
        }
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setMediaSources(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private void addMediaItemsInternal(MediaSourceListUpdateMessage mediaSourceListUpdateMessage, int i) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        MediaSourceList mediaSourceList = this.mediaSourceList;
        if (i == -1) {
            i = mediaSourceList.getSize();
        }
        handleMediaSourceListInfoRefreshed(mediaSourceList.addMediaSources(i, mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private void moveMediaItemsInternal(MoveMediaItemsMessage moveMediaItemsMessage) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.moveMediaSourceRange(moveMediaItemsMessage.fromIndex, moveMediaItemsMessage.toIndex, moveMediaItemsMessage.newFromIndex, moveMediaItemsMessage.shuffleOrder), false);
    }

    private void removeMediaItemsInternal(int i, int i2, ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.removeMediaSourceRange(i, i2, shuffleOrder), false);
    }

    private void mediaSourceListUpdateRequestedInternal() throws Throwable {
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.createTimeline(), true);
    }

    private void setShuffleOrderInternal(ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setShuffleOrder(shuffleOrder), false);
    }

    private void updateMediaSourcesWithMediaItemsInternal(int i, int i2, List<MediaItem> list) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.updateMediaSourcesWithMediaItems(i, i2, list), false);
    }

    private void setAudioAttributesInternal(AudioAttributes audioAttributes, boolean z) {
        this.trackSelector.setAudioAttributes(audioAttributes);
        AudioFocusManager audioFocusManager = this.audioFocusManager;
        if (!z) {
            audioAttributes = null;
        }
        audioFocusManager.setAudioAttributes(audioAttributes);
        updatePlayWhenReadyWithAudioFocus();
    }

    private void setVolumeInternal(float f) {
        this.volume = f;
        float volumeMultiplier = f * this.audioFocusManager.getVolumeMultiplier();
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setVolume(volumeMultiplier);
        }
    }

    private void notifyTrackSelectionPlayWhenReadyChanged(boolean z) {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlayWhenReadyChanged(z);
                }
            }
        }
    }

    private void setPlayWhenReadyInternal(boolean z, int i, boolean z2, int i2) {
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        updatePlayWhenReadyWithAudioFocus(z, i, i2);
    }

    private void updatePlayWhenReadyWithAudioFocus() {
        PlaybackInfo playbackInfo = this.playbackInfo;
        updatePlayWhenReadyWithAudioFocus(playbackInfo.playWhenReady, playbackInfo.playbackSuppressionReason, playbackInfo.playWhenReadyChangeReason);
    }

    private void updatePlayWhenReadyWithAudioFocus(boolean z, int i, int i2) {
        updatePlayWhenReadyWithAudioFocus(z, this.audioFocusManager.updateAudioFocus(z, this.playbackInfo.playbackState), i, i2);
    }

    private void updatePlayWhenReadyWithAudioFocus(boolean z, int i, int i2, int i3) {
        boolean z2 = z && i != -1;
        int iUpdatePlayWhenReadyChangeReason = updatePlayWhenReadyChangeReason(i, i3);
        int iUpdatePlaybackSuppressionReason = updatePlaybackSuppressionReason(i, i2);
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playWhenReady == z2 && playbackInfo.playbackSuppressionReason == iUpdatePlaybackSuppressionReason && playbackInfo.playWhenReadyChangeReason == iUpdatePlayWhenReadyChangeReason) {
            return;
        }
        this.playbackInfo = playbackInfo.copyWithPlayWhenReady(z2, iUpdatePlayWhenReadyChangeReason, iUpdatePlaybackSuppressionReason);
        updateRebufferingState(false, false);
        notifyTrackSelectionPlayWhenReadyChanged(z2);
        if (!shouldPlayWhenReady()) {
            stopRenderers();
            updatePlaybackPositions();
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            if (playbackInfo2.sleepingForOffload) {
                this.playbackInfo = playbackInfo2.copyWithSleepingForOffload(false);
            }
            this.queue.reevaluateBuffer(this.rendererPositionUs);
            return;
        }
        int i4 = this.playbackInfo.playbackState;
        if (i4 == 3) {
            this.mediaClock.start();
            startRenderers();
            this.handler.sendEmptyMessage(2);
        } else if (i4 == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void setPauseAtEndOfWindowInternal(boolean z) throws ExoPlaybackException {
        this.pauseAtEndOfWindow = z;
        resetPendingPauseAtEndOfPeriod();
        if (!this.pendingPauseAtEndOfPeriod || this.queue.getReadingPeriod() == this.queue.getPlayingPeriod()) {
            return;
        }
        seekToCurrentPosition(true);
        handleLoadingMediaPeriodChanged(false);
    }

    private void setOffloadSchedulingEnabled(boolean z) {
        if (z == this.offloadSchedulingEnabled) {
            return;
        }
        this.offloadSchedulingEnabled = z;
        if (z || !this.playbackInfo.sleepingForOffload) {
            return;
        }
        this.handler.sendEmptyMessage(2);
    }

    private void setRepeatModeInternal(int i) throws ExoPlaybackException {
        this.repeatMode = i;
        int iUpdateRepeatMode = this.queue.updateRepeatMode(this.playbackInfo.timeline, i);
        if ((iUpdateRepeatMode & 1) != 0) {
            seekToCurrentPosition(true);
        } else if ((iUpdateRepeatMode & 2) != 0) {
            disableAndResetPrewarmingRenderers();
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setShuffleModeEnabledInternal(boolean z) throws ExoPlaybackException {
        this.shuffleModeEnabled = z;
        int iUpdateShuffleModeEnabled = this.queue.updateShuffleModeEnabled(this.playbackInfo.timeline, z);
        if ((iUpdateShuffleModeEnabled & 1) != 0) {
            seekToCurrentPosition(true);
        } else if ((iUpdateShuffleModeEnabled & 2) != 0) {
            disableAndResetPrewarmingRenderers();
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setPreloadConfigurationInternal(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.preloadConfiguration = preloadConfiguration;
        this.queue.updatePreloadConfiguration(this.playbackInfo.timeline, preloadConfiguration);
    }

    private void seekToCurrentPosition(boolean z) throws ExoPlaybackException {
        MediaSource.MediaPeriodId mediaPeriodId = this.queue.getPlayingPeriod().info.id;
        long jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, this.playbackInfo.positionUs, true, false);
        if (jSeekToPeriodPosition != this.playbackInfo.positionUs) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, jSeekToPeriodPosition, playbackInfo.requestedContentPositionUs, playbackInfo.discontinuityStartPositionUs, z, 5);
        }
    }

    private void startRenderers() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null) {
            return;
        }
        TrackSelectorResult trackSelectorResult = playingPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].start();
            }
        }
    }

    private void stopRenderers() {
        this.mediaClock.stop();
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.stop();
        }
    }

    private void attemptRendererErrorRecovery() throws ExoPlaybackException {
        reselectTracksInternalAndSeek();
    }

    private void updatePlaybackPositions() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null) {
            return;
        }
        long discontinuity = playingPeriod.prepared ? playingPeriod.mediaPeriod.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != -9223372036854775807L) {
            if (!playingPeriod.isFullyBuffered()) {
                this.queue.removeAfter(playingPeriod);
                handleLoadingMediaPeriodChanged(false);
                maybeContinueLoading();
            }
            resetRendererPosition(discontinuity);
            if (discontinuity != this.playbackInfo.positionUs) {
                PlaybackInfo playbackInfo = this.playbackInfo;
                long j = discontinuity;
                this.playbackInfo = handlePositionDiscontinuity(playbackInfo.periodId, j, playbackInfo.requestedContentPositionUs, j, true, 5);
            }
        } else {
            long jSyncAndGetPositionUs = this.mediaClock.syncAndGetPositionUs(playingPeriod != this.queue.getReadingPeriod());
            this.rendererPositionUs = jSyncAndGetPositionUs;
            long periodTime = playingPeriod.toPeriodTime(jSyncAndGetPositionUs);
            maybeTriggerPendingMessages(this.playbackInfo.positionUs, periodTime);
            if (this.mediaClock.hasSkippedSilenceSinceLastCall()) {
                boolean z = !this.playbackInfoUpdate.positionDiscontinuity;
                PlaybackInfo playbackInfo2 = this.playbackInfo;
                this.playbackInfo = handlePositionDiscontinuity(playbackInfo2.periodId, periodTime, playbackInfo2.requestedContentPositionUs, periodTime, z, 6);
            } else {
                this.playbackInfo.updatePositionUs(periodTime);
            }
        }
        this.playbackInfo.bufferedPositionUs = this.queue.getLoadingPeriod().getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        if (playbackInfo3.playWhenReady && playbackInfo3.playbackState == 3 && shouldUseLivePlaybackSpeedControl(playbackInfo3.timeline, playbackInfo3.periodId) && this.playbackInfo.playbackParameters.speed == 1.0f) {
            float adjustedPlaybackSpeed = this.livePlaybackSpeedControl.getAdjustedPlaybackSpeed(getCurrentLiveOffsetUs(), this.playbackInfo.totalBufferedDurationUs);
            if (this.mediaClock.getPlaybackParameters().speed != adjustedPlaybackSpeed) {
                setMediaClockPlaybackParameters(this.playbackInfo.playbackParameters.withSpeed(adjustedPlaybackSpeed));
                handlePlaybackParameters(this.playbackInfo.playbackParameters, this.mediaClock.getPlaybackParameters().speed, false, false);
            }
        }
    }

    private void setMediaClockPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.removeMessages(16);
        this.mediaClock.setPlaybackParameters(playbackParameters);
    }

    private void notifyTrackSelectionRebuffer() {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onRebuffer();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void doSomeWork() throws ExoPlaybackException {
        boolean z;
        boolean z2;
        long j;
        boolean z3;
        boolean z4;
        PlaybackInfo playbackInfo;
        int i;
        long jUptimeMillis = this.clock.uptimeMillis();
        this.handler.removeMessages(2);
        updatePeriods();
        int i2 = this.playbackInfo.playbackState;
        if (i2 == 1 || i2 == 4) {
            return;
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null) {
            scheduleNextWork(jUptimeMillis);
            return;
        }
        TraceUtil.beginSection("doSomeWork");
        updatePlaybackPositions();
        if (playingPeriod.prepared) {
            this.rendererPositionElapsedRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
            playingPeriod.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            z = true;
            z2 = true;
            int i3 = 0;
            while (true) {
                RendererHolder[] rendererHolderArr = this.renderers;
                if (i3 >= rendererHolderArr.length) {
                    break;
                }
                RendererHolder rendererHolder = rendererHolderArr[i3];
                if (rendererHolder.getEnabledRendererCount() == 0) {
                    maybeTriggerOnRendererReadyChanged(i3, false);
                } else {
                    rendererHolder.render(this.rendererPositionUs, this.rendererPositionElapsedRealtimeUs);
                    z = z && rendererHolder.isEnded();
                    boolean zAllowsPlayback = rendererHolder.allowsPlayback(playingPeriod);
                    maybeTriggerOnRendererReadyChanged(i3, zAllowsPlayback);
                    z2 = z2 && zAllowsPlayback;
                    if (!zAllowsPlayback) {
                        maybeThrowRendererStreamError(i3);
                    }
                }
                i3++;
            }
        } else {
            playingPeriod.mediaPeriod.maybeThrowPrepareError();
            z = true;
            z2 = true;
        }
        long j2 = playingPeriod.info.durationUs;
        if (z && playingPeriod.prepared) {
            if (j2 != -9223372036854775807L) {
                j = -9223372036854775807L;
                if (j2 <= this.playbackInfo.positionUs) {
                }
                if (z3 && this.pendingPauseAtEndOfPeriod) {
                    this.pendingPauseAtEndOfPeriod = false;
                    setPlayWhenReadyInternal(false, this.playbackInfo.playbackSuppressionReason, false, 5);
                }
                if (z3 && playingPeriod.info.isFinal) {
                    setState(4);
                    stopRenderers();
                } else if (this.playbackInfo.playbackState != 2 && shouldTransitionToReadyState(z2)) {
                    setState(3);
                    this.pendingRecoverableRendererError = null;
                    if (shouldPlayWhenReady()) {
                        updateRebufferingState(false, false);
                        this.mediaClock.start();
                        startRenderers();
                    }
                } else if (this.playbackInfo.playbackState == 3 && (this.enabledRendererCount != 0 ? !z2 : !isTimelineReady())) {
                    updateRebufferingState(shouldPlayWhenReady(), false);
                    setState(2);
                    if (this.isRebuffering) {
                        notifyTrackSelectionRebuffer();
                        this.livePlaybackSpeedControl.notifyRebuffer();
                    }
                    stopRenderers();
                }
                if (this.playbackInfo.playbackState == 2) {
                    int i4 = 0;
                    while (true) {
                        RendererHolder[] rendererHolderArr2 = this.renderers;
                        if (i4 >= rendererHolderArr2.length) {
                            break;
                        }
                        if (rendererHolderArr2[i4].isReadingFromPeriod(playingPeriod)) {
                            maybeThrowRendererStreamError(i4);
                        }
                        i4++;
                    }
                    PlaybackInfo playbackInfo2 = this.playbackInfo;
                    if (playbackInfo2.isLoading || playbackInfo2.totalBufferedDurationUs >= 500000 || !isLoadingPossible(this.queue.getLoadingPeriod()) || !shouldPlayWhenReady()) {
                        this.playbackMaybeBecameStuckAtMs = j;
                    } else {
                        long j3 = this.playbackMaybeBecameStuckAtMs;
                        Clock clock = this.clock;
                        if (j3 == j) {
                            this.playbackMaybeBecameStuckAtMs = clock.elapsedRealtime();
                        } else if (clock.elapsedRealtime() - this.playbackMaybeBecameStuckAtMs >= 4000) {
                            Segment$$ExternalSyntheticBUOutline1.m925m("Playback stuck buffering and not loading");
                            return;
                        }
                    }
                }
                boolean z5 = shouldPlayWhenReady() && this.playbackInfo.playbackState == 3;
                z4 = this.offloadSchedulingEnabled && this.requestForRendererSleep && z5;
                playbackInfo = this.playbackInfo;
                if (playbackInfo.sleepingForOffload != z4) {
                    this.playbackInfo = playbackInfo.copyWithSleepingForOffload(z4);
                }
                this.requestForRendererSleep = false;
                if (!z4 && (i = this.playbackInfo.playbackState) != 4 && (z5 || i == 2 || (i == 3 && this.enabledRendererCount != 0))) {
                    scheduleNextWork(jUptimeMillis);
                }
                TraceUtil.endSection();
            }
            j = -9223372036854775807L;
            z3 = true;
            if (z3) {
                this.pendingPauseAtEndOfPeriod = false;
                setPlayWhenReadyInternal(false, this.playbackInfo.playbackSuppressionReason, false, 5);
            }
            if (z3) {
                if (this.playbackInfo.playbackState != 2) {
                    if (this.playbackInfo.playbackState == 3) {
                        updateRebufferingState(shouldPlayWhenReady(), false);
                        setState(2);
                        if (this.isRebuffering) {
                        }
                        stopRenderers();
                    }
                }
            }
            if (this.playbackInfo.playbackState == 2) {
            }
            if (shouldPlayWhenReady()) {
            }
            if (this.offloadSchedulingEnabled) {
            }
            playbackInfo = this.playbackInfo;
            if (playbackInfo.sleepingForOffload != z4) {
            }
            this.requestForRendererSleep = false;
            if (!z4) {
                scheduleNextWork(jUptimeMillis);
            }
            TraceUtil.endSection();
        }
        j = -9223372036854775807L;
        z3 = false;
        if (z3) {
        }
        if (z3) {
        }
        if (this.playbackInfo.playbackState == 2) {
        }
        if (shouldPlayWhenReady()) {
        }
        if (this.offloadSchedulingEnabled) {
        }
        playbackInfo = this.playbackInfo;
        if (playbackInfo.sleepingForOffload != z4) {
        }
        this.requestForRendererSleep = false;
        if (!z4) {
        }
        TraceUtil.endSection();
    }

    private void maybeTriggerOnRendererReadyChanged(final int i, final boolean z) {
        boolean[] zArr = this.rendererReportedReady;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.applicationLooperHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ExoPlayerImplInternal exoPlayerImplInternal = this.f$0;
                    int i2 = i;
                    exoPlayerImplInternal.analyticsCollector.onRendererReadyChanged(i2, exoPlayerImplInternal.renderers[i2].getTrackType(), z);
                }
            });
        }
    }

    private long getCurrentLiveOffsetUs() {
        PlaybackInfo playbackInfo = this.playbackInfo;
        return getLiveOffsetUs(playbackInfo.timeline, playbackInfo.periodId.periodUid, playbackInfo.positionUs);
    }

    private long getLiveOffsetUs(Timeline timeline, Object obj, long j) {
        timeline.getWindow(timeline.getPeriodByUid(obj, this.period).windowIndex, this.window);
        Timeline.Window window = this.window;
        if (window.windowStartTimeMs != -9223372036854775807L && window.isLive()) {
            Timeline.Window window2 = this.window;
            if (window2.isDynamic) {
                return Util.msToUs(window2.getCurrentUnixTimeMs() - this.window.windowStartTimeMs) - (j + this.period.getPositionInWindowUs());
            }
        }
        return -9223372036854775807L;
    }

    private boolean shouldUseLivePlaybackSpeedControl(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (!mediaPeriodId.isAd() && !timeline.isEmpty()) {
            timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
            if (this.window.isLive()) {
                Timeline.Window window = this.window;
                if (window.isDynamic && window.windowStartTimeMs != -9223372036854775807L) {
                    return true;
                }
            }
        }
        return false;
    }

    private void scheduleNextWork(long j) {
        long staticSchedulingWakeUpIntervalMs;
        if (isDynamicSchedulingEnabled()) {
            staticSchedulingWakeUpIntervalMs = getDynamicSchedulingWakeUpIntervalMs();
        } else {
            staticSchedulingWakeUpIntervalMs = getStaticSchedulingWakeUpIntervalMs();
        }
        this.handler.sendEmptyMessageAtTime(2, j + staticSchedulingWakeUpIntervalMs);
    }

    private long getDynamicSchedulingWakeUpIntervalMs() {
        long jMin = this.playbackInfo.playbackState == 3 ? 1000L : BUFFERING_MAXIMUM_INTERVAL_MS;
        for (RendererHolder rendererHolder : this.renderers) {
            jMin = Math.min(jMin, Util.usToMs(rendererHolder.getMinDurationToProgressUs(this.rendererPositionUs, this.rendererPositionElapsedRealtimeUs)));
        }
        if (!this.playbackInfo.isPlaying()) {
            return jMin;
        }
        MediaPeriodHolder next = this.queue.getPlayingPeriod() != null ? this.queue.getPlayingPeriod().getNext() : null;
        return (next == null || ((float) this.rendererPositionUs) + (((float) Util.msToUs(jMin)) * this.playbackInfo.playbackParameters.speed) < ((float) next.getStartPositionRendererTime())) ? jMin : Math.min(jMin, BUFFERING_MAXIMUM_INTERVAL_MS);
    }

    private long getStaticSchedulingWakeUpIntervalMs() {
        if (this.playbackInfo.playbackState != 3 || shouldPlayWhenReady()) {
            return BUFFERING_MAXIMUM_INTERVAL_MS;
        }
        return 1000L;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00aa A[Catch: all -> 0x00ad, TRY_LEAVE, TryCatch #3 {all -> 0x00ad, blocks: (B:26:0x00a0, B:28:0x00aa, B:35:0x00b7, B:37:0x00bb, B:38:0x00be, B:40:0x00c5, B:42:0x00cd, B:44:0x00d5, B:48:0x00dd, B:50:0x00ed, B:52:0x00fd, B:58:0x010a), top: B:97:0x00a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void seekToInternal(SeekPosition seekPosition, boolean z) throws Throwable {
        long jLongValue;
        MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
        long j;
        boolean z2;
        long j2;
        MediaSource.MediaPeriodId mediaPeriodId;
        long j3;
        long adjustedSeekPositionUs;
        long jSeekToPeriodPosition;
        PlaybackInfo playbackInfo;
        MediaSource.MediaPeriodId mediaPeriodId2;
        Timeline timeline;
        long j4;
        MediaSource.MediaPeriodId mediaPeriodId3;
        long j5;
        PlaybackInfo playbackInfo2;
        int i;
        int i2;
        long j6;
        ExoPlayerImplInternal exoPlayerImplInternal = this;
        exoPlayerImplInternal.playbackInfoUpdate.incrementPendingOperationAcks(z ? 1 : 0);
        if (exoPlayerImplInternal.seekIsPendingWhileScrubbing) {
            exoPlayerImplInternal.queuedSeekWhileScrubbing = seekPosition;
            return;
        }
        Pair<Object, Long> pairResolveSeekPositionUs = resolveSeekPositionUs(exoPlayerImplInternal.playbackInfo.timeline, seekPosition, true, exoPlayerImplInternal.repeatMode, exoPlayerImplInternal.shuffleModeEnabled, exoPlayerImplInternal.window, exoPlayerImplInternal.period);
        try {
            if (pairResolveSeekPositionUs == null) {
                Pair<MediaSource.MediaPeriodId, Long> placeholderFirstMediaPeriodPositionUs = exoPlayerImplInternal.getPlaceholderFirstMediaPeriodPositionUs(exoPlayerImplInternal.playbackInfo.timeline);
                mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = (MediaSource.MediaPeriodId) placeholderFirstMediaPeriodPositionUs.first;
                jLongValue = ((Long) placeholderFirstMediaPeriodPositionUs.second).longValue();
                z2 = !exoPlayerImplInternal.playbackInfo.timeline.isEmpty();
                j2 = -9223372036854775807L;
            } else {
                Object obj = pairResolveSeekPositionUs.first;
                jLongValue = ((Long) pairResolveSeekPositionUs.second).longValue();
                long j7 = seekPosition.windowPositionUs == -9223372036854775807L ? -9223372036854775807L : jLongValue;
                mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = exoPlayerImplInternal.queue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(exoPlayerImplInternal.playbackInfo.timeline, obj, jLongValue);
                if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd()) {
                    exoPlayerImplInternal.playbackInfo.timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.periodUid, exoPlayerImplInternal.period);
                    jLongValue = exoPlayerImplInternal.period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adGroupIndex) == mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adIndexInAdGroup ? exoPlayerImplInternal.period.getAdResumePositionUs() : 0L;
                    z2 = true;
                    j2 = j7;
                } else {
                    j = 0;
                    z2 = seekPosition.windowPositionUs == -9223372036854775807L;
                    j2 = j7;
                    if (!exoPlayerImplInternal.playbackInfo.timeline.isEmpty()) {
                        exoPlayerImplInternal.pendingInitialSeekPosition = seekPosition;
                    } else {
                        PlaybackInfo playbackInfo3 = exoPlayerImplInternal.playbackInfo;
                        if (pairResolveSeekPositionUs == null) {
                            if (playbackInfo3.playbackState != 1) {
                                exoPlayerImplInternal.setState(4);
                            }
                            exoPlayerImplInternal.resetInternal(false, true, false, true);
                        } else {
                            try {
                                try {
                                    try {
                                        try {
                                            if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.equals(playbackInfo3.periodId)) {
                                                MediaPeriodHolder playingPeriod = exoPlayerImplInternal.queue.getPlayingPeriod();
                                                adjustedSeekPositionUs = (playingPeriod == null || !playingPeriod.prepared || jLongValue == j) ? jLongValue : playingPeriod.mediaPeriod.getAdjustedSeekPositionUs(jLongValue, exoPlayerImplInternal.getSeekParameters(exoPlayerImplInternal.window.durationUs));
                                                if (Util.usToMs(adjustedSeekPositionUs) != Util.usToMs(exoPlayerImplInternal.playbackInfo.positionUs) || ((i = (playbackInfo2 = exoPlayerImplInternal.playbackInfo).playbackState) != 2 && i != 3)) {
                                                    mediaPeriodId = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
                                                }
                                                j5 = playbackInfo2.positionUs;
                                                mediaPeriodId3 = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
                                                i2 = 2;
                                                j6 = j5;
                                                exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId3, j5, j2, j6, z2, i2);
                                                return;
                                            }
                                            mediaPeriodId = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
                                            adjustedSeekPositionUs = jLongValue;
                                            exoPlayerImplInternal.updatePlaybackSpeedSettingsForNewPeriod(timeline, mediaPeriodId2, timeline, playbackInfo.periodId, j4, true);
                                            mediaPeriodId3 = mediaPeriodId2;
                                            j2 = j4;
                                            j5 = jSeekToPeriodPosition;
                                            i2 = 2;
                                            j6 = j5;
                                            exoPlayerImplInternal = this;
                                            exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId3, j5, j2, j6, z2, i2);
                                            return;
                                        } catch (Throwable th) {
                                            th = th;
                                            mediaPeriodId = mediaPeriodId2;
                                            j2 = j4;
                                            j3 = jSeekToPeriodPosition;
                                            exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId, j3, j2, j3, z2, 2);
                                            throw th;
                                        }
                                        timeline = playbackInfo.timeline;
                                        j4 = j2;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        mediaPeriodId = mediaPeriodId2;
                                    }
                                    playbackInfo = exoPlayerImplInternal.playbackInfo;
                                    mediaPeriodId2 = mediaPeriodId;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                                exoPlayerImplInternal.seekIsPendingWhileScrubbing = exoPlayerImplInternal.scrubbingModeEnabled;
                                jSeekToPeriodPosition = exoPlayerImplInternal.seekToPeriodPosition(mediaPeriodId, adjustedSeekPositionUs, exoPlayerImplInternal.playbackInfo.playbackState == 4);
                                z2 |= jLongValue != jSeekToPeriodPosition;
                            } catch (Throwable th4) {
                                th = th4;
                                j3 = jLongValue;
                                exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId, j3, j2, j3, z2, 2);
                                throw th;
                            }
                        }
                    }
                    mediaPeriodId3 = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
                    j5 = jLongValue;
                    i2 = 2;
                    j6 = j5;
                    exoPlayerImplInternal = this;
                    exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId3, j5, j2, j6, z2, i2);
                    return;
                }
            }
            if (!exoPlayerImplInternal.playbackInfo.timeline.isEmpty()) {
            }
            mediaPeriodId3 = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
            j5 = jLongValue;
            i2 = 2;
            j6 = j5;
            exoPlayerImplInternal = this;
            exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId3, j5, j2, j6, z2, i2);
            return;
        } catch (Throwable th5) {
            th = th5;
            mediaPeriodId = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
        }
        j = 0;
    }

    private SeekParameters getSeekParameters(long j) {
        ScrubbingModeParameters scrubbingModeParameters;
        Double d;
        if (!this.scrubbingModeEnabled || j == -9223372036854775807L || (d = (scrubbingModeParameters = this.scrubbingModeParameters).fractionalSeekToleranceBefore) == null || scrubbingModeParameters.fractionalSeekToleranceAfter == null) {
            return this.seekParameters;
        }
        double d2 = j;
        double dDoubleValue = d.doubleValue() * d2;
        RoundingMode roundingMode = RoundingMode.FLOOR;
        long jRoundToLong = DoubleMath.roundToLong(dDoubleValue, roundingMode);
        long jRoundToLong2 = DoubleMath.roundToLong(this.scrubbingModeParameters.fractionalSeekToleranceAfter.doubleValue() * d2, roundingMode);
        SeekParameters seekParameters = this.scrubbingModeSeekParameters;
        if (seekParameters == null || seekParameters.toleranceBeforeUs != jRoundToLong || seekParameters.toleranceAfterUs != jRoundToLong2) {
            this.scrubbingModeSeekParameters = new SeekParameters(jRoundToLong, jRoundToLong2);
        }
        return this.scrubbingModeSeekParameters;
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z) {
        return seekToPeriodPosition(mediaPeriodId, j, this.queue.getPlayingPeriod() != this.queue.getReadingPeriod(), z);
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z, boolean z2) throws ExoPlaybackException {
        MediaPeriodQueue mediaPeriodQueue;
        stopRenderers();
        updateRebufferingState(false, true);
        if (z2 || this.playbackInfo.playbackState == 3) {
            setState(2);
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        MediaPeriodHolder next = playingPeriod;
        while (next != null && !mediaPeriodId.equals(next.info.id)) {
            next = next.getNext();
        }
        if (z || playingPeriod != next || (next != null && next.toRendererTime(j) < 0)) {
            disableRenderers();
            if (next != null) {
                while (true) {
                    MediaPeriodHolder playingPeriod2 = this.queue.getPlayingPeriod();
                    mediaPeriodQueue = this.queue;
                    if (playingPeriod2 == next) {
                        break;
                    }
                    mediaPeriodQueue.advancePlayingPeriod();
                }
                mediaPeriodQueue.removeAfter(next);
                next.setRendererOffset(1000000000000L);
                enableRenderers();
                next.allRenderersInCorrectState = true;
            }
        }
        disableAndResetPrewarmingRenderers();
        MediaPeriodQueue mediaPeriodQueue2 = this.queue;
        if (next != null) {
            mediaPeriodQueue2.removeAfter(next);
            if (!next.prepared) {
                next.info = next.info.copyWithStartPositionUs(j);
            } else if (next.hasEnabledTracks) {
                j = next.mediaPeriod.seekToUs(j);
                next.mediaPeriod.discardBuffer(j - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            }
            resetRendererPosition(j);
            maybeContinueLoading();
        } else {
            mediaPeriodQueue2.clear();
            resetRendererPosition(j);
        }
        handleLoadingMediaPeriodChanged(false);
        this.handler.sendEmptyMessage(2);
        return j;
    }

    private void resetRendererPosition(long j) {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long rendererTime = playingPeriod == null ? j + 1000000000000L : playingPeriod.toRendererTime(j);
        this.rendererPositionUs = rendererTime;
        this.mediaClock.resetPosition(rendererTime);
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.resetPosition(playingPeriod, this.rendererPositionUs);
        }
        notifyTrackSelectionDiscontinuity();
    }

    private void setPlaybackParametersInternal(PlaybackParameters playbackParameters) {
        setMediaClockPlaybackParameters(playbackParameters);
        handlePlaybackParameters(this.mediaClock.getPlaybackParameters(), true);
    }

    private void setSeekParametersInternal(SeekParameters seekParameters) {
        this.seekParameters = seekParameters;
    }

    private void setScrubbingModeEnabledInternal(boolean z) throws Throwable {
        if (!z) {
            this.seekIsPendingWhileScrubbing = false;
            this.handler.removeMessages(37);
            SeekPosition seekPosition = this.queuedSeekWhileScrubbing;
            if (seekPosition != null) {
                seekToInternal(seekPosition, false);
                this.queuedSeekWhileScrubbing = null;
            }
        }
        this.scrubbingModeEnabled = z;
        applyScrubbingModeParameters();
    }

    private void setScrubbingModeParametersInternal(ScrubbingModeParameters scrubbingModeParameters) {
        this.scrubbingModeParameters = scrubbingModeParameters;
        applyScrubbingModeParameters();
    }

    private void applyScrubbingModeParameters() {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setScrubbingMode(this.scrubbingModeEnabled ? this.scrubbingModeParameters : null);
        }
    }

    private void setForegroundModeInternal(boolean z, ConditionVariable conditionVariable) {
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            if (!z) {
                for (RendererHolder rendererHolder : this.renderers) {
                    rendererHolder.reset();
                }
            }
        }
        if (conditionVariable != null) {
            conditionVariable.open();
        }
    }

    private void setVideoOutputInternal(Object obj, ConditionVariable conditionVariable) {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setVideoOutput(obj);
        }
        int i = this.playbackInfo.playbackState;
        if (i == 3 || i == 2) {
            this.handler.sendEmptyMessage(2);
        }
        if (conditionVariable != null) {
            conditionVariable.open();
        }
    }

    private void stopInternal(boolean z, boolean z2) {
        resetInternal(z || !this.foregroundMode, false, true, false);
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        this.loadControl.onStopped(this.playerId);
        this.audioFocusManager.updateAudioFocus(this.playbackInfo.playWhenReady, 1);
        setState(1);
    }

    private void releaseInternal(ConditionVariable conditionVariable) {
        try {
            resetInternal(true, false, true, false);
            releaseRenderers();
            this.loadControl.onReleased(this.playerId);
            this.audioFocusManager.release();
            this.trackSelector.release();
            setState(1);
        } finally {
            this.handler.removeCallbacksAndMessages(null);
            this.playbackLooperProvider.releaseLooper();
            conditionVariable.open();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0095 A[PHI: r2 r6 r8
  0x0095: PHI (r2v2 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId) = 
  (r2v1 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId)
  (r2v12 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId)
 binds: [B:25:0x006b, B:27:0x0090] A[DONT_GENERATE, DONT_INLINE]
  0x0095: PHI (r6v3 long) = (r6v2 long), (r6v10 long) binds: [B:25:0x006b, B:27:0x0090] A[DONT_GENERATE, DONT_INLINE]
  0x0095: PHI (r8v2 long) = (r8v1 long), (r8v7 long) binds: [B:25:0x006b, B:27:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00dc A[PHI: r0
  0x00dc: PHI (r0v11 androidx.media3.common.Timeline) = 
  (r0v10 androidx.media3.common.Timeline)
  (r0v10 androidx.media3.common.Timeline)
  (r0v21 androidx.media3.common.Timeline)
  (r0v21 androidx.media3.common.Timeline)
 binds: [B:31:0x00a2, B:33:0x00a6, B:35:0x00b7, B:37:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void resetInternal(boolean z, boolean z2, boolean z3, boolean z4) {
        long j;
        boolean z5;
        Timeline timeline;
        MediaSource.MediaPeriodId mediaPeriodId;
        this.handler.removeMessages(2);
        this.seekIsPendingWhileScrubbing = false;
        this.queuedSeekWhileScrubbing = null;
        this.pendingRecoverableRendererError = null;
        updateRebufferingState(false, true);
        this.mediaClock.stop();
        this.rendererPositionUs = 1000000000000L;
        try {
            disableRenderers();
        } catch (ExoPlaybackException | RuntimeException e) {
            Log.m161e("ExoPlayerImplInternal", "Disable failed.", e);
        }
        if (z) {
            for (RendererHolder rendererHolder : this.renderers) {
                try {
                    rendererHolder.reset();
                } catch (RuntimeException e2) {
                    Log.m161e("ExoPlayerImplInternal", "Reset failed.", e2);
                }
            }
        }
        this.enabledRendererCount = 0;
        PlaybackInfo playbackInfo = this.playbackInfo;
        MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
        long jLongValue = playbackInfo.positionUs;
        if (this.playbackInfo.periodId.isAd() || isUsingPlaceholderPeriod(this.playbackInfo, this.period)) {
            j = this.playbackInfo.requestedContentPositionUs;
        } else {
            j = this.playbackInfo.positionUs;
        }
        if (z2) {
            this.pendingInitialSeekPosition = null;
            Pair<MediaSource.MediaPeriodId, Long> placeholderFirstMediaPeriodPositionUs = getPlaceholderFirstMediaPeriodPositionUs(this.playbackInfo.timeline);
            mediaPeriodId2 = (MediaSource.MediaPeriodId) placeholderFirstMediaPeriodPositionUs.first;
            jLongValue = ((Long) placeholderFirstMediaPeriodPositionUs.second).longValue();
            j = -9223372036854775807L;
            z5 = mediaPeriodId2.equals(this.playbackInfo.periodId) ? false : true;
        }
        long j2 = jLongValue;
        long j3 = j;
        this.queue.clear();
        this.shouldContinueLoading = false;
        Timeline timelineCopyWithPlaceholderTimeline = this.playbackInfo.timeline;
        if (z3 && (timelineCopyWithPlaceholderTimeline instanceof PlaylistTimeline)) {
            timelineCopyWithPlaceholderTimeline = ((PlaylistTimeline) timelineCopyWithPlaceholderTimeline).copyWithPlaceholderTimeline(this.mediaSourceList.getShuffleOrder());
            if (mediaPeriodId2.adGroupIndex != -1) {
                timelineCopyWithPlaceholderTimeline.getPeriodByUid(mediaPeriodId2.periodUid, this.period);
                if (timelineCopyWithPlaceholderTimeline.getWindow(this.period.windowIndex, this.window).isLive()) {
                    timeline = timelineCopyWithPlaceholderTimeline;
                    mediaPeriodId = new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber);
                }
            }
        } else {
            timeline = timelineCopyWithPlaceholderTimeline;
            mediaPeriodId = mediaPeriodId2;
        }
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        int i = playbackInfo2.playbackState;
        ExoPlaybackException exoPlaybackException = z4 ? null : playbackInfo2.playbackError;
        TrackGroupArray trackGroupArray = z5 ? TrackGroupArray.EMPTY : playbackInfo2.trackGroups;
        TrackSelectorResult trackSelectorResult = z5 ? this.emptyTrackSelectorResult : playbackInfo2.trackSelectorResult;
        List listOf = z5 ? ImmutableList.of() : playbackInfo2.staticMetadata;
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        this.playbackInfo = new PlaybackInfo(timeline, mediaPeriodId, j3, j2, i, exoPlaybackException, false, trackGroupArray, trackSelectorResult, listOf, mediaPeriodId, playbackInfo3.playWhenReady, playbackInfo3.playWhenReadyChangeReason, playbackInfo3.playbackSuppressionReason, playbackInfo3.playbackParameters, j2, 0L, j2, 0L, false);
        if (z3) {
            this.queue.releasePreloadPool();
            this.mediaSourceList.release();
        }
    }

    private Pair<MediaSource.MediaPeriodId, Long> getPlaceholderFirstMediaPeriodPositionUs(Timeline timeline) {
        if (timeline.isEmpty()) {
            return Pair.create(PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L);
        }
        Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.window, this.period, timeline.getFirstWindowIndex(this.shuffleModeEnabled), -9223372036854775807L);
        MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = this.queue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(timeline, periodPositionUs.first, 0L);
        long jLongValue = ((Long) periodPositionUs.second).longValue();
        if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd()) {
            timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.periodUid, this.period);
            jLongValue = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adIndexInAdGroup == this.period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adGroupIndex) ? this.period.getAdResumePositionUs() : 0L;
        }
        return Pair.create(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange, Long.valueOf(jLongValue));
    }

    private void sendMessageInternal(PlayerMessage playerMessage) {
        if (playerMessage.getPositionMs() == -9223372036854775807L) {
            sendMessageToTarget(playerMessage);
            return;
        }
        if (this.playbackInfo.timeline.isEmpty()) {
            this.pendingMessages.add(new PendingMessageInfo(playerMessage));
            return;
        }
        PendingMessageInfo pendingMessageInfo = new PendingMessageInfo(playerMessage);
        Timeline timeline = this.playbackInfo.timeline;
        if (resolvePendingMessagePosition(pendingMessageInfo, timeline, timeline, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
            this.pendingMessages.add(pendingMessageInfo);
            Collections.sort(this.pendingMessages);
        } else {
            playerMessage.markAsProcessed(false);
        }
    }

    private void sendMessageToTarget(PlayerMessage playerMessage) {
        if (playerMessage.getLooper() == this.playbackLooper) {
            deliverMessage(playerMessage);
            int i = this.playbackInfo.playbackState;
            if (i == 3 || i == 2) {
                this.handler.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.handler.obtainMessage(15, playerMessage).sendToTarget();
    }

    private void sendMessageToTargetThread(final PlayerMessage playerMessage) {
        Looper looper = playerMessage.getLooper();
        if (!looper.getThread().isAlive()) {
            Log.m163w("TAG", "Trying to send message on a dead thread.");
            playerMessage.markAsProcessed(false);
        } else {
            this.clock.createHandler(looper, null).post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ExoPlayerImplInternal.$r8$lambda$nZ_iCIp1I4p988uPUOGUgStg6Ek(this.f$0, playerMessage);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$nZ_iCIp1I4p988uPUOGUgStg6Ek(ExoPlayerImplInternal exoPlayerImplInternal, PlayerMessage playerMessage) {
        exoPlayerImplInternal.getClass();
        try {
            exoPlayerImplInternal.deliverMessage(playerMessage);
        } catch (ExoPlaybackException e) {
            Log.m161e("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            HttpUrl$$ExternalSyntheticBUOutline0.m899m(e);
        }
    }

    private void deliverMessage(PlayerMessage playerMessage) {
        if (playerMessage.isCanceled()) {
            return;
        }
        try {
            playerMessage.getTarget().handleMessage(playerMessage.getType(), playerMessage.getPayload());
        } finally {
            playerMessage.markAsProcessed(true);
        }
    }

    private void resolvePendingMessagePositions(Timeline timeline, Timeline timeline2) {
        if (timeline.isEmpty() && timeline2.isEmpty()) {
            return;
        }
        int size = this.pendingMessages.size() - 1;
        while (true) {
            ArrayList<PendingMessageInfo> arrayList = this.pendingMessages;
            if (size >= 0) {
                Timeline timeline3 = timeline;
                Timeline timeline4 = timeline2;
                if (!resolvePendingMessagePosition(arrayList.get(size), timeline3, timeline4, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
                    this.pendingMessages.get(size).message.markAsProcessed(false);
                    this.pendingMessages.remove(size);
                }
                size--;
                timeline = timeline3;
                timeline2 = timeline4;
            } else {
                Collections.sort(arrayList);
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void maybeTriggerPendingMessages(long j, long j2) {
        PendingMessageInfo pendingMessageInfo;
        if (this.pendingMessages.isEmpty() || this.playbackInfo.periodId.isAd()) {
            return;
        }
        if (this.deliverPendingMessageAtStartPositionRequired) {
            j--;
            this.deliverPendingMessageAtStartPositionRequired = false;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        int indexOfPeriod = playbackInfo.timeline.getIndexOfPeriod(playbackInfo.periodId.periodUid);
        int iMin = Math.min(this.nextPendingMessageIndexHint, this.pendingMessages.size());
        PendingMessageInfo pendingMessageInfo2 = iMin > 0 ? this.pendingMessages.get(iMin - 1) : null;
        while (pendingMessageInfo2 != null) {
            int i = pendingMessageInfo2.resolvedPeriodIndex;
            if (i <= indexOfPeriod && (i != indexOfPeriod || pendingMessageInfo2.resolvedPeriodTimeUs <= j)) {
                break;
            }
            int i2 = iMin - 1;
            pendingMessageInfo2 = i2 > 0 ? this.pendingMessages.get(iMin - 2) : null;
            iMin = i2;
        }
        if (iMin < this.pendingMessages.size()) {
            pendingMessageInfo = this.pendingMessages.get(iMin);
            while (pendingMessageInfo != null && pendingMessageInfo.resolvedPeriodUid != null) {
                int i3 = pendingMessageInfo.resolvedPeriodIndex;
                if (i3 >= indexOfPeriod && (i3 != indexOfPeriod || pendingMessageInfo.resolvedPeriodTimeUs > j)) {
                    break;
                }
                iMin++;
                if (iMin < this.pendingMessages.size()) {
                    pendingMessageInfo = this.pendingMessages.get(iMin);
                }
            }
            while (pendingMessageInfo != null && pendingMessageInfo.resolvedPeriodUid != null && pendingMessageInfo.resolvedPeriodIndex == indexOfPeriod) {
                long j3 = pendingMessageInfo.resolvedPeriodTimeUs;
                if (j3 <= j || j3 > j2) {
                    break;
                }
                try {
                    sendMessageToTarget(pendingMessageInfo.message);
                    if (pendingMessageInfo.message.getDeleteAfterDelivery() || pendingMessageInfo.message.isCanceled()) {
                        this.pendingMessages.remove(iMin);
                    } else {
                        iMin++;
                    }
                    pendingMessageInfo = iMin < this.pendingMessages.size() ? this.pendingMessages.get(iMin) : null;
                } catch (Throwable th) {
                    if (pendingMessageInfo.message.getDeleteAfterDelivery() || pendingMessageInfo.message.isCanceled()) {
                        this.pendingMessages.remove(iMin);
                    }
                    throw th;
                }
            }
            this.nextPendingMessageIndexHint = iMin;
            return;
        }
        pendingMessageInfo = null;
    }

    private void disableRenderers() {
        for (int i = 0; i < this.renderers.length; i++) {
            disableRenderer(i);
        }
        this.prewarmingMediaPeriodDiscontinuity = -9223372036854775807L;
    }

    private void disableRenderer(int i) {
        int enabledRendererCount = this.renderers[i].getEnabledRendererCount();
        this.renderers[i].disable(this.mediaClock);
        maybeTriggerOnRendererReadyChanged(i, false);
        this.enabledRendererCount -= enabledRendererCount;
    }

    private void disableAndResetPrewarmingRenderers() {
        if (this.hasSecondaryRenderers && areRenderersPrewarming()) {
            for (RendererHolder rendererHolder : this.renderers) {
                int enabledRendererCount = rendererHolder.getEnabledRendererCount();
                rendererHolder.disablePrewarming(this.mediaClock);
                this.enabledRendererCount -= enabledRendererCount - rendererHolder.getEnabledRendererCount();
            }
            this.prewarmingMediaPeriodDiscontinuity = -9223372036854775807L;
        }
    }

    private boolean isRendererPrewarmingMediaPeriod(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        if (this.queue.getPrewarmingPeriod() == null || !this.queue.getPrewarmingPeriod().info.id.equals(mediaPeriodId)) {
            return false;
        }
        return this.renderers[i].isPrewarmingPeriod(this.queue.getPrewarmingPeriod());
    }

    private void reselectTracksInternalAndSeek() throws ExoPlaybackException {
        reselectTracksInternal();
        seekToCurrentPosition(true);
    }

    private void reselectTracksInternal() throws ExoPlaybackException {
        float f = this.mediaClock.getPlaybackParameters().speed;
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        TrackSelectorResult trackSelectorResult = null;
        boolean z = true;
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null && playingPeriod.prepared; playingPeriod = playingPeriod.getNext()) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            TrackSelectorResult trackSelectorResultSelectTracks = playingPeriod.selectTracks(f, playbackInfo.timeline, playbackInfo.playWhenReady);
            if (playingPeriod == this.queue.getPlayingPeriod()) {
                trackSelectorResult = trackSelectorResultSelectTracks;
            }
            if (trackSelectorResultSelectTracks.isEquivalent(playingPeriod.getTrackSelectorResult())) {
                if (playingPeriod == readingPeriod) {
                    z = false;
                }
            } else {
                MediaPeriodQueue mediaPeriodQueue = this.queue;
                if (z) {
                    MediaPeriodHolder playingPeriod2 = mediaPeriodQueue.getPlayingPeriod();
                    boolean z2 = (this.queue.removeAfter(playingPeriod2) & 1) != 0;
                    boolean[] zArr = new boolean[this.renderers.length];
                    long jApplyTrackSelection = playingPeriod2.applyTrackSelection((TrackSelectorResult) Assertions.checkNotNull(trackSelectorResult), this.playbackInfo.positionUs, z2, zArr);
                    PlaybackInfo playbackInfo2 = this.playbackInfo;
                    boolean z3 = (playbackInfo2.playbackState == 4 || jApplyTrackSelection == playbackInfo2.positionUs) ? false : true;
                    PlaybackInfo playbackInfo3 = this.playbackInfo;
                    this.playbackInfo = handlePositionDiscontinuity(playbackInfo3.periodId, jApplyTrackSelection, playbackInfo3.requestedContentPositionUs, playbackInfo3.discontinuityStartPositionUs, z3, 5);
                    if (z3) {
                        resetRendererPosition(jApplyTrackSelection);
                    }
                    disableAndResetPrewarmingRenderers();
                    boolean[] zArr2 = new boolean[this.renderers.length];
                    int i = 0;
                    while (true) {
                        RendererHolder[] rendererHolderArr = this.renderers;
                        if (i >= rendererHolderArr.length) {
                            break;
                        }
                        int enabledRendererCount = rendererHolderArr[i].getEnabledRendererCount();
                        zArr2[i] = this.renderers[i].isRendererEnabled();
                        this.renderers[i].maybeDisableOrResetPosition(playingPeriod2.sampleStreams[i], this.mediaClock, this.rendererPositionUs, zArr[i]);
                        if (enabledRendererCount - this.renderers[i].getEnabledRendererCount() > 0) {
                            maybeTriggerOnRendererReadyChanged(i, false);
                        }
                        this.enabledRendererCount -= enabledRendererCount - this.renderers[i].getEnabledRendererCount();
                        i++;
                    }
                    enableRenderers(zArr2, this.rendererPositionUs);
                    playingPeriod2.allRenderersInCorrectState = true;
                } else {
                    mediaPeriodQueue.removeAfter(playingPeriod);
                    if (playingPeriod.prepared) {
                        long jMax = Math.max(playingPeriod.info.startPositionUs, playingPeriod.toPeriodTime(this.rendererPositionUs));
                        if (this.hasSecondaryRenderers && areRenderersPrewarming() && this.queue.getPrewarmingPeriod() == playingPeriod) {
                            disableAndResetPrewarmingRenderers();
                        }
                        playingPeriod.applyTrackSelection(trackSelectorResultSelectTracks, jMax, false);
                    }
                }
                handleLoadingMediaPeriodChanged(true);
                if (this.playbackInfo.playbackState != 4) {
                    maybeContinueLoading();
                    updatePlaybackPositions();
                    this.handler.sendEmptyMessage(2);
                    return;
                }
                return;
            }
        }
    }

    private void updateTrackSelectionPlaybackSpeed(float f) {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlaybackSpeed(f);
                }
            }
        }
    }

    private void notifyTrackSelectionDiscontinuity() {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onDiscontinuity();
                }
            }
        }
    }

    private boolean shouldTransitionToReadyState(boolean z) {
        if (this.enabledRendererCount == 0) {
            return isTimelineReady();
        }
        boolean z2 = false;
        if (!z) {
            return false;
        }
        if (!this.playbackInfo.isLoading) {
            return true;
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long targetLiveOffsetUs = shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, playingPeriod.info.id) ? this.livePlaybackSpeedControl.getTargetLiveOffsetUs() : -9223372036854775807L;
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        boolean z3 = loadingPeriod.isFullyBuffered() && loadingPeriod.info.isFinal;
        if (loadingPeriod.info.id.isAd() && !loadingPeriod.prepared) {
            z2 = true;
        }
        if (z3 || z2) {
            return true;
        }
        return this.loadControl.shouldStartPlayback(new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, playingPeriod.info.id, playingPeriod.toPeriodTime(this.rendererPositionUs), getTotalBufferedDurationUs(loadingPeriod.getBufferedPositionUs()), this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, targetLiveOffsetUs, this.lastRebufferRealtimeMs));
    }

    private boolean isTimelineReady() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j = playingPeriod.info.durationUs;
        if (playingPeriod.prepared) {
            return j == -9223372036854775807L || this.playbackInfo.positionUs < j || !shouldPlayWhenReady();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c6  */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v12 */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v14 */
    /* JADX WARN: Type inference failed for: r21v15 */
    /* JADX WARN: Type inference failed for: r21v16 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6, types: [long] */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r28v0, types: [androidx.media3.exoplayer.ExoPlayerImplInternal] */
    /* JADX WARN: Type inference failed for: r5v3, types: [long] */
    /* JADX WARN: Type inference failed for: r5v7, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handleMediaSourceListInfoRefreshed(Timeline timeline, boolean z) throws Throwable {
        Timeline timeline2;
        MediaSource.MediaPeriodId mediaPeriodId;
        boolean z2;
        int i;
        ?? r21;
        boolean z3;
        ?? r212;
        int i2;
        ?? r12;
        MediaSource.MediaPeriodId mediaPeriodId2;
        ?? r213;
        long maxRendererReadPositionUs;
        long maxRendererReadPositionUs2;
        int i3;
        ?? r214;
        boolean z4;
        Timeline timeline3 = timeline;
        PositionUpdateForPlaylistChange positionUpdateForPlaylistChangeResolvePositionForPlaylistChange = resolvePositionForPlaylistChange(timeline3, this.playbackInfo, this.pendingInitialSeekPosition, this.queue, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        MediaSource.MediaPeriodId mediaPeriodId3 = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.periodId;
        ?? r122 = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.requestedContentPositionUs;
        boolean z5 = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.forceBufferingState;
        long jSeekToPeriodPosition = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.periodPositionUs;
        boolean z6 = (this.playbackInfo.periodId.equals(mediaPeriodId3) && jSeekToPeriodPosition == this.playbackInfo.positionUs) ? false : true;
        try {
            if (positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.endPlayback) {
                if (this.playbackInfo.playbackState != 1) {
                    setState(4);
                }
                resetInternal(false, false, false, true);
            }
            for (RendererHolder rendererHolder : this.renderers) {
                try {
                    rendererHolder.setTimeline(timeline3);
                } catch (Throwable th) {
                    th = th;
                    timeline2 = timeline3;
                    mediaPeriodId = mediaPeriodId3;
                    i = 4;
                    r21 = r122;
                    z3 = false;
                    z2 = true;
                    i2 = -1;
                    r12 = z3;
                    r212 = r21;
                    PlaybackInfo playbackInfo = this.playbackInfo;
                    Timeline timeline4 = playbackInfo.timeline;
                    MediaSource.MediaPeriodId mediaPeriodId4 = playbackInfo.periodId;
                    mediaPeriodId2 = mediaPeriodId;
                    updatePlaybackSpeedSettingsForNewPeriod(timeline2, mediaPeriodId2, timeline4, mediaPeriodId4, !positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset ? jSeekToPeriodPosition : -9223372036854775807L, false);
                    if (!z6 || r212 != this.playbackInfo.requestedContentPositionUs) {
                        PlaybackInfo playbackInfo2 = this.playbackInfo;
                        Object obj = playbackInfo2.periodId.periodUid;
                        Timeline timeline5 = playbackInfo2.timeline;
                        this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId2, jSeekToPeriodPosition, r212, this.playbackInfo.discontinuityStartPositionUs, (z6 || !z || timeline5.isEmpty() || timeline5.getPeriodByUid(obj, this.period).isPlaceholder) ? r12 : z2, timeline2.getIndexOfPeriod(obj) != i2 ? i : 3);
                    }
                    resetPendingPauseAtEndOfPeriod();
                    resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                    this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                    if (!timeline2.isEmpty()) {
                        this.pendingInitialSeekPosition = null;
                    }
                    handleLoadingMediaPeriodChanged(r12);
                    this.handler.sendEmptyMessage(2);
                    throw th;
                }
            }
            try {
                if (z6) {
                    i3 = 2;
                    i = 4;
                    ?? r215 = r122;
                    z4 = false;
                    z4 = false;
                    z2 = true;
                    i2 = -1;
                    r214 = r215;
                    if (!timeline3.isEmpty()) {
                        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
                            if (playingPeriod.info.id.equals(mediaPeriodId3)) {
                                playingPeriod.info = this.queue.getUpdatedMediaPeriodInfo(timeline3, playingPeriod.info);
                                playingPeriod.updateClipping();
                            }
                        }
                        jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId3, jSeekToPeriodPosition, z5);
                        r214 = r215;
                    }
                } else {
                    try {
                        maxRendererReadPositionUs = 0;
                        maxRendererReadPositionUs2 = this.queue.getReadingPeriod() == null ? 0L : getMaxRendererReadPositionUs(this.queue.getReadingPeriod());
                        if (areRenderersPrewarming() && this.queue.getPrewarmingPeriod() != null) {
                            maxRendererReadPositionUs = getMaxRendererReadPositionUs(this.queue.getPrewarmingPeriod());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                    } catch (Throwable th3) {
                        th = th3;
                        timeline3 = timeline;
                        i = 4;
                        r213 = r122;
                        r122 = 0;
                        z2 = true;
                        i2 = -1;
                        timeline2 = timeline3;
                        mediaPeriodId = mediaPeriodId3;
                        r12 = r122;
                        r212 = r213;
                        PlaybackInfo playbackInfo3 = this.playbackInfo;
                        Timeline timeline42 = playbackInfo3.timeline;
                        MediaSource.MediaPeriodId mediaPeriodId42 = playbackInfo3.periodId;
                        mediaPeriodId2 = mediaPeriodId;
                        updatePlaybackSpeedSettingsForNewPeriod(timeline2, mediaPeriodId2, timeline42, mediaPeriodId42, !positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset ? jSeekToPeriodPosition : -9223372036854775807L, false);
                        if (!z6) {
                        }
                        resetPendingPauseAtEndOfPeriod();
                        resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                        this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                        if (!timeline2.isEmpty()) {
                        }
                        handleLoadingMediaPeriodChanged(r12);
                        this.handler.sendEmptyMessage(2);
                        throw th;
                    }
                    try {
                        i3 = 2;
                        z2 = true;
                        i = 4;
                        ?? r216 = r122;
                        r122 = 0;
                        z4 = false;
                        z4 = false;
                        z4 = false;
                        i2 = -1;
                        try {
                            int iUpdateQueuedPeriods = this.queue.updateQueuedPeriods(timeline, this.rendererPositionUs, maxRendererReadPositionUs2, maxRendererReadPositionUs);
                            timeline3 = timeline;
                            if ((iUpdateQueuedPeriods & 1) != 0) {
                                seekToCurrentPosition(false);
                                r214 = r216;
                            } else {
                                r214 = r216;
                                if ((iUpdateQueuedPeriods & 2) != 0) {
                                    disableAndResetPrewarmingRenderers();
                                    r214 = r216;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            timeline3 = timeline;
                            r213 = r216;
                            timeline2 = timeline3;
                            mediaPeriodId = mediaPeriodId3;
                            r12 = r122;
                            r212 = r213;
                            PlaybackInfo playbackInfo32 = this.playbackInfo;
                            Timeline timeline422 = playbackInfo32.timeline;
                            MediaSource.MediaPeriodId mediaPeriodId422 = playbackInfo32.periodId;
                            mediaPeriodId2 = mediaPeriodId;
                            updatePlaybackSpeedSettingsForNewPeriod(timeline2, mediaPeriodId2, timeline422, mediaPeriodId422, !positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset ? jSeekToPeriodPosition : -9223372036854775807L, false);
                            if (!z6) {
                                PlaybackInfo playbackInfo22 = this.playbackInfo;
                                Object obj2 = playbackInfo22.periodId.periodUid;
                                Timeline timeline52 = playbackInfo22.timeline;
                                if (z6) {
                                    this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId2, jSeekToPeriodPosition, r212, this.playbackInfo.discontinuityStartPositionUs, (z6 || !z || timeline52.isEmpty() || timeline52.getPeriodByUid(obj2, this.period).isPlaceholder) ? r12 : z2, timeline2.getIndexOfPeriod(obj2) != i2 ? i : 3);
                                }
                            }
                            resetPendingPauseAtEndOfPeriod();
                            resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                            this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                            if (!timeline2.isEmpty()) {
                            }
                            handleLoadingMediaPeriodChanged(r12);
                            this.handler.sendEmptyMessage(2);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        timeline3 = timeline;
                        i = 4;
                        r213 = r122;
                        r122 = 0;
                        z2 = true;
                        i2 = -1;
                        timeline2 = timeline3;
                        mediaPeriodId = mediaPeriodId3;
                        r12 = r122;
                        r212 = r213;
                        PlaybackInfo playbackInfo322 = this.playbackInfo;
                        Timeline timeline4222 = playbackInfo322.timeline;
                        MediaSource.MediaPeriodId mediaPeriodId4222 = playbackInfo322.periodId;
                        mediaPeriodId2 = mediaPeriodId;
                        updatePlaybackSpeedSettingsForNewPeriod(timeline2, mediaPeriodId2, timeline4222, mediaPeriodId4222, !positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset ? jSeekToPeriodPosition : -9223372036854775807L, false);
                        if (!z6) {
                        }
                        resetPendingPauseAtEndOfPeriod();
                        resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                        this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                        if (!timeline2.isEmpty()) {
                        }
                        handleLoadingMediaPeriodChanged(r12);
                        this.handler.sendEmptyMessage(2);
                        throw th;
                    }
                }
                PlaybackInfo playbackInfo4 = this.playbackInfo;
                updatePlaybackSpeedSettingsForNewPeriod(timeline3, mediaPeriodId3, playbackInfo4.timeline, playbackInfo4.periodId, positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset ? jSeekToPeriodPosition : -9223372036854775807L, false);
                Timeline timeline6 = timeline3;
                if (z6 || r214 != this.playbackInfo.requestedContentPositionUs) {
                    PlaybackInfo playbackInfo5 = this.playbackInfo;
                    Object obj3 = playbackInfo5.periodId.periodUid;
                    Timeline timeline7 = playbackInfo5.timeline;
                    this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId3, jSeekToPeriodPosition, r214, this.playbackInfo.discontinuityStartPositionUs, (!z6 || !z || timeline7.isEmpty() || timeline7.getPeriodByUid(obj3, this.period).isPlaceholder) ? z4 : z2, timeline6.getIndexOfPeriod(obj3) == i2 ? i : 3);
                }
                resetPendingPauseAtEndOfPeriod();
                resolvePendingMessagePositions(timeline6, this.playbackInfo.timeline);
                this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline6);
                if (!timeline6.isEmpty()) {
                    this.pendingInitialSeekPosition = null;
                }
                handleLoadingMediaPeriodChanged(z4);
                this.handler.sendEmptyMessage(i3);
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
            timeline2 = timeline3;
            mediaPeriodId = mediaPeriodId3;
            z2 = true;
            i = 4;
            r21 = r122;
            z3 = false;
        }
    }

    private void updatePlaybackSpeedSettingsForNewPeriod(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline2, MediaSource.MediaPeriodId mediaPeriodId2, long j, boolean z) {
        if (!shouldUseLivePlaybackSpeedControl(timeline, mediaPeriodId)) {
            PlaybackParameters playbackParameters = mediaPeriodId.isAd() ? PlaybackParameters.DEFAULT : this.playbackInfo.playbackParameters;
            if (this.mediaClock.getPlaybackParameters().equals(playbackParameters)) {
                return;
            }
            setMediaClockPlaybackParameters(playbackParameters);
            handlePlaybackParameters(this.playbackInfo.playbackParameters, playbackParameters.speed, false, false);
            return;
        }
        timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
        this.livePlaybackSpeedControl.setLiveConfiguration((MediaItem.LiveConfiguration) Util.castNonNull(this.window.liveConfiguration));
        if (j != -9223372036854775807L) {
            this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(getLiveOffsetUs(timeline, mediaPeriodId.periodUid, j));
            return;
        }
        if (!Objects.equals(!timeline2.isEmpty() ? timeline2.getWindow(timeline2.getPeriodByUid(mediaPeriodId2.periodUid, this.period).windowIndex, this.window).uid : null, this.window.uid) || z) {
            this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(-9223372036854775807L);
        }
    }

    private long getMaxRendererReadPositionUs(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder == null) {
            return 0L;
        }
        long rendererOffset = mediaPeriodHolder.getRendererOffset();
        if (!mediaPeriodHolder.prepared) {
            return rendererOffset;
        }
        int i = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.renderers;
            if (i >= rendererHolderArr.length) {
                return rendererOffset;
            }
            if (rendererHolderArr[i].isReadingFromPeriod(mediaPeriodHolder)) {
                long readingPositionUs = this.renderers[i].getReadingPositionUs(mediaPeriodHolder);
                if (readingPositionUs == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                rendererOffset = Math.max(readingPositionUs, rendererOffset);
            }
            i++;
        }
    }

    private void updatePeriods() throws ExoPlaybackException {
        if (this.playbackInfo.timeline.isEmpty() || !this.mediaSourceList.isPrepared()) {
            return;
        }
        boolean zMaybeUpdateLoadingPeriod = maybeUpdateLoadingPeriod();
        maybeUpdatePrewarmingPeriod();
        maybeUpdateReadingPeriod();
        maybeUpdateReadingRenderers();
        maybeUpdatePlayingPeriod();
        maybeUpdatePreloadPeriods(zMaybeUpdateLoadingPeriod);
    }

    private boolean maybeUpdateLoadingPeriod() {
        MediaPeriodInfo nextMediaPeriodInfo;
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        boolean z = false;
        if (this.queue.shouldLoadNextMediaPeriod() && (nextMediaPeriodInfo = this.queue.getNextMediaPeriodInfo(this.rendererPositionUs, this.playbackInfo)) != null) {
            MediaPeriodHolder mediaPeriodHolderEnqueueNextMediaPeriodHolder = this.queue.enqueueNextMediaPeriodHolder(nextMediaPeriodInfo);
            if (!mediaPeriodHolderEnqueueNextMediaPeriodHolder.prepareCalled) {
                mediaPeriodHolderEnqueueNextMediaPeriodHolder.prepare(this, nextMediaPeriodInfo.startPositionUs);
            } else if (mediaPeriodHolderEnqueueNextMediaPeriodHolder.prepared) {
                this.handler.obtainMessage(8, mediaPeriodHolderEnqueueNextMediaPeriodHolder.mediaPeriod).sendToTarget();
            }
            if (this.queue.getPlayingPeriod() == mediaPeriodHolderEnqueueNextMediaPeriodHolder) {
                resetRendererPosition(nextMediaPeriodInfo.startPositionUs);
            }
            handleLoadingMediaPeriodChanged(false);
            z = true;
        }
        if (this.shouldContinueLoading) {
            this.shouldContinueLoading = isLoadingPossible(this.queue.getLoadingPeriod());
            updateIsLoading();
            return z;
        }
        maybeContinueLoading();
        return z;
    }

    private void maybeUpdatePrewarmingPeriod() throws ExoPlaybackException {
        MediaPeriodHolder prewarmingPeriod;
        if (this.pendingPauseAtEndOfPeriod || !this.hasSecondaryRenderers || this.isPrewarmingDisabledUntilNextTransition || areRenderersPrewarming() || (prewarmingPeriod = this.queue.getPrewarmingPeriod()) == null || prewarmingPeriod != this.queue.getReadingPeriod() || prewarmingPeriod.getNext() == null || !prewarmingPeriod.getNext().prepared) {
            return;
        }
        this.queue.advancePrewarmingPeriod();
        maybePrewarmRenderers();
    }

    private void maybePrewarmRenderers() throws ExoPlaybackException {
        ExoPlayerImplInternal exoPlayerImplInternal;
        MediaPeriodHolder prewarmingPeriod = this.queue.getPrewarmingPeriod();
        if (prewarmingPeriod == null) {
            return;
        }
        TrackSelectorResult trackSelectorResult = prewarmingPeriod.getTrackSelectorResult();
        int i = 0;
        while (i < this.renderers.length) {
            if (trackSelectorResult.isRendererEnabled(i) && this.renderers[i].hasSecondary() && !this.renderers[i].isPrewarming()) {
                this.renderers[i].startPrewarming();
                exoPlayerImplInternal = this;
                exoPlayerImplInternal.enableRenderer(prewarmingPeriod, i, false, prewarmingPeriod.getStartPositionRendererTime());
            } else {
                exoPlayerImplInternal = this;
            }
            i++;
            this = exoPlayerImplInternal;
        }
        ExoPlayerImplInternal exoPlayerImplInternal2 = this;
        if (exoPlayerImplInternal2.areRenderersPrewarming()) {
            exoPlayerImplInternal2.prewarmingMediaPeriodDiscontinuity = prewarmingPeriod.mediaPeriod.readDiscontinuity();
            if (prewarmingPeriod.isFullyBuffered()) {
                return;
            }
            exoPlayerImplInternal2.queue.removeAfter(prewarmingPeriod);
            exoPlayerImplInternal2.handleLoadingMediaPeriodChanged(false);
            exoPlayerImplInternal2.maybeContinueLoading();
        }
    }

    private void maybeUpdateReadingPeriod() {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null) {
            return;
        }
        int i = 0;
        if (readingPeriod.getNext() == null || this.pendingPauseAtEndOfPeriod) {
            if (readingPeriod.info.isFinal || this.pendingPauseAtEndOfPeriod) {
                RendererHolder[] rendererHolderArr = this.renderers;
                int length = rendererHolderArr.length;
                while (i < length) {
                    RendererHolder rendererHolder = rendererHolderArr[i];
                    if (rendererHolder.isReadingFromPeriod(readingPeriod) && rendererHolder.hasReadPeriodToEnd(readingPeriod)) {
                        long j = readingPeriod.info.durationUs;
                        rendererHolder.setCurrentStreamFinal(readingPeriod, (j == -9223372036854775807L || j == Long.MIN_VALUE) ? -9223372036854775807L : readingPeriod.getRendererOffset() + readingPeriod.info.durationUs);
                    }
                    i++;
                }
                return;
            }
            return;
        }
        if (hasReadingPeriodFinishedReading()) {
            if (areRenderersPrewarming() && this.queue.getPrewarmingPeriod() == this.queue.getReadingPeriod()) {
                return;
            }
            if (readingPeriod.getNext().prepared || this.rendererPositionUs >= readingPeriod.getNext().getStartPositionRendererTime()) {
                TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
                MediaPeriodHolder mediaPeriodHolderAdvanceReadingPeriod = this.queue.advanceReadingPeriod();
                TrackSelectorResult trackSelectorResult2 = mediaPeriodHolderAdvanceReadingPeriod.getTrackSelectorResult();
                Timeline timeline = this.playbackInfo.timeline;
                updatePlaybackSpeedSettingsForNewPeriod(timeline, mediaPeriodHolderAdvanceReadingPeriod.info.id, timeline, readingPeriod.info.id, -9223372036854775807L, false);
                if (mediaPeriodHolderAdvanceReadingPeriod.prepared && ((this.hasSecondaryRenderers && this.prewarmingMediaPeriodDiscontinuity != -9223372036854775807L) || mediaPeriodHolderAdvanceReadingPeriod.mediaPeriod.readDiscontinuity() != -9223372036854775807L)) {
                    this.prewarmingMediaPeriodDiscontinuity = -9223372036854775807L;
                    boolean z = this.hasSecondaryRenderers && !this.isPrewarmingDisabledUntilNextTransition;
                    if (z) {
                        int i2 = 0;
                        while (true) {
                            if (i2 < this.renderers.length) {
                                if (trackSelectorResult2.isRendererEnabled(i2) && this.renderers[i2].getTrackType() != -2 && !MimeTypes.allSamplesAreSyncSamples(trackSelectorResult2.selections[i2].getSelectedFormat().sampleMimeType, trackSelectorResult2.selections[i2].getSelectedFormat().codecs) && !this.renderers[i2].isPrewarming()) {
                                    z = false;
                                    break;
                                }
                                i2++;
                            } else {
                                break;
                            }
                        }
                    }
                    if (!z) {
                        setAllNonPrewarmingRendererStreamsFinal(mediaPeriodHolderAdvanceReadingPeriod.getStartPositionRendererTime());
                        if (mediaPeriodHolderAdvanceReadingPeriod.isFullyBuffered()) {
                            return;
                        }
                        this.queue.removeAfter(mediaPeriodHolderAdvanceReadingPeriod);
                        handleLoadingMediaPeriodChanged(false);
                        maybeContinueLoading();
                        return;
                    }
                }
                RendererHolder[] rendererHolderArr2 = this.renderers;
                int length2 = rendererHolderArr2.length;
                while (i < length2) {
                    rendererHolderArr2[i].maybeSetOldStreamToFinal(trackSelectorResult, trackSelectorResult2, mediaPeriodHolderAdvanceReadingPeriod.getStartPositionRendererTime());
                    i++;
                }
            }
        }
    }

    private void maybeUpdateReadingRenderers() {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null || this.queue.getPlayingPeriod() == readingPeriod || readingPeriod.allRenderersInCorrectState || !updateRenderersForTransition()) {
            return;
        }
        this.queue.getReadingPeriod().allRenderersInCorrectState = true;
    }

    private boolean updateRenderersForTransition() throws ExoPlaybackException {
        ExoPlayerImplInternal exoPlayerImplInternal;
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
        int i = 0;
        boolean z = true;
        int i2 = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.renderers;
            if (i2 >= rendererHolderArr.length) {
                break;
            }
            int enabledRendererCount = rendererHolderArr[i2].getEnabledRendererCount();
            int iReplaceStreamsOrDisableRendererForTransition = this.renderers[i2].replaceStreamsOrDisableRendererForTransition(readingPeriod, trackSelectorResult, this.mediaClock);
            if ((iReplaceStreamsOrDisableRendererForTransition & 2) != 0 && this.offloadSchedulingEnabled) {
                setOffloadSchedulingEnabled(false);
            }
            this.enabledRendererCount -= enabledRendererCount - this.renderers[i2].getEnabledRendererCount();
            z &= (iReplaceStreamsOrDisableRendererForTransition & 1) != 0;
            i2++;
        }
        if (z) {
            while (i < this.renderers.length) {
                if (!trackSelectorResult.isRendererEnabled(i) || this.renderers[i].isReadingFromPeriod(readingPeriod)) {
                    exoPlayerImplInternal = this;
                } else {
                    exoPlayerImplInternal = this;
                    exoPlayerImplInternal.enableRenderer(readingPeriod, i, false, readingPeriod.getStartPositionRendererTime());
                }
                i++;
                this = exoPlayerImplInternal;
            }
        }
        return z;
    }

    private void maybeUpdatePreloadPeriods(boolean z) {
        if (this.preloadConfiguration.targetPreloadDurationUs == -9223372036854775807L) {
            return;
        }
        if (z || !this.playbackInfo.timeline.equals(this.lastPreloadPoolInvalidationTimeline)) {
            Timeline timeline = this.playbackInfo.timeline;
            this.lastPreloadPoolInvalidationTimeline = timeline;
            this.queue.invalidatePreloadPool(timeline);
        }
        maybeContinuePreloading();
    }

    private void maybeContinuePreloading() {
        this.queue.maybeUpdatePreloadMediaPeriodHolder();
        MediaPeriodHolder preloadingPeriod = this.queue.getPreloadingPeriod();
        if (preloadingPeriod != null) {
            if ((!preloadingPeriod.prepareCalled || preloadingPeriod.prepared) && !preloadingPeriod.mediaPeriod.isLoading()) {
                if (this.loadControl.shouldContinuePreloading(this.playbackInfo.timeline, preloadingPeriod.info.id, preloadingPeriod.prepared ? preloadingPeriod.mediaPeriod.getBufferedPositionUs() : 0L)) {
                    if (!preloadingPeriod.prepareCalled) {
                        preloadingPeriod.prepare(this, preloadingPeriod.info.startPositionUs);
                    } else {
                        preloadingPeriod.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(preloadingPeriod.toPeriodTime(this.rendererPositionUs)).setPlaybackSpeed(this.mediaClock.getPlaybackParameters().speed).setLastRebufferRealtimeMs(this.lastRebufferRealtimeMs).build());
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void maybeUpdatePlayingPeriod() {
        boolean z;
        boolean z2 = false;
        while (this.shouldAdvancePlayingPeriod()) {
            if (z2) {
                this.maybeNotifyPlaybackInfoChanged();
            }
            this.isPrewarmingDisabledUntilNextTransition = false;
            MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(this.queue.advancePlayingPeriod());
            if (this.playbackInfo.periodId.periodUid.equals(mediaPeriodHolder.info.id.periodUid)) {
                MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
                if (mediaPeriodId.adGroupIndex == -1) {
                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodHolder.info.id;
                    z = mediaPeriodId2.adGroupIndex == -1 && mediaPeriodId.nextAdGroupIndex != mediaPeriodId2.nextAdGroupIndex;
                }
            }
            MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
            MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodInfo.id;
            long j = mediaPeriodInfo.startPositionUs;
            ExoPlayerImplInternal exoPlayerImplInternal = this;
            exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId3, j, mediaPeriodInfo.requestedContentPositionUs, j, !z, 0);
            exoPlayerImplInternal.resetPendingPauseAtEndOfPeriod();
            exoPlayerImplInternal.updatePlaybackPositions();
            if (exoPlayerImplInternal.areRenderersPrewarming() && mediaPeriodHolder == exoPlayerImplInternal.queue.getPrewarmingPeriod()) {
                exoPlayerImplInternal.maybeHandlePrewarmingTransition();
            }
            if (exoPlayerImplInternal.playbackInfo.playbackState == 3) {
                exoPlayerImplInternal.startRenderers();
            }
            exoPlayerImplInternal.allowRenderersToRenderStartOfStreams();
            z2 = true;
            this = exoPlayerImplInternal;
        }
    }

    private void maybeHandlePrewarmingTransition() {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.maybeHandlePrewarmingTransition();
        }
    }

    private void maybeUpdateOffloadScheduling() {
        MediaPeriodHolder playingPeriod;
        boolean z;
        if (this.queue.getPlayingPeriod() == this.queue.getReadingPeriod() && (playingPeriod = this.queue.getPlayingPeriod()) != null) {
            TrackSelectorResult trackSelectorResult = playingPeriod.getTrackSelectorResult();
            boolean z2 = false;
            int i = 0;
            boolean z3 = false;
            while (true) {
                if (i >= this.renderers.length) {
                    z = true;
                    break;
                }
                if (trackSelectorResult.isRendererEnabled(i)) {
                    if (this.renderers[i].getTrackType() != 1) {
                        z = false;
                        break;
                    } else if (trackSelectorResult.rendererConfigurations[i].offloadModePreferred != 0) {
                        z3 = true;
                    }
                }
                i++;
            }
            if (z3 && z) {
                z2 = true;
            }
            setOffloadSchedulingEnabled(z2);
        }
    }

    private void allowRenderersToRenderStartOfStreams() {
        TrackSelectorResult trackSelectorResult = this.queue.getPlayingPeriod().getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].enableMayRenderStartOfStream();
            }
        }
    }

    private void resetPendingPauseAtEndOfPeriod() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        this.pendingPauseAtEndOfPeriod = playingPeriod != null && playingPeriod.info.isLastInTimelineWindow && this.pauseAtEndOfWindow;
    }

    private boolean shouldAdvancePlayingPeriod() {
        MediaPeriodHolder playingPeriod;
        MediaPeriodHolder next;
        return shouldPlayWhenReady() && !this.pendingPauseAtEndOfPeriod && (playingPeriod = this.queue.getPlayingPeriod()) != null && (next = playingPeriod.getNext()) != null && this.rendererPositionUs >= next.getStartPositionRendererTime() && next.allRenderersInCorrectState;
    }

    private boolean hasReadingPeriodFinishedReading() {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (!readingPeriod.prepared) {
            return false;
        }
        int i = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.renderers;
            if (i >= rendererHolderArr.length) {
                return true;
            }
            if (!rendererHolderArr[i].hasFinishedReadingFromPeriod(readingPeriod)) {
                return false;
            }
            i++;
        }
    }

    private void setAllNonPrewarmingRendererStreamsFinal(long j) {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setAllNonPrewarmingRendererStreamsFinal(j);
        }
    }

    private void handlePeriodPrepared(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        boolean zIsLoading = this.queue.isLoading(mediaPeriod);
        MediaPeriodQueue mediaPeriodQueue = this.queue;
        if (zIsLoading) {
            handleLoadingPeriodPrepared((MediaPeriodHolder) Assertions.checkNotNull(mediaPeriodQueue.getLoadingPeriod()));
            return;
        }
        MediaPeriodHolder preloadHolderByMediaPeriod = mediaPeriodQueue.getPreloadHolderByMediaPeriod(mediaPeriod);
        if (preloadHolderByMediaPeriod != null) {
            Assertions.checkState(!preloadHolderByMediaPeriod.prepared);
            float f = this.mediaClock.getPlaybackParameters().speed;
            PlaybackInfo playbackInfo = this.playbackInfo;
            preloadHolderByMediaPeriod.handlePrepared(f, playbackInfo.timeline, playbackInfo.playWhenReady);
            if (this.queue.isPreloading(mediaPeriod)) {
                maybeContinuePreloading();
            }
        }
    }

    private void handleLoadingPeriodPrepared(MediaPeriodHolder mediaPeriodHolder) throws ExoPlaybackException {
        ExoPlayerImplInternal exoPlayerImplInternal;
        if (!mediaPeriodHolder.prepared) {
            float f = this.mediaClock.getPlaybackParameters().speed;
            PlaybackInfo playbackInfo = this.playbackInfo;
            mediaPeriodHolder.handlePrepared(f, playbackInfo.timeline, playbackInfo.playWhenReady);
        }
        updateLoadControlTrackSelection(mediaPeriodHolder.info.id, mediaPeriodHolder.getTrackGroups(), mediaPeriodHolder.getTrackSelectorResult());
        if (mediaPeriodHolder == this.queue.getPlayingPeriod()) {
            resetRendererPosition(mediaPeriodHolder.info.startPositionUs);
            enableRenderers();
            mediaPeriodHolder.allRenderersInCorrectState = true;
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            MediaSource.MediaPeriodId mediaPeriodId = playbackInfo2.periodId;
            long j = mediaPeriodHolder.info.startPositionUs;
            exoPlayerImplInternal = this;
            exoPlayerImplInternal.playbackInfo = exoPlayerImplInternal.handlePositionDiscontinuity(mediaPeriodId, j, playbackInfo2.requestedContentPositionUs, j, false, 5);
        } else {
            exoPlayerImplInternal = this;
        }
        exoPlayerImplInternal.maybeContinueLoading();
    }

    private void handleContinueLoadingRequested(MediaPeriod mediaPeriod) {
        boolean zIsLoading = this.queue.isLoading(mediaPeriod);
        MediaPeriodQueue mediaPeriodQueue = this.queue;
        if (zIsLoading) {
            mediaPeriodQueue.reevaluateBuffer(this.rendererPositionUs);
            maybeContinueLoading();
        } else if (mediaPeriodQueue.isPreloading(mediaPeriod)) {
            maybeContinuePreloading();
        }
    }

    private void handlePlaybackParameters(PlaybackParameters playbackParameters, boolean z) {
        handlePlaybackParameters(playbackParameters, playbackParameters.speed, true, z);
    }

    private void handlePlaybackParameters(PlaybackParameters playbackParameters, float f, boolean z, boolean z2) {
        if (z) {
            if (z2) {
                this.playbackInfoUpdate.incrementPendingOperationAcks(1);
            }
            this.playbackInfo = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        }
        updateTrackSelectionPlaybackSpeed(playbackParameters.speed);
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setPlaybackSpeed(f, playbackParameters.speed);
        }
    }

    private void maybeContinueLoading() {
        boolean zShouldContinueLoading = shouldContinueLoading();
        this.shouldContinueLoading = zShouldContinueLoading;
        if (zShouldContinueLoading) {
            MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(this.queue.getLoadingPeriod());
            mediaPeriodHolder.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(mediaPeriodHolder.toPeriodTime(this.rendererPositionUs)).setPlaybackSpeed(this.mediaClock.getPlaybackParameters().speed).setLastRebufferRealtimeMs(this.lastRebufferRealtimeMs).build());
        }
        updateIsLoading();
    }

    private boolean shouldContinueLoading() {
        long periodTime;
        if (!isLoadingPossible(this.queue.getLoadingPeriod())) {
            return false;
        }
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        long totalBufferedDurationUs = getTotalBufferedDurationUs(loadingPeriod.getNextLoadPositionUs());
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j = this.rendererPositionUs;
        if (loadingPeriod == playingPeriod) {
            periodTime = loadingPeriod.toPeriodTime(j);
        } else {
            periodTime = loadingPeriod.toPeriodTime(j) - loadingPeriod.info.startPositionUs;
        }
        LoadControl.Parameters parameters = new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, loadingPeriod.info.id, periodTime, totalBufferedDurationUs, this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, loadingPeriod.info.id) ? this.livePlaybackSpeedControl.getTargetLiveOffsetUs() : -9223372036854775807L, this.lastRebufferRealtimeMs);
        boolean zShouldContinueLoading = this.loadControl.shouldContinueLoading(parameters);
        MediaPeriodHolder playingPeriod2 = this.queue.getPlayingPeriod();
        if (zShouldContinueLoading || !playingPeriod2.prepared || totalBufferedDurationUs >= 500000 || (this.backBufferDurationUs <= 0 && !this.retainBackBufferFromKeyframe)) {
            return zShouldContinueLoading;
        }
        playingPeriod2.mediaPeriod.discardBuffer(this.playbackInfo.positionUs, false);
        return this.loadControl.shouldContinueLoading(parameters);
    }

    private boolean isLoadingPossible(MediaPeriodHolder mediaPeriodHolder) {
        return (mediaPeriodHolder == null || mediaPeriodHolder.hasLoadingError() || mediaPeriodHolder.getNextLoadPositionUs() == Long.MIN_VALUE) ? false : true;
    }

    private void updateIsLoading() {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        boolean z = this.shouldContinueLoading || (loadingPeriod != null && loadingPeriod.mediaPeriod.isLoading());
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (z != playbackInfo.isLoading) {
            this.playbackInfo = playbackInfo.copyWithIsLoading(z);
        }
    }

    private PlaybackInfo handlePositionDiscontinuity(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, boolean z, int i) {
        List<Metadata> list;
        TrackGroupArray trackGroupArray;
        TrackSelectorResult trackSelectorResult;
        TrackGroupArray trackGroups;
        TrackSelectorResult trackSelectorResult2;
        this.deliverPendingMessageAtStartPositionRequired = (!this.deliverPendingMessageAtStartPositionRequired && j == this.playbackInfo.positionUs && mediaPeriodId.equals(this.playbackInfo.periodId)) ? false : true;
        resetPendingPauseAtEndOfPeriod();
        PlaybackInfo playbackInfo = this.playbackInfo;
        TrackGroupArray trackGroupArray2 = playbackInfo.trackGroups;
        TrackSelectorResult trackSelectorResult3 = playbackInfo.trackSelectorResult;
        List<Metadata> listOf = playbackInfo.staticMetadata;
        if (this.mediaSourceList.isPrepared()) {
            MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
            if (playingPeriod == null) {
                trackGroups = TrackGroupArray.EMPTY;
            } else {
                trackGroups = playingPeriod.getTrackGroups();
            }
            if (playingPeriod == null) {
                trackSelectorResult2 = this.emptyTrackSelectorResult;
            } else {
                trackSelectorResult2 = playingPeriod.getTrackSelectorResult();
            }
            ImmutableList<Metadata> immutableListExtractMetadataFromTrackSelectionArray = extractMetadataFromTrackSelectionArray(trackSelectorResult2.selections);
            if (playingPeriod != null) {
                MediaPeriodInfo mediaPeriodInfo = playingPeriod.info;
                if (mediaPeriodInfo.requestedContentPositionUs != j2) {
                    playingPeriod.info = mediaPeriodInfo.copyWithRequestedContentPositionUs(j2);
                }
            }
            maybeUpdateOffloadScheduling();
            trackGroupArray = trackGroups;
            trackSelectorResult = trackSelectorResult2;
            list = immutableListExtractMetadataFromTrackSelectionArray;
        } else {
            if (!mediaPeriodId.equals(this.playbackInfo.periodId)) {
                trackGroupArray2 = TrackGroupArray.EMPTY;
                trackSelectorResult3 = this.emptyTrackSelectorResult;
                listOf = ImmutableList.of();
            }
            list = listOf;
            trackGroupArray = trackGroupArray2;
            trackSelectorResult = trackSelectorResult3;
        }
        if (z) {
            this.playbackInfoUpdate.setPositionDiscontinuity(i);
        }
        return this.playbackInfo.copyWithNewPosition(mediaPeriodId, j, j2, j3, getTotalBufferedDurationUs(), trackGroupArray, trackSelectorResult, list);
    }

    private ImmutableList<Metadata> extractMetadataFromTrackSelectionArray(ExoTrackSelection[] exoTrackSelectionArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        boolean z = false;
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                Metadata metadata = exoTrackSelection.getFormat(0).metadata;
                if (metadata == null) {
                    builder.add(new Metadata(new Metadata.Entry[0]));
                } else {
                    builder.add(metadata);
                    z = true;
                }
            }
        }
        return z ? builder.build() : ImmutableList.of();
    }

    private void enableRenderers() throws ExoPlaybackException {
        enableRenderers(new boolean[this.renderers.length], this.queue.getReadingPeriod().getStartPositionRendererTime());
    }

    private void enableRenderers(boolean[] zArr, long j) throws ExoPlaybackException {
        ExoPlayerImplInternal exoPlayerImplInternal;
        long j2;
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (!trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].reset();
            }
        }
        int i2 = 0;
        while (i2 < this.renderers.length) {
            if (!trackSelectorResult.isRendererEnabled(i2) || this.renderers[i2].isReadingFromPeriod(readingPeriod)) {
                exoPlayerImplInternal = this;
                j2 = j;
            } else {
                exoPlayerImplInternal = this;
                j2 = j;
                exoPlayerImplInternal.enableRenderer(readingPeriod, i2, zArr[i2], j2);
            }
            i2++;
            this = exoPlayerImplInternal;
            j = j2;
        }
    }

    private void enableRenderer(MediaPeriodHolder mediaPeriodHolder, int i, boolean z, long j) throws ExoPlaybackException {
        RendererHolder rendererHolder = this.renderers[i];
        if (rendererHolder.isRendererEnabled()) {
            return;
        }
        boolean z2 = mediaPeriodHolder == this.queue.getPlayingPeriod();
        TrackSelectorResult trackSelectorResult = mediaPeriodHolder.getTrackSelectorResult();
        RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i];
        ExoTrackSelection exoTrackSelection = trackSelectorResult.selections[i];
        boolean z3 = shouldPlayWhenReady() && this.playbackInfo.playbackState == 3;
        boolean z4 = !z && z3;
        this.enabledRendererCount++;
        rendererHolder.enable(rendererConfiguration, exoTrackSelection, mediaPeriodHolder.sampleStreams[i], this.rendererPositionUs, z4, z2, j, mediaPeriodHolder.getRendererOffset(), mediaPeriodHolder.info.id, this.mediaClock);
        rendererHolder.handleMessage(11, new Renderer.WakeupListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal.1
            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public void onSleep() {
                ExoPlayerImplInternal.this.requestForRendererSleep = true;
            }

            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public void onWakeup() {
                if (ExoPlayerImplInternal.this.isDynamicSchedulingEnabled() || ExoPlayerImplInternal.this.offloadSchedulingEnabled) {
                    ExoPlayerImplInternal.this.handler.sendEmptyMessage(2);
                }
            }
        }, mediaPeriodHolder);
        if (z3 && z2) {
            rendererHolder.start();
        }
    }

    private void releaseRenderers() {
        for (int i = 0; i < this.renderers.length; i++) {
            this.rendererCapabilities[i].clearListener();
            this.renderers[i].release();
        }
    }

    private void handleLoadingMediaPeriodChanged(boolean z) {
        long bufferedPositionUs;
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        MediaSource.MediaPeriodId mediaPeriodId = loadingPeriod == null ? this.playbackInfo.periodId : loadingPeriod.info.id;
        boolean zEquals = this.playbackInfo.loadingMediaPeriodId.equals(mediaPeriodId);
        if (!zEquals) {
            this.playbackInfo = this.playbackInfo.copyWithLoadingMediaPeriodId(mediaPeriodId);
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (loadingPeriod == null) {
            bufferedPositionUs = playbackInfo.positionUs;
        } else {
            bufferedPositionUs = loadingPeriod.getBufferedPositionUs();
        }
        playbackInfo.bufferedPositionUs = bufferedPositionUs;
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        if ((!zEquals || z) && loadingPeriod != null && loadingPeriod.prepared) {
            updateLoadControlTrackSelection(loadingPeriod.info.id, loadingPeriod.getTrackGroups(), loadingPeriod.getTrackSelectorResult());
        }
    }

    private long getTotalBufferedDurationUs() {
        return getTotalBufferedDurationUs(this.playbackInfo.bufferedPositionUs);
    }

    private long getTotalBufferedDurationUs(long j) {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        if (loadingPeriod == null) {
            return 0L;
        }
        return Math.max(0L, j - loadingPeriod.toPeriodTime(this.rendererPositionUs));
    }

    private void updateLoadControlTrackSelection(MediaSource.MediaPeriodId mediaPeriodId, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        long periodTime;
        MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(this.queue.getLoadingPeriod());
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j = this.rendererPositionUs;
        if (mediaPeriodHolder == playingPeriod) {
            periodTime = mediaPeriodHolder.toPeriodTime(j);
        } else {
            periodTime = mediaPeriodHolder.toPeriodTime(j) - mediaPeriodHolder.info.startPositionUs;
        }
        this.loadControl.onTracksSelected(new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, mediaPeriodId, periodTime, getTotalBufferedDurationUs(mediaPeriodHolder.getBufferedPositionUs()), this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, mediaPeriodHolder.info.id) ? this.livePlaybackSpeedControl.getTargetLiveOffsetUs() : -9223372036854775807L, this.lastRebufferRealtimeMs), trackGroupArray, trackSelectorResult.selections);
    }

    private boolean shouldPlayWhenReady() {
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.playWhenReady && playbackInfo.playbackSuppressionReason == 0;
    }

    private void maybeThrowRendererStreamError(int i) {
        RendererHolder rendererHolder = this.renderers[i];
        try {
            rendererHolder.maybeThrowStreamError((MediaPeriodHolder) Assertions.checkNotNull(this.queue.getPlayingPeriod()));
        } catch (IOException | RuntimeException e) {
            int trackType = rendererHolder.getTrackType();
            if (trackType == 3 || trackType == 5) {
                TrackSelectorResult trackSelectorResult = this.queue.getPlayingPeriod().getTrackSelectorResult();
                Log.m161e("ExoPlayerImplInternal", "Disabling track due to error: " + Format.toLogString(trackSelectorResult.selections[i].getSelectedFormat()), e);
                TrackSelectorResult trackSelectorResult2 = new TrackSelectorResult((RendererConfiguration[]) trackSelectorResult.rendererConfigurations.clone(), (ExoTrackSelection[]) trackSelectorResult.selections.clone(), trackSelectorResult.tracks, trackSelectorResult.info);
                trackSelectorResult2.rendererConfigurations[i] = null;
                trackSelectorResult2.selections[i] = null;
                disableRenderer(i);
                this.queue.getPlayingPeriod().applyTrackSelection(trackSelectorResult2, this.playbackInfo.positionUs, false);
                return;
            }
            throw e;
        }
    }

    private boolean areRenderersPrewarming() {
        if (!this.hasSecondaryRenderers) {
            return false;
        }
        for (RendererHolder rendererHolder : this.renderers) {
            if (rendererHolder.isPrewarming()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDynamicSchedulingEnabled() {
        if (this.dynamicSchedulingEnabled) {
            return true;
        }
        return this.scrubbingModeEnabled && this.scrubbingModeParameters.shouldEnableDynamicScheduling;
    }

    private static PositionUpdateForPlaylistChange resolvePositionForPlaylistChange(Timeline timeline, PlaybackInfo playbackInfo, SeekPosition seekPosition, MediaPeriodQueue mediaPeriodQueue, int i, boolean z, Timeline.Window window, Timeline.Period period) {
        long j;
        Timeline timeline2;
        Timeline.Period period2;
        int i2;
        int firstWindowIndex;
        long jConstrainValue;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        long adResumePositionUs;
        long j2;
        int i3;
        long jLongValue;
        boolean z6;
        boolean z7;
        boolean z8;
        if (timeline.isEmpty()) {
            return new PositionUpdateForPlaylistChange(PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L, -9223372036854775807L, false, true, false);
        }
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        Object obj = mediaPeriodId.periodUid;
        boolean zIsUsingPlaceholderPeriod = isUsingPlaceholderPeriod(playbackInfo, period);
        if (playbackInfo.periodId.isAd() || zIsUsingPlaceholderPeriod) {
            j = playbackInfo.requestedContentPositionUs;
        } else {
            j = playbackInfo.positionUs;
        }
        long j3 = j;
        boolean z9 = false;
        if (seekPosition != null) {
            timeline2 = timeline;
            Pair<Object, Long> pairResolveSeekPositionUs = resolveSeekPositionUs(timeline2, seekPosition, true, i, z, window, period);
            if (pairResolveSeekPositionUs == null) {
                firstWindowIndex = timeline2.getFirstWindowIndex(z);
                jLongValue = j3;
                z6 = false;
                z7 = false;
                z8 = true;
            } else {
                long j4 = seekPosition.windowPositionUs;
                Object obj2 = pairResolveSeekPositionUs.first;
                if (j4 == -9223372036854775807L) {
                    firstWindowIndex = timeline2.getPeriodByUid(obj2, period).windowIndex;
                    jLongValue = j3;
                    z6 = false;
                } else {
                    jLongValue = ((Long) pairResolveSeekPositionUs.second).longValue();
                    obj = obj2;
                    firstWindowIndex = -1;
                    z6 = true;
                }
                z7 = playbackInfo.playbackState == 4;
                z8 = false;
            }
            z4 = z6;
            z2 = z7;
            z3 = z8;
            period2 = period;
            i2 = -1;
            jConstrainValue = jLongValue;
        } else {
            timeline2 = timeline;
            if (playbackInfo.timeline.isEmpty()) {
                firstWindowIndex = timeline2.getFirstWindowIndex(z);
            } else if (timeline2.getIndexOfPeriod(obj) == -1) {
                int iResolveSubsequentPeriod = resolveSubsequentPeriod(window, period, i, z, obj, playbackInfo.timeline, timeline2);
                timeline2 = timeline2;
                if (iResolveSubsequentPeriod == -1) {
                    iResolveSubsequentPeriod = timeline2.getFirstWindowIndex(z);
                    z5 = true;
                } else {
                    z5 = false;
                }
                firstWindowIndex = iResolveSubsequentPeriod;
                obj = obj;
                period2 = period;
                i2 = -1;
                z3 = z5;
                z2 = false;
                z4 = false;
                jConstrainValue = j3;
            } else if (j3 == -9223372036854775807L) {
                firstWindowIndex = timeline2.getPeriodByUid(obj, period).windowIndex;
                obj = obj;
            } else if (zIsUsingPlaceholderPeriod) {
                playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, period);
                if (playbackInfo.timeline.getWindow(period.windowIndex, window).firstPeriodIndex == playbackInfo.timeline.getIndexOfPeriod(mediaPeriodId.periodUid)) {
                    period2 = period;
                    Pair<Object, Long> periodPositionUs = timeline2.getPeriodPositionUs(window, period2, timeline2.getPeriodByUid(obj, period).windowIndex, period.getPositionInWindowUs() + j3);
                    obj = periodPositionUs.first;
                    i2 = -1;
                    jConstrainValue = ((Long) periodPositionUs.second).longValue();
                } else {
                    period2 = period;
                    if (timeline2.getPeriodByUid(obj, period2).durationUs != -9223372036854775807L) {
                        i2 = -1;
                        jConstrainValue = Util.constrainValue(j3, 0L, period2.durationUs - 1);
                        obj = obj;
                    } else {
                        i2 = -1;
                        obj = obj;
                        jConstrainValue = j3;
                    }
                }
                firstWindowIndex = i2;
                z2 = false;
                z3 = false;
                z4 = true;
            } else {
                period2 = period;
                i2 = -1;
                obj = obj;
                firstWindowIndex = -1;
                jConstrainValue = j3;
                z2 = false;
                z3 = false;
                z4 = false;
            }
            period2 = period;
            i2 = -1;
            z2 = false;
            z3 = false;
            z4 = false;
            jConstrainValue = j3;
        }
        if (firstWindowIndex != i2) {
            Pair<Object, Long> periodPositionUs2 = timeline2.getPeriodPositionUs(window, period2, firstWindowIndex, -9223372036854775807L);
            obj = periodPositionUs2.first;
            adResumePositionUs = ((Long) periodPositionUs2.second).longValue();
            j2 = -9223372036854775807L;
        } else {
            adResumePositionUs = jConstrainValue;
            j2 = adResumePositionUs;
        }
        MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = mediaPeriodQueue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(timeline2, obj, adResumePositionUs);
        int i4 = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.nextAdGroupIndex;
        boolean z10 = i4 == i2 || ((i3 = mediaPeriodId.nextAdGroupIndex) != i2 && i4 >= i3);
        if (mediaPeriodId.periodUid.equals(obj) && !mediaPeriodId.isAd() && !mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd() && z10) {
            z9 = true;
        }
        MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
        boolean zIsIgnorableServerSideAdInsertionPeriodChange = isIgnorableServerSideAdInsertionPeriodChange(zIsUsingPlaceholderPeriod, mediaPeriodId, j3, mediaPeriodId2, timeline2.getPeriodByUid(obj, period2), j2);
        if (z9 || zIsIgnorableServerSideAdInsertionPeriodChange) {
            mediaPeriodId2 = mediaPeriodId;
        }
        if (mediaPeriodId2.isAd()) {
            if (mediaPeriodId2.equals(mediaPeriodId)) {
                adResumePositionUs = playbackInfo.positionUs;
            } else {
                timeline2.getPeriodByUid(mediaPeriodId2.periodUid, period2);
                adResumePositionUs = mediaPeriodId2.adIndexInAdGroup == period2.getFirstAdIndexToPlay(mediaPeriodId2.adGroupIndex) ? period2.getAdResumePositionUs() : 0L;
            }
        }
        return new PositionUpdateForPlaylistChange(mediaPeriodId2, adResumePositionUs, j2, z2, z3, z4);
    }

    private static boolean isIgnorableServerSideAdInsertionPeriodChange(boolean z, MediaSource.MediaPeriodId mediaPeriodId, long j, MediaSource.MediaPeriodId mediaPeriodId2, Timeline.Period period, long j2) {
        if (!z && j == j2 && mediaPeriodId.periodUid.equals(mediaPeriodId2.periodUid)) {
            if (mediaPeriodId.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex)) {
                return (period.getAdState(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 4 || period.getAdState(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 2) ? false : true;
            }
            if (mediaPeriodId2.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodId2.adGroupIndex)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isUsingPlaceholderPeriod(PlaybackInfo playbackInfo, Timeline.Period period) {
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        Timeline timeline = playbackInfo.timeline;
        return timeline.isEmpty() || timeline.getPeriodByUid(mediaPeriodId.periodUid, period).isPlaceholder;
    }

    private void updateRebufferingState(boolean z, boolean z2) {
        this.isRebuffering = z;
        this.lastRebufferRealtimeMs = (!z || z2) ? -9223372036854775807L : this.clock.elapsedRealtime();
    }

    private static boolean resolvePendingMessagePosition(PendingMessageInfo pendingMessageInfo, Timeline timeline, Timeline timeline2, int i, boolean z, Timeline.Window window, Timeline.Period period) {
        Object obj = pendingMessageInfo.resolvedPeriodUid;
        if (obj == null) {
            Pair<Object, Long> pairResolveSeekPositionUs = resolveSeekPositionUs(timeline, new SeekPosition(pendingMessageInfo.message.getTimeline(), pendingMessageInfo.message.getMediaItemIndex(), pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE ? -9223372036854775807L : Util.msToUs(pendingMessageInfo.message.getPositionMs())), false, i, z, window, period);
            if (pairResolveSeekPositionUs == null) {
                return false;
            }
            pendingMessageInfo.setResolvedPosition(timeline.getIndexOfPeriod(pairResolveSeekPositionUs.first), ((Long) pairResolveSeekPositionUs.second).longValue(), pairResolveSeekPositionUs.first);
            if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
                resolvePendingMessageEndOfStreamPosition(timeline, pendingMessageInfo, window, period);
            }
            return true;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        if (indexOfPeriod == -1) {
            return false;
        }
        if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
            resolvePendingMessageEndOfStreamPosition(timeline, pendingMessageInfo, window, period);
            return true;
        }
        pendingMessageInfo.resolvedPeriodIndex = indexOfPeriod;
        timeline2.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period);
        if (period.isPlaceholder && timeline2.getWindow(period.windowIndex, window).firstPeriodIndex == timeline2.getIndexOfPeriod(pendingMessageInfo.resolvedPeriodUid)) {
            Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, pendingMessageInfo.resolvedPeriodTimeUs + period.getPositionInWindowUs());
            pendingMessageInfo.setResolvedPosition(timeline.getIndexOfPeriod(periodPositionUs.first), ((Long) periodPositionUs.second).longValue(), periodPositionUs.first);
        }
        return true;
    }

    private static void resolvePendingMessageEndOfStreamPosition(Timeline timeline, PendingMessageInfo pendingMessageInfo, Timeline.Window window, Timeline.Period period) {
        int i = timeline.getWindow(timeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, window).lastPeriodIndex;
        Object obj = timeline.getPeriod(i, period, true).uid;
        long j = period.durationUs;
        pendingMessageInfo.setResolvedPosition(i, j != -9223372036854775807L ? j - 1 : LongCompanionObject.MAX_VALUE, obj);
    }

    private static Pair<Object, Long> resolveSeekPositionUs(Timeline timeline, SeekPosition seekPosition, boolean z, int i, boolean z2, Timeline.Window window, Timeline.Period period) {
        Pair<Object, Long> periodPositionUs;
        Timeline timeline2;
        int iResolveSubsequentPeriod;
        Timeline timeline3 = seekPosition.timeline;
        if (timeline.isEmpty()) {
            return null;
        }
        boolean zIsEmpty = timeline3.isEmpty();
        Timeline timeline4 = timeline3;
        if (zIsEmpty) {
            timeline4 = timeline;
        }
        try {
            periodPositionUs = timeline4.getPeriodPositionUs(window, period, seekPosition.windowIndex, seekPosition.windowPositionUs);
            timeline2 = timeline4;
        } catch (IndexOutOfBoundsException unused) {
        }
        if (timeline.equals(timeline2)) {
            return periodPositionUs;
        }
        if (timeline.getIndexOfPeriod(periodPositionUs.first) != -1) {
            return (timeline2.getPeriodByUid(periodPositionUs.first, period).isPlaceholder && timeline2.getWindow(period.windowIndex, window).firstPeriodIndex == timeline2.getIndexOfPeriod(periodPositionUs.first)) ? timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(periodPositionUs.first, period).windowIndex, seekPosition.windowPositionUs) : periodPositionUs;
        }
        if (z && (iResolveSubsequentPeriod = resolveSubsequentPeriod(window, period, i, z2, periodPositionUs.first, timeline2, timeline)) != -1) {
            return timeline.getPeriodPositionUs(window, period, iResolveSubsequentPeriod, -9223372036854775807L);
        }
        return null;
    }

    public static int resolveSubsequentPeriod(Timeline.Window window, Timeline.Period period, int i, boolean z, Object obj, Timeline timeline, Timeline timeline2) {
        Timeline.Period period2;
        Object obj2 = timeline.getWindow(timeline.getPeriodByUid(obj, period).windowIndex, window).uid;
        int i2 = 0;
        for (int i3 = 0; i3 < timeline2.getWindowCount(); i3++) {
            if (timeline2.getWindow(i3, window).uid.equals(obj2)) {
                return i3;
            }
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        int periodCount = timeline.getPeriodCount();
        int nextPeriodIndex = indexOfPeriod;
        int indexOfPeriod2 = -1;
        while (i2 < periodCount && indexOfPeriod2 == -1) {
            Timeline.Window window2 = window;
            period2 = period;
            int i4 = i;
            boolean z2 = z;
            Timeline timeline3 = timeline;
            nextPeriodIndex = timeline3.getNextPeriodIndex(nextPeriodIndex, period2, window2, i4, z2);
            if (nextPeriodIndex == -1) {
                break;
            }
            indexOfPeriod2 = timeline2.getIndexOfPeriod(timeline3.getUidOfPeriod(nextPeriodIndex));
            i2++;
            timeline = timeline3;
            period = period2;
            window = window2;
            i = i4;
            z = z2;
        }
        period2 = period;
        if (indexOfPeriod2 == -1) {
            return -1;
        }
        return timeline2.getPeriod(indexOfPeriod2, period2).windowIndex;
    }

    public static final class SeekPosition {
        public final Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(Timeline timeline, int i, long j) {
            this.timeline = timeline;
            this.windowIndex = i;
            this.windowPositionUs = j;
        }
    }

    public static final class PositionUpdateForPlaylistChange {
        public final boolean endPlayback;
        public final boolean forceBufferingState;
        public final MediaSource.MediaPeriodId periodId;
        public final long periodPositionUs;
        public final long requestedContentPositionUs;
        public final boolean setTargetLiveOffset;

        public PositionUpdateForPlaylistChange(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.periodId = mediaPeriodId;
            this.periodPositionUs = j;
            this.requestedContentPositionUs = j2;
            this.forceBufferingState = z;
            this.endPlayback = z2;
            this.setTargetLiveOffset = z3;
        }
    }

    public static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {
        public final PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;
        public Object resolvedPeriodUid;

        public PendingMessageInfo(PlayerMessage playerMessage) {
            this.message = playerMessage;
        }

        public void setResolvedPosition(int i, long j, Object obj) {
            this.resolvedPeriodIndex = i;
            this.resolvedPeriodTimeUs = j;
            this.resolvedPeriodUid = obj;
        }

        @Override // java.lang.Comparable
        public int compareTo(PendingMessageInfo pendingMessageInfo) {
            Object obj = this.resolvedPeriodUid;
            if ((obj == null) != (pendingMessageInfo.resolvedPeriodUid == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.resolvedPeriodIndex - pendingMessageInfo.resolvedPeriodIndex;
            return i != 0 ? i : Long.compare(this.resolvedPeriodTimeUs, pendingMessageInfo.resolvedPeriodTimeUs);
        }
    }

    public static final class MediaSourceListUpdateMessage {
        private final List<MediaSourceList.MediaSourceHolder> mediaSourceHolders;
        private final long positionUs;
        private final ShuffleOrder shuffleOrder;
        private final int windowIndex;

        private MediaSourceListUpdateMessage(List<MediaSourceList.MediaSourceHolder> list, ShuffleOrder shuffleOrder, int i, long j) {
            this.mediaSourceHolders = list;
            this.shuffleOrder = shuffleOrder;
            this.windowIndex = i;
            this.positionUs = j;
        }
    }

    public static class MoveMediaItemsMessage {
        public final int fromIndex;
        public final int newFromIndex;
        public final ShuffleOrder shuffleOrder;
        public final int toIndex;

        public MoveMediaItemsMessage(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
            this.fromIndex = i;
            this.toIndex = i2;
            this.newFromIndex = i3;
            this.shuffleOrder = shuffleOrder;
        }
    }
}
