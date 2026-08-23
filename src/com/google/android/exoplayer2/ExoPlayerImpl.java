package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.AudioBecomingNoisyManager;
import com.google.android.exoplayer2.AudioFocusManager;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.PlayerMessage;
import com.google.android.exoplayer2.StreamVolumeManager;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.MediaMetricsListener;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataOutput;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Size;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import com.google.android.exoplayer2.video.VideoListener;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.spherical.CameraMotionListener;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.DispatchQueue;

/* JADX INFO: loaded from: classes4.dex */
final class ExoPlayerImpl extends BasePlayer implements ExoPlayer {
    private final AnalyticsCollector analyticsCollector;
    private final Context applicationContext;
    private final Looper applicationLooper;
    private AudioAttributes audioAttributes;
    private final AudioBecomingNoisyManager audioBecomingNoisyManager;
    private DecoderCounters audioDecoderCounters;
    private final AudioFocusManager audioFocusManager;
    private Format audioFormat;
    private final CopyOnWriteArraySet<ExoPlayer.AudioOffloadListener> audioOffloadListeners;
    private int audioSessionId;
    private Player.Commands availableCommands;
    private final BandwidthMeter bandwidthMeter;
    private final Clock clock;
    private final ComponentListener componentListener;
    private final ConditionVariable constructorFinished;
    private CueGroup currentCueGroup;
    private final long detachSurfaceTimeoutMs;
    private DeviceInfo deviceInfo;
    final TrackSelectorResult emptyTrackSelectorResult;
    private final FrameMetadataListener frameMetadataListener;
    private boolean hasNotifiedFullWrongThreadWarning;
    private final ExoPlayerImplInternal internalPlayer;
    private boolean isPriorityTaskManagerRegistered;
    private AudioTrack keepSessionIdAudioTrack;
    private final ListenerSet<Player.Listener> listeners;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private MediaMetadata mediaMetadata;
    private final MediaSource.Factory mediaSourceFactory;
    private final List<MediaSourceHolderSnapshot> mediaSourceHolderSnapshots;
    private Surface ownedSurface;
    private boolean pauseAtEndOfMediaItems;
    private boolean pendingDiscontinuity;
    private int pendingDiscontinuityReason;
    private int pendingOperationAcks;
    private int pendingPlayWhenReadyChangeReason;
    private final Timeline.Period period;
    final Player.Commands permanentAvailableCommands;
    private PlaybackInfo playbackInfo;
    private final HandlerWrapper playbackInfoUpdateHandler;
    private final ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private boolean playerReleased;
    private MediaMetadata playlistMetadata;
    private final Renderer[] renderers;
    private int repeatMode;
    private final long seekBackIncrementMs;
    private final long seekForwardIncrementMs;
    private SeekParameters seekParameters;
    private boolean shuffleModeEnabled;
    private ShuffleOrder shuffleOrder;
    private boolean skipSilenceEnabled;
    private MediaMetadata staticAndDynamicMediaMetadata;
    private final StreamVolumeManager streamVolumeManager;
    private SurfaceHolder surfaceHolder;
    private boolean surfaceHolderSurfaceIsVideoOutput;
    private Size surfaceSize;
    private TextureView textureView;
    private boolean throwsWhenUsingWrongThread;
    private final TrackSelector trackSelector;
    private final boolean useLazyPreparation;
    private int videoChangeFrameRateStrategy;
    private DecoderCounters videoDecoderCounters;
    private Format videoFormat;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private final ArrayList<VideoListener> videoListeners = new ArrayList<>();
    private Object videoOutput;
    private int videoScalingMode;
    private VideoSize videoSize;
    private float volume;
    private final WakeLockManager wakeLockManager;
    private final WifiLockManager wifiLockManager;
    private DispatchQueue workerQueue;
    private final Player wrappingPlayer;

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPlayWhenReadyChangeReason(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    private void updatePriorityTaskManagerForIsLoadingChange(boolean z) {
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(ExoPlayer.Builder builder, Player player) {
        PlayerId playerIdRegisterMediaMetricsListener;
        ConditionVariable conditionVariable = new ConditionVariable();
        this.constructorFinished = conditionVariable;
        try {
            Log.m272i("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.3] [" + Util.DEVICE_DEBUG_INFO + "]");
            Context applicationContext = builder.context.getApplicationContext();
            this.applicationContext = applicationContext;
            AnalyticsCollector analyticsCollectorApply = builder.analyticsCollectorFunction.apply(builder.clock);
            this.analyticsCollector = analyticsCollectorApply;
            this.audioAttributes = builder.audioAttributes;
            this.videoScalingMode = builder.videoScalingMode;
            this.videoChangeFrameRateStrategy = builder.videoChangeFrameRateStrategy;
            this.skipSilenceEnabled = builder.skipSilenceEnabled;
            this.detachSurfaceTimeoutMs = builder.detachSurfaceTimeoutMs;
            ComponentListener componentListener = new ComponentListener();
            this.componentListener = componentListener;
            FrameMetadataListener frameMetadataListener = new FrameMetadataListener();
            this.frameMetadataListener = frameMetadataListener;
            Handler handler = new Handler(builder.looper);
            Renderer[] rendererArrCreateRenderers = builder.renderersFactorySupplier.get().createRenderers(handler, builder.eglContext, componentListener, componentListener, componentListener, componentListener);
            this.renderers = rendererArrCreateRenderers;
            Assertions.checkState(rendererArrCreateRenderers.length > 0);
            TrackSelector trackSelector = builder.trackSelectorSupplier.get();
            this.trackSelector = trackSelector;
            this.mediaSourceFactory = builder.mediaSourceFactorySupplier.get();
            BandwidthMeter bandwidthMeter = builder.bandwidthMeterSupplier.get();
            this.bandwidthMeter = bandwidthMeter;
            this.useLazyPreparation = builder.useLazyPreparation;
            this.seekParameters = builder.seekParameters;
            this.seekBackIncrementMs = builder.seekBackIncrementMs;
            this.seekForwardIncrementMs = builder.seekForwardIncrementMs;
            this.pauseAtEndOfMediaItems = builder.pauseAtEndOfMediaItems;
            Looper looper = builder.looper;
            this.applicationLooper = looper;
            Clock clock = builder.clock;
            this.clock = clock;
            Player player2 = player == null ? this : player;
            this.wrappingPlayer = player2;
            this.listeners = new ListenerSet<>(looper, clock, new ListenerSet.IterationFinishedEvent() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda18
                @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
                public final void invoke(Object obj, FlagSet flagSet) {
                    this.f$0.lambda$new$0((Player.Listener) obj, flagSet);
                }
            });
            this.audioOffloadListeners = new CopyOnWriteArraySet<>();
            this.mediaSourceHolderSnapshots = new ArrayList();
            this.shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(0);
            TrackSelectorResult trackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArrCreateRenderers.length], new ExoTrackSelection[rendererArrCreateRenderers.length], Tracks.EMPTY, null);
            this.emptyTrackSelectorResult = trackSelectorResult;
            this.period = new Timeline.Period();
            Player.Commands commandsBuild = new Player.Commands.Builder().addAll(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).addIf(29, trackSelector.isSetParametersSupported()).build();
            this.permanentAvailableCommands = commandsBuild;
            this.availableCommands = new Player.Commands.Builder().addAll(commandsBuild).add(4).add(10).build();
            this.playbackInfoUpdateHandler = clock.createHandler(looper, null);
            ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener = new ExoPlayerImplInternal.PlaybackInfoUpdateListener() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda19
                @Override // com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener
                public final void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
                    this.f$0.lambda$new$2(playbackInfoUpdate);
                }
            };
            this.playbackInfoUpdateListener = playbackInfoUpdateListener;
            this.playbackInfo = PlaybackInfo.createDummy(trackSelectorResult);
            analyticsCollectorApply.setPlayer(player2, looper);
            int i = Util.SDK_INT;
            if (i < 31) {
                playerIdRegisterMediaMetricsListener = new PlayerId();
            } else {
                playerIdRegisterMediaMetricsListener = Api31.registerMediaMetricsListener(applicationContext, this, builder.usePlatformDiagnostics);
            }
            ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(rendererArrCreateRenderers, trackSelector, trackSelectorResult, builder.loadControlSupplier.get(), bandwidthMeter, this.repeatMode, this.shuffleModeEnabled, analyticsCollectorApply, this.seekParameters, builder.livePlaybackSpeedControl, builder.releaseTimeoutMs, this.pauseAtEndOfMediaItems, looper, clock, playbackInfoUpdateListener, playerIdRegisterMediaMetricsListener, builder.playbackLooper);
            this.internalPlayer = exoPlayerImplInternal;
            this.volume = 1.0f;
            this.repeatMode = 0;
            MediaMetadata mediaMetadata = MediaMetadata.EMPTY;
            this.mediaMetadata = mediaMetadata;
            this.playlistMetadata = mediaMetadata;
            this.staticAndDynamicMediaMetadata = mediaMetadata;
            this.maskingWindowIndex = -1;
            if (i < 21) {
                this.audioSessionId = initializeKeepSessionIdAudioTrack(0);
            } else {
                this.audioSessionId = Util.generateAudioSessionIdV21(applicationContext);
            }
            this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
            this.throwsWhenUsingWrongThread = true;
            addListener(analyticsCollectorApply);
            bandwidthMeter.addEventListener(new Handler(looper), analyticsCollectorApply);
            addAudioOffloadListener(componentListener);
            long j = builder.foregroundModeTimeoutMs;
            if (j > 0) {
                exoPlayerImplInternal.experimentalSetForegroundModeTimeoutMs(j);
            }
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(builder.context, handler, componentListener);
            this.audioBecomingNoisyManager = audioBecomingNoisyManager;
            audioBecomingNoisyManager.setEnabled(builder.handleAudioBecomingNoisy);
            AudioFocusManager audioFocusManager = new AudioFocusManager(builder.context, handler, componentListener);
            this.audioFocusManager = audioFocusManager;
            audioFocusManager.setAudioAttributes(builder.handleAudioFocus ? this.audioAttributes : null);
            StreamVolumeManager streamVolumeManager = new StreamVolumeManager(builder.context, handler, componentListener);
            this.streamVolumeManager = streamVolumeManager;
            streamVolumeManager.setStreamType(Util.getStreamTypeForAudioUsage(this.audioAttributes.usage));
            WakeLockManager wakeLockManager = new WakeLockManager(builder.context);
            this.wakeLockManager = wakeLockManager;
            wakeLockManager.setEnabled(builder.wakeMode != 0);
            WifiLockManager wifiLockManager = new WifiLockManager(builder.context);
            this.wifiLockManager = wifiLockManager;
            wifiLockManager.setEnabled(builder.wakeMode == 2);
            this.deviceInfo = createDeviceInfo(streamVolumeManager);
            this.videoSize = VideoSize.UNKNOWN;
            this.surfaceSize = Size.UNKNOWN;
            trackSelector.setAudioAttributes(this.audioAttributes);
            sendRendererMessage(1, 10, Integer.valueOf(this.audioSessionId));
            sendRendererMessage(2, 10, Integer.valueOf(this.audioSessionId));
            sendRendererMessage(1, 3, this.audioAttributes);
            sendRendererMessage(2, 4, Integer.valueOf(this.videoScalingMode));
            sendRendererMessage(2, 5, Integer.valueOf(this.videoChangeFrameRateStrategy));
            sendRendererMessage(1, 9, Boolean.valueOf(this.skipSilenceEnabled));
            sendRendererMessage(2, 7, frameMetadataListener);
            sendRendererMessage(6, 8, frameMetadataListener);
            conditionVariable.open();
        } catch (Throwable th) {
            this.constructorFinished.open();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Player.Listener listener, FlagSet flagSet) {
        listener.onEvents(this.wrappingPlayer, new Player.Events(flagSet));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(final ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.playbackInfoUpdateHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(playbackInfoUpdate);
            }
        });
    }

    public boolean experimentalIsSleepingForOffload() {
        verifyApplicationThread();
        return this.playbackInfo.sleepingForOffload;
    }

    @Override // com.google.android.exoplayer2.Player
    public Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    public void addAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.audioOffloadListeners.add(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public Player.Commands getAvailableCommands() {
        verifyApplicationThread();
        return this.availableCommands;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackState() {
        verifyApplicationThread();
        return this.playbackInfo.playbackState;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackSuppressionReason() {
        verifyApplicationThread();
        return this.playbackInfo.playbackSuppressionReason;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setWorkerQueue(DispatchQueue dispatchQueue) {
        this.workerQueue = dispatchQueue;
    }

    @Override // com.google.android.exoplayer2.Player
    public ExoPlaybackException getPlayerError() {
        verifyApplicationThread();
        return this.playbackInfo.playbackError;
    }

    @Override // com.google.android.exoplayer2.Player
    public void prepare() {
        verifyApplicationThread();
        boolean playWhenReady = getPlayWhenReady();
        int iUpdateAudioFocus = this.audioFocusManager.updateAudioFocus(playWhenReady, 2);
        updatePlayWhenReady(playWhenReady, iUpdateAudioFocus, getPlayWhenReadyChangeReason(playWhenReady, iUpdateAudioFocus));
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != 1) {
            return;
        }
        PlaybackInfo playbackInfoCopyWithPlaybackError = playbackInfo.copyWithPlaybackError(null);
        PlaybackInfo playbackInfoCopyWithPlaybackState = playbackInfoCopyWithPlaybackError.copyWithPlaybackState(playbackInfoCopyWithPlaybackError.timeline.isEmpty() ? 4 : 2);
        this.pendingOperationAcks++;
        this.internalPlayer.prepare();
        updatePlaybackInfo(playbackInfoCopyWithPlaybackState, 1, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, boolean z) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource), z);
    }

    public void setMediaSources(List<MediaSource> list) {
        verifyApplicationThread();
        setMediaSources(list, true);
    }

    public void setMediaSources(List<MediaSource> list, boolean z) {
        verifyApplicationThread();
        setMediaSourcesInternal(list, -1, -9223372036854775807L, z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addMediaItems(int i, List<MediaItem> list) {
        verifyApplicationThread();
        addMediaSources(i, createMediaSources(list));
    }

    public void addMediaSources(int i, List<MediaSource> list) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0);
        int iMin = Math.min(i, this.mediaSourceHolderSnapshots.size());
        Timeline currentTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        List<MediaSourceList.MediaSourceHolder> listAddMediaSourceHolders = addMediaSourceHolders(iMin, list);
        Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionUsAfterTimelineChanged(currentTimeline, timelineCreateMaskingTimeline));
        this.internalPlayer.addMediaSources(iMin, listAddMediaSourceHolders, this.shuffleOrder);
        updatePlaybackInfo(playbackInfoMaskTimelineAndPosition, 0, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeMediaItems(int i, int i2) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0 && i2 >= i);
        int size = this.mediaSourceHolderSnapshots.size();
        int iMin = Math.min(i2, size);
        if (i >= size || i == iMin) {
            return;
        }
        PlaybackInfo playbackInfoRemoveMediaItemsInternal = removeMediaItemsInternal(i, iMin);
        updatePlaybackInfo(playbackInfoRemoveMediaItemsInternal, 0, 1, false, !playbackInfoRemoveMediaItemsInternal.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid), 4, getCurrentPositionUsInternal(playbackInfoRemoveMediaItemsInternal), -1, false);
    }

    @Override // com.google.android.exoplayer2.Player
    public void moveMediaItems(int i, int i2, int i3) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0 && i <= i2 && i3 >= 0);
        int size = this.mediaSourceHolderSnapshots.size();
        int iMin = Math.min(i2, size);
        int iMin2 = Math.min(i3, size - (iMin - i));
        if (i >= size || i == iMin || i == iMin2) {
            return;
        }
        Timeline currentTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        Util.moveItems(this.mediaSourceHolderSnapshots, i, iMin, iMin2);
        Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionUsAfterTimelineChanged(currentTimeline, timelineCreateMaskingTimeline));
        this.internalPlayer.moveMediaSources(i, iMin, iMin2, this.shuffleOrder);
        updatePlaybackInfo(playbackInfoMaskTimelineAndPosition, 0, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlayWhenReady(boolean z) {
        verifyApplicationThread();
        int iUpdateAudioFocus = this.audioFocusManager.updateAudioFocus(z, getPlaybackState());
        updatePlayWhenReady(z, iUpdateAudioFocus, getPlayWhenReadyChangeReason(z, iUpdateAudioFocus));
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getPlayWhenReady() {
        verifyApplicationThread();
        return this.playbackInfo.playWhenReady;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setRepeatMode(final int i) {
        verifyApplicationThread();
        if (this.repeatMode != i) {
            this.repeatMode = i;
            this.internalPlayer.setRepeatMode(i);
            this.listeners.queueEvent(8, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda20
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onRepeatModeChanged(i);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRepeatMode() {
        verifyApplicationThread();
        return this.repeatMode;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setShuffleModeEnabled(final boolean z) {
        verifyApplicationThread();
        if (this.shuffleModeEnabled != z) {
            this.shuffleModeEnabled = z;
            this.internalPlayer.setShuffleModeEnabled(z);
            this.listeners.queueEvent(9, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda23
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onShuffleModeEnabledChanged(z);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getShuffleModeEnabled() {
        verifyApplicationThread();
        return this.shuffleModeEnabled;
    }

    @Override // com.google.android.exoplayer2.BasePlayer
    public void seekTo(int i, long j, int i2, boolean z) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0);
        this.analyticsCollector.notifySeekStarted();
        Timeline timeline = this.playbackInfo.timeline;
        if (timeline.isEmpty() || i < timeline.getWindowCount()) {
            this.pendingOperationAcks++;
            if (isPlayingAd()) {
                Log.m274w("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.playbackInfo);
                playbackInfoUpdate.incrementPendingOperationAcks(1);
                this.playbackInfoUpdateListener.onPlaybackInfoUpdate(playbackInfoUpdate);
                return;
            }
            int i3 = getPlaybackState() != 1 ? 2 : 1;
            int currentMediaItemIndex = getCurrentMediaItemIndex();
            PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo.copyWithPlaybackState(i3), timeline, maskWindowPositionMsOrGetPeriodPositionUs(timeline, i, j));
            this.internalPlayer.seekTo(timeline, i, Util.msToUs(j));
            updatePlaybackInfo(playbackInfoMaskTimelineAndPosition, 0, 1, true, true, 1, getCurrentPositionUsInternal(playbackInfoMaskTimelineAndPosition), currentMediaItemIndex, z);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekBackIncrement() {
        verifyApplicationThread();
        return this.seekBackIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekForwardIncrement() {
        verifyApplicationThread();
        return this.seekForwardIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getMaxSeekToPreviousPosition() {
        verifyApplicationThread();
        return 3000L;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        verifyApplicationThread();
        if (playbackParameters == null) {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        if (this.playbackInfo.playbackParameters.equals(playbackParameters)) {
            return;
        }
        PlaybackInfo playbackInfoCopyWithPlaybackParameters = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        this.pendingOperationAcks++;
        this.internalPlayer.setPlaybackParameters(playbackParameters);
        updatePlaybackInfo(playbackInfoCopyWithPlaybackParameters, 0, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.Player
    public PlaybackParameters getPlaybackParameters() {
        verifyApplicationThread();
        return this.playbackInfo.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setSeekParameters(SeekParameters seekParameters) {
        verifyApplicationThread();
        if (seekParameters == null) {
            seekParameters = SeekParameters.DEFAULT;
        }
        if (this.seekParameters.equals(seekParameters)) {
            return;
        }
        this.seekParameters = seekParameters;
        this.internalPlayer.setSeekParameters(seekParameters);
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop() {
        verifyApplicationThread();
        stop(false);
    }

    public void stop(boolean z) {
        verifyApplicationThread();
        this.audioFocusManager.updateAudioFocus(getPlayWhenReady(), 1);
        stopInternal(z, null);
        this.currentCueGroup = new CueGroup(ImmutableList.of(), this.playbackInfo.positionUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public void release() {
        AudioTrack audioTrack;
        Log.m272i("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.3] [" + Util.DEVICE_DEBUG_INFO + "] [" + ExoPlayerLibraryInfo.registeredModules() + "]");
        verifyApplicationThread();
        if (Util.SDK_INT < 21 && (audioTrack = this.keepSessionIdAudioTrack) != null) {
            audioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        this.audioBecomingNoisyManager.setEnabled(false);
        this.streamVolumeManager.release();
        this.wakeLockManager.setStayAwake(false);
        this.wifiLockManager.setStayAwake(false);
        this.audioFocusManager.release();
        if (!this.internalPlayer.release()) {
            this.listeners.sendEvent(10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
                }
            });
        }
        this.listeners.release();
        this.playbackInfoUpdateHandler.removeCallbacksAndMessages(null);
        this.bandwidthMeter.removeEventListener(this.analyticsCollector);
        PlaybackInfo playbackInfoCopyWithPlaybackState = this.playbackInfo.copyWithPlaybackState(1);
        this.playbackInfo = playbackInfoCopyWithPlaybackState;
        PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId = playbackInfoCopyWithPlaybackState.copyWithLoadingMediaPeriodId(playbackInfoCopyWithPlaybackState.periodId);
        this.playbackInfo = playbackInfoCopyWithLoadingMediaPeriodId;
        playbackInfoCopyWithLoadingMediaPeriodId.bufferedPositionUs = playbackInfoCopyWithLoadingMediaPeriodId.positionUs;
        this.playbackInfo.totalBufferedDurationUs = 0L;
        this.analyticsCollector.release();
        this.trackSelector.release();
        removeSurfaceCallbacks();
        Surface surface = this.ownedSurface;
        if (surface != null) {
            surface.release();
            this.ownedSurface = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkNotNull(null));
            throw null;
        }
        this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
        this.playerReleased = true;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        verifyApplicationThread();
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingPeriodIndex;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.getIndexOfPeriod(playbackInfo.periodId.periodUid);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentMediaItemIndex() {
        verifyApplicationThread();
        int currentWindowIndexInternal = getCurrentWindowIndexInternal();
        if (currentWindowIndexInternal == -1) {
            return 0;
        }
        return currentWindowIndexInternal;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getDuration() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
            playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
            return Util.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
        }
        return getContentDuration();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getCurrentPosition() {
        verifyApplicationThread();
        return Util.usToMs(getCurrentPositionUsInternal(this.playbackInfo));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getBufferedPosition() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            if (playbackInfo.loadingMediaPeriodId.equals(playbackInfo.periodId)) {
                return Util.usToMs(this.playbackInfo.bufferedPositionUs);
            }
            return getDuration();
        }
        return getContentBufferedPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getTotalBufferedDuration() {
        verifyApplicationThread();
        return Util.usToMs(this.playbackInfo.totalBufferedDurationUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isPlayingAd() {
        verifyApplicationThread();
        return this.playbackInfo.periodId.isAd();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentPosition() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period);
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            if (playbackInfo2.requestedContentPositionUs == -9223372036854775807L) {
                return playbackInfo2.timeline.getWindow(getCurrentMediaItemIndex(), this.window).getDefaultPositionMs();
            }
            return this.period.getPositionInWindowMs() + Util.usToMs(this.playbackInfo.requestedContentPositionUs);
        }
        return getCurrentPosition();
    }

    public long getContentBufferedPosition() {
        verifyApplicationThread();
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowPositionMs;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.loadingMediaPeriodId.windowSequenceNumber != playbackInfo.periodId.windowSequenceNumber) {
            return playbackInfo.timeline.getWindow(getCurrentMediaItemIndex(), this.window).getDurationMs();
        }
        long j = playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.isAd()) {
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            Timeline.Period periodByUid = playbackInfo2.timeline.getPeriodByUid(playbackInfo2.loadingMediaPeriodId.periodUid, this.period);
            long adGroupTimeUs = periodByUid.getAdGroupTimeUs(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            j = adGroupTimeUs == Long.MIN_VALUE ? periodByUid.durationUs : adGroupTimeUs;
        }
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        return Util.usToMs(periodPositionUsToWindowPositionUs(playbackInfo3.timeline, playbackInfo3.loadingMediaPeriodId, j));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Renderer getRenderer(int i) {
        verifyApplicationThread();
        return this.renderers[i];
    }

    @Override // com.google.android.exoplayer2.Player
    public Tracks getCurrentTracks() {
        verifyApplicationThread();
        return this.playbackInfo.trackSelectorResult.tracks;
    }

    @Override // com.google.android.exoplayer2.Player
    public Timeline getCurrentTimeline() {
        verifyApplicationThread();
        return this.playbackInfo.timeline;
    }

    @Override // com.google.android.exoplayer2.Player
    public VideoSize getVideoSize() {
        verifyApplicationThread();
        return this.videoSize;
    }

    public void clearVideoSurface() {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(null);
        maybeNotifySurfaceSizeChanged(0, 0);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurface(Surface surface) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(surface);
        int i = surface == null ? 0 : -1;
        maybeNotifySurfaceSizeChanged(i, i);
    }

    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.surfaceHolderSurfaceIsVideoOutput = true;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            setVideoOutputInternal(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            maybeNotifySurfaceSizeChanged(surfaceFrame.width(), surfaceFrame.height());
        } else {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        verifyApplicationThread();
        setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.textureView = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.m274w("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        } else {
            setSurfaceTextureInternal(surfaceTexture);
            maybeNotifySurfaceSizeChanged(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null || textureView != this.textureView) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setAudioAttributes(final AudioAttributes audioAttributes, boolean z) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        if (!Util.areEqual(this.audioAttributes, audioAttributes)) {
            this.audioAttributes = audioAttributes;
            sendRendererMessage(1, 3, audioAttributes);
            this.streamVolumeManager.setStreamType(Util.getStreamTypeForAudioUsage(audioAttributes.usage));
            this.listeners.queueEvent(20, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onAudioAttributesChanged(audioAttributes);
                }
            });
        }
        this.audioFocusManager.setAudioAttributes(z ? audioAttributes : null);
        this.trackSelector.setAudioAttributes(audioAttributes);
        boolean playWhenReady = getPlayWhenReady();
        int iUpdateAudioFocus = this.audioFocusManager.updateAudioFocus(playWhenReady, getPlaybackState());
        updatePlayWhenReady(playWhenReady, iUpdateAudioFocus, getPlayWhenReadyChangeReason(playWhenReady, iUpdateAudioFocus));
        this.listeners.flushEvents();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVolume(float f) {
        verifyApplicationThread();
        final float fConstrainValue = Util.constrainValue(f, 0.0f, 1.0f);
        if (this.volume == fConstrainValue) {
            return;
        }
        this.volume = fConstrainValue;
        sendVolumeToRenderers();
        this.listeners.sendEvent(22, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda17
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onVolumeChanged(fConstrainValue);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public float getVolume() {
        verifyApplicationThread();
        return this.volume;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAnalyticsListener(AnalyticsListener analyticsListener) {
        this.analyticsCollector.addListener((AnalyticsListener) Assertions.checkNotNull(analyticsListener));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Format getVideoFormat() {
        verifyApplicationThread();
        return this.videoFormat;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        verifyApplicationThread();
        this.videoFrameMetadataListener = videoFrameMetadataListener;
        createMessageInternal(this.frameMetadataListener).setType(7).setPayload(videoFrameMetadataListener).send();
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(Player.Listener listener) {
        this.listeners.add((Player.Listener) Assertions.checkNotNull(listener));
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(Player.Listener listener) {
        verifyApplicationThread();
        this.listeners.remove((Player.Listener) Assertions.checkNotNull(listener));
    }

    private void stopInternal(boolean z, ExoPlaybackException exoPlaybackException) {
        PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId;
        if (z) {
            playbackInfoCopyWithLoadingMediaPeriodId = removeMediaItemsInternal(0, this.mediaSourceHolderSnapshots.size()).copyWithPlaybackError(null);
        } else {
            PlaybackInfo playbackInfo = this.playbackInfo;
            playbackInfoCopyWithLoadingMediaPeriodId = playbackInfo.copyWithLoadingMediaPeriodId(playbackInfo.periodId);
            playbackInfoCopyWithLoadingMediaPeriodId.bufferedPositionUs = playbackInfoCopyWithLoadingMediaPeriodId.positionUs;
            playbackInfoCopyWithLoadingMediaPeriodId.totalBufferedDurationUs = 0L;
        }
        PlaybackInfo playbackInfoCopyWithPlaybackState = playbackInfoCopyWithLoadingMediaPeriodId.copyWithPlaybackState(1);
        if (exoPlaybackException != null) {
            playbackInfoCopyWithPlaybackState = playbackInfoCopyWithPlaybackState.copyWithPlaybackError(exoPlaybackException);
        }
        PlaybackInfo playbackInfo2 = playbackInfoCopyWithPlaybackState;
        this.pendingOperationAcks++;
        this.internalPlayer.stop();
        updatePlaybackInfo(playbackInfo2, 0, 1, false, playbackInfo2.timeline.isEmpty() && !this.playbackInfo.timeline.isEmpty(), 4, getCurrentPositionUsInternal(playbackInfo2), -1, false);
    }

    private int getCurrentWindowIndexInternal() {
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowIndex;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    private long getCurrentPositionUsInternal(PlaybackInfo playbackInfo) {
        if (playbackInfo.timeline.isEmpty()) {
            return Util.msToUs(this.maskingWindowPositionMs);
        }
        if (playbackInfo.periodId.isAd()) {
            return playbackInfo.positionUs;
        }
        return periodPositionUsToWindowPositionUs(playbackInfo.timeline, playbackInfo.periodId, playbackInfo.positionUs);
    }

    private List<MediaSource> createMediaSources(List<MediaItem> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(this.mediaSourceFactory.createMediaSource(list.get(i)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handlePlaybackInfo, reason: merged with bridge method [inline-methods] */
    public void lambda$new$1(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        long jPeriodPositionUsToWindowPositionUs;
        int i = this.pendingOperationAcks - playbackInfoUpdate.operationAcks;
        this.pendingOperationAcks = i;
        boolean z = true;
        if (playbackInfoUpdate.positionDiscontinuity) {
            this.pendingDiscontinuityReason = playbackInfoUpdate.discontinuityReason;
            this.pendingDiscontinuity = true;
        }
        if (playbackInfoUpdate.hasPlayWhenReadyChangeReason) {
            this.pendingPlayWhenReadyChangeReason = playbackInfoUpdate.playWhenReadyChangeReason;
        }
        if (i == 0) {
            Timeline timeline = playbackInfoUpdate.playbackInfo.timeline;
            if (!this.playbackInfo.timeline.isEmpty() && timeline.isEmpty()) {
                this.maskingWindowIndex = -1;
                this.maskingWindowPositionMs = 0L;
                this.maskingPeriodIndex = 0;
            }
            if (!timeline.isEmpty()) {
                List<Timeline> childTimelines = ((PlaylistTimeline) timeline).getChildTimelines();
                Assertions.checkState(childTimelines.size() == this.mediaSourceHolderSnapshots.size());
                for (int i2 = 0; i2 < childTimelines.size(); i2++) {
                    this.mediaSourceHolderSnapshots.get(i2).timeline = childTimelines.get(i2);
                }
            }
            long j = -9223372036854775807L;
            if (this.pendingDiscontinuity) {
                if (playbackInfoUpdate.playbackInfo.periodId.equals(this.playbackInfo.periodId) && playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs == this.playbackInfo.positionUs) {
                    z = false;
                }
                if (z) {
                    if (timeline.isEmpty() || playbackInfoUpdate.playbackInfo.periodId.isAd()) {
                        jPeriodPositionUsToWindowPositionUs = playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs;
                    } else {
                        PlaybackInfo playbackInfo = playbackInfoUpdate.playbackInfo;
                        jPeriodPositionUsToWindowPositionUs = periodPositionUsToWindowPositionUs(timeline, playbackInfo.periodId, playbackInfo.discontinuityStartPositionUs);
                    }
                    j = jPeriodPositionUsToWindowPositionUs;
                }
            } else {
                z = false;
            }
            long j2 = j;
            this.pendingDiscontinuity = false;
            updatePlaybackInfo(playbackInfoUpdate.playbackInfo, 1, this.pendingPlayWhenReadyChangeReason, false, z, this.pendingDiscontinuityReason, j2, -1, false);
        }
    }

    private void updatePlaybackInfo(final PlaybackInfo playbackInfo, final int i, final int i2, boolean z, boolean z2, final int i3, long j, int i4, boolean z3) {
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        this.playbackInfo = playbackInfo;
        boolean zEquals = playbackInfo2.timeline.equals(playbackInfo.timeline);
        Pair<Boolean, Integer> pairEvaluateMediaItemTransitionReason = evaluateMediaItemTransitionReason(playbackInfo, playbackInfo2, z2, i3, !zEquals, z3);
        boolean zBooleanValue = ((Boolean) pairEvaluateMediaItemTransitionReason.first).booleanValue();
        final int iIntValue = ((Integer) pairEvaluateMediaItemTransitionReason.second).intValue();
        MediaMetadata mediaMetadataBuildUpdatedMediaMetadata = this.mediaMetadata;
        if (zBooleanValue) {
            mediaItem = playbackInfo.timeline.isEmpty() ? null : playbackInfo.timeline.getWindow(playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).mediaItem;
            this.staticAndDynamicMediaMetadata = MediaMetadata.EMPTY;
        }
        if (zBooleanValue || !playbackInfo2.staticMetadata.equals(playbackInfo.staticMetadata)) {
            this.staticAndDynamicMediaMetadata = this.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(playbackInfo.staticMetadata).build();
            mediaMetadataBuildUpdatedMediaMetadata = buildUpdatedMediaMetadata();
        }
        boolean zEquals2 = mediaMetadataBuildUpdatedMediaMetadata.equals(this.mediaMetadata);
        this.mediaMetadata = mediaMetadataBuildUpdatedMediaMetadata;
        boolean z4 = playbackInfo2.playWhenReady != playbackInfo.playWhenReady;
        boolean z5 = playbackInfo2.playbackState != playbackInfo.playbackState;
        if (z5 || z4) {
            updateWakeAndWifiLock();
        }
        boolean z6 = playbackInfo2.isLoading;
        boolean z7 = playbackInfo.isLoading;
        boolean z8 = z6 != z7;
        if (z8) {
            updatePriorityTaskManagerForIsLoadingChange(z7);
        }
        if (!zEquals) {
            this.listeners.queueEvent(0, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda2
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.Listener listener = (Player.Listener) obj;
                    listener.onTimelineChanged(playbackInfo.timeline, i);
                }
            });
        }
        if (z2) {
            final Player.PositionInfo previousPositionInfo = getPreviousPositionInfo(i3, playbackInfo2, i4);
            final Player.PositionInfo positionInfo = getPositionInfo(j);
            this.listeners.queueEvent(11, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.$r8$lambda$YNZk3PDWCQ3rHCOhwWJrN7tp8Ks(i3, previousPositionInfo, positionInfo, (Player.Listener) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.listeners.queueEvent(1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda9
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaItemTransition(mediaItem, iIntValue);
                }
            });
        }
        if (playbackInfo2.playbackError != playbackInfo.playbackError) {
            this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda10
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerErrorChanged(playbackInfo.playbackError);
                }
            });
            if (playbackInfo.playbackError != null) {
                this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda11
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.Listener) obj).onPlayerError(playbackInfo.playbackError);
                    }
                });
            }
        }
        TrackSelectorResult trackSelectorResult = playbackInfo2.trackSelectorResult;
        TrackSelectorResult trackSelectorResult2 = playbackInfo.trackSelectorResult;
        if (trackSelectorResult != trackSelectorResult2) {
            this.trackSelector.onSelectionActivated(trackSelectorResult2.info);
            this.listeners.queueEvent(2, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda12
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTracksChanged(playbackInfo.trackSelectorResult.tracks);
                }
            });
        }
        if (!zEquals2) {
            final MediaMetadata mediaMetadata = this.mediaMetadata;
            this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda13
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaMetadataChanged(mediaMetadata);
                }
            });
        }
        if (z8) {
            this.listeners.queueEvent(3, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda14
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.$r8$lambda$t9bSi54qKWXY0lmR8djL_OM7LL8(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (z5 || z4) {
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda15
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    PlaybackInfo playbackInfo3 = playbackInfo;
                    ((Player.Listener) obj).onPlayerStateChanged(playbackInfo3.playWhenReady, playbackInfo3.playbackState);
                }
            });
        }
        if (z5) {
            this.listeners.queueEvent(4, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda16
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackStateChanged(playbackInfo.playbackState);
                }
            });
        }
        if (z4) {
            this.listeners.queueEvent(5, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda3
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.Listener listener = (Player.Listener) obj;
                    listener.onPlayWhenReadyChanged(playbackInfo.playWhenReady, i2);
                }
            });
        }
        if (playbackInfo2.playbackSuppressionReason != playbackInfo.playbackSuppressionReason) {
            this.listeners.queueEvent(6, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda4
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackSuppressionReasonChanged(playbackInfo.playbackSuppressionReason);
                }
            });
        }
        if (isPlaying(playbackInfo2) != isPlaying(playbackInfo)) {
            this.listeners.queueEvent(7, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda5
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onIsPlayingChanged(ExoPlayerImpl.isPlaying(playbackInfo));
                }
            });
        }
        if (!playbackInfo2.playbackParameters.equals(playbackInfo.playbackParameters)) {
            this.listeners.queueEvent(12, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda6
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackParametersChanged(playbackInfo.playbackParameters);
                }
            });
        }
        if (z) {
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda7
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSeekProcessed();
                }
            });
        }
        updateAvailableCommands();
        this.listeners.flushEvents();
        if (playbackInfo2.sleepingForOffload != playbackInfo.sleepingForOffload) {
            Iterator<ExoPlayer.AudioOffloadListener> it = this.audioOffloadListeners.iterator();
            while (it.hasNext()) {
                it.next().onExperimentalSleepingForOffloadChanged(playbackInfo.sleepingForOffload);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$YNZk3PDWCQ3rHCOhwWJrN7tp8Ks(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
    }

    public static /* synthetic */ void $r8$lambda$t9bSi54qKWXY0lmR8djL_OM7LL8(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onLoadingChanged(playbackInfo.isLoading);
        listener.onIsLoadingChanged(playbackInfo.isLoading);
    }

    private Player.PositionInfo getPreviousPositionInfo(int i, PlaybackInfo playbackInfo, int i2) {
        int i3;
        Object obj;
        MediaItem mediaItem;
        Object obj2;
        int i4;
        long requestedContentPositionUs;
        long requestedContentPositionUs2;
        Timeline.Period period = new Timeline.Period();
        if (playbackInfo.timeline.isEmpty()) {
            i3 = i2;
            obj = null;
            mediaItem = null;
            obj2 = null;
            i4 = -1;
        } else {
            Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.getPeriodByUid(obj3, period);
            int i5 = period.windowIndex;
            int indexOfPeriod = playbackInfo.timeline.getIndexOfPeriod(obj3);
            Object obj4 = playbackInfo.timeline.getWindow(i5, this.window).uid;
            mediaItem = this.window.mediaItem;
            obj2 = obj3;
            i4 = indexOfPeriod;
            obj = obj4;
            i3 = i5;
        }
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        if (i == 0) {
            boolean zIsAd = mediaPeriodId.isAd();
            MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
            if (zIsAd) {
                requestedContentPositionUs = period.getAdDurationUs(mediaPeriodId2.adGroupIndex, mediaPeriodId2.adIndexInAdGroup);
                requestedContentPositionUs2 = getRequestedContentPositionUs(playbackInfo);
            } else {
                if (mediaPeriodId2.nextAdGroupIndex != -1) {
                    requestedContentPositionUs = getRequestedContentPositionUs(this.playbackInfo);
                } else {
                    requestedContentPositionUs = period.positionInWindowUs + period.durationUs;
                }
                requestedContentPositionUs2 = requestedContentPositionUs;
            }
        } else if (mediaPeriodId.isAd()) {
            requestedContentPositionUs = playbackInfo.positionUs;
            requestedContentPositionUs2 = getRequestedContentPositionUs(playbackInfo);
        } else {
            requestedContentPositionUs = period.positionInWindowUs + playbackInfo.positionUs;
            requestedContentPositionUs2 = requestedContentPositionUs;
        }
        long jUsToMs = Util.usToMs(requestedContentPositionUs);
        long jUsToMs2 = Util.usToMs(requestedContentPositionUs2);
        MediaSource.MediaPeriodId mediaPeriodId3 = playbackInfo.periodId;
        return new Player.PositionInfo(obj, i3, mediaItem, obj2, i4, jUsToMs, jUsToMs2, mediaPeriodId3.adGroupIndex, mediaPeriodId3.adIndexInAdGroup);
    }

    private Player.PositionInfo getPositionInfo(long j) {
        Object obj;
        int indexOfPeriod;
        MediaItem mediaItem;
        Object obj2;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        if (this.playbackInfo.timeline.isEmpty()) {
            obj = null;
            indexOfPeriod = -1;
            mediaItem = null;
            obj2 = null;
        } else {
            PlaybackInfo playbackInfo = this.playbackInfo;
            Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.getPeriodByUid(obj3, this.period);
            indexOfPeriod = this.playbackInfo.timeline.getIndexOfPeriod(obj3);
            obj2 = obj3;
            obj = this.playbackInfo.timeline.getWindow(currentMediaItemIndex, this.window).uid;
            mediaItem = this.window.mediaItem;
        }
        int i = indexOfPeriod;
        long jUsToMs = Util.usToMs(j);
        long jUsToMs2 = this.playbackInfo.periodId.isAd() ? Util.usToMs(getRequestedContentPositionUs(this.playbackInfo)) : jUsToMs;
        MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
        return new Player.PositionInfo(obj, currentMediaItemIndex, mediaItem, obj2, i, jUsToMs, jUsToMs2, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
    }

    private static long getRequestedContentPositionUs(PlaybackInfo playbackInfo) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, period);
        if (playbackInfo.requestedContentPositionUs == -9223372036854775807L) {
            return playbackInfo.timeline.getWindow(period.windowIndex, window).getDefaultPositionUs();
        }
        return period.getPositionInWindowUs() + playbackInfo.requestedContentPositionUs;
    }

    private Pair<Boolean, Integer> evaluateMediaItemTransitionReason(PlaybackInfo playbackInfo, PlaybackInfo playbackInfo2, boolean z, int i, boolean z2, boolean z3) {
        Timeline timeline = playbackInfo2.timeline;
        Timeline timeline2 = playbackInfo.timeline;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i2 = 3;
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (timeline.getWindow(timeline.getPeriodByUid(playbackInfo2.periodId.periodUid, this.period).windowIndex, this.window).uid.equals(timeline2.getWindow(timeline2.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).uid)) {
            if (z && i == 0 && playbackInfo2.periodId.windowSequenceNumber < playbackInfo.periodId.windowSequenceNumber) {
                return new Pair<>(Boolean.TRUE, 0);
            }
            if (z && i == 1 && z3) {
                return new Pair<>(Boolean.TRUE, 2);
            }
            return new Pair<>(Boolean.FALSE, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            MethodWriter$$ExternalSyntheticBUOutline0.m863m();
            return null;
        }
        return new Pair<>(Boolean.TRUE, Integer.valueOf(i2));
    }

    private void updateAvailableCommands() {
        Player.Commands commands = this.availableCommands;
        Player.Commands availableCommands = Util.getAvailableCommands(this.wrappingPlayer, this.permanentAvailableCommands);
        this.availableCommands = availableCommands;
        if (availableCommands.equals(commands)) {
            return;
        }
        this.listeners.queueEvent(13, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda26
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                this.f$0.lambda$updateAvailableCommands$26((Player.Listener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAvailableCommands$26(Player.Listener listener) {
        listener.onAvailableCommandsChanged(this.availableCommands);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setMediaSourcesInternal(List<MediaSource> list, int i, long j, boolean z) {
        long j2;
        int i2;
        int i3;
        int firstWindowIndex = i;
        int currentWindowIndexInternal = getCurrentWindowIndexInternal();
        long currentPosition = getCurrentPosition();
        this.pendingOperationAcks++;
        if (!this.mediaSourceHolderSnapshots.isEmpty()) {
            removeMediaSourceHolders(0, this.mediaSourceHolderSnapshots.size());
        }
        List<MediaSourceList.MediaSourceHolder> listAddMediaSourceHolders = addMediaSourceHolders(0, list);
        Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        if (!timelineCreateMaskingTimeline.isEmpty() && firstWindowIndex >= timelineCreateMaskingTimeline.getWindowCount()) {
            throw new IllegalSeekPositionException(timelineCreateMaskingTimeline, firstWindowIndex, j);
        }
        if (z) {
            firstWindowIndex = timelineCreateMaskingTimeline.getFirstWindowIndex(this.shuffleModeEnabled);
            j2 = -9223372036854775807L;
        } else {
            if (firstWindowIndex == -1) {
                i2 = currentWindowIndexInternal;
                j2 = currentPosition;
                PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, maskWindowPositionMsOrGetPeriodPositionUs(timelineCreateMaskingTimeline, i2, j2));
                i3 = playbackInfoMaskTimelineAndPosition.playbackState;
                if (i2 != -1 && i3 != 1) {
                    i3 = (!timelineCreateMaskingTimeline.isEmpty() || i2 >= timelineCreateMaskingTimeline.getWindowCount()) ? 4 : 2;
                }
                PlaybackInfo playbackInfoCopyWithPlaybackState = playbackInfoMaskTimelineAndPosition.copyWithPlaybackState(i3);
                this.internalPlayer.setMediaSources(listAddMediaSourceHolders, i2, Util.msToUs(j2), this.shuffleOrder);
                updatePlaybackInfo(playbackInfoCopyWithPlaybackState, 0, 1, false, this.playbackInfo.periodId.periodUid.equals(playbackInfoCopyWithPlaybackState.periodId.periodUid) && !this.playbackInfo.timeline.isEmpty(), 4, getCurrentPositionUsInternal(playbackInfoCopyWithPlaybackState), -1, false);
            }
            j2 = j;
        }
        i2 = firstWindowIndex;
        PlaybackInfo playbackInfoMaskTimelineAndPosition2 = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, maskWindowPositionMsOrGetPeriodPositionUs(timelineCreateMaskingTimeline, i2, j2));
        i3 = playbackInfoMaskTimelineAndPosition2.playbackState;
        if (i2 != -1) {
            if (timelineCreateMaskingTimeline.isEmpty()) {
            }
        }
        PlaybackInfo playbackInfoCopyWithPlaybackState2 = playbackInfoMaskTimelineAndPosition2.copyWithPlaybackState(i3);
        this.internalPlayer.setMediaSources(listAddMediaSourceHolders, i2, Util.msToUs(j2), this.shuffleOrder);
        updatePlaybackInfo(playbackInfoCopyWithPlaybackState2, 0, 1, false, this.playbackInfo.periodId.periodUid.equals(playbackInfoCopyWithPlaybackState2.periodId.periodUid) && !this.playbackInfo.timeline.isEmpty(), 4, getCurrentPositionUsInternal(playbackInfoCopyWithPlaybackState2), -1, false);
    }

    private List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders(int i, List<MediaSource> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = new MediaSourceList.MediaSourceHolder(list.get(i2), this.useLazyPreparation);
            arrayList.add(mediaSourceHolder);
            this.mediaSourceHolderSnapshots.add(i2 + i, new MediaSourceHolderSnapshot(mediaSourceHolder.uid, mediaSourceHolder.mediaSource.getTimeline()));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndInsert(i, arrayList.size());
        return arrayList;
    }

    private PlaybackInfo removeMediaItemsInternal(int i, int i2) {
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        Timeline currentTimeline = getCurrentTimeline();
        int size = this.mediaSourceHolderSnapshots.size();
        this.pendingOperationAcks++;
        removeMediaSourceHolders(i, i2);
        Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionUsAfterTimelineChanged(currentTimeline, timelineCreateMaskingTimeline));
        int i3 = playbackInfoMaskTimelineAndPosition.playbackState;
        if (i3 != 1 && i3 != 4 && i < i2 && i2 == size && currentMediaItemIndex >= playbackInfoMaskTimelineAndPosition.timeline.getWindowCount()) {
            playbackInfoMaskTimelineAndPosition = playbackInfoMaskTimelineAndPosition.copyWithPlaybackState(4);
        }
        this.internalPlayer.removeMediaSources(i, i2, this.shuffleOrder);
        return playbackInfoMaskTimelineAndPosition;
    }

    private void removeMediaSourceHolders(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.mediaSourceHolderSnapshots.remove(i3);
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndRemove(i, i2);
    }

    private Timeline createMaskingTimeline() {
        return new PlaylistTimeline(this.mediaSourceHolderSnapshots, this.shuffleOrder);
    }

    private PlaybackInfo maskTimelineAndPosition(PlaybackInfo playbackInfo, Timeline timeline, Pair<Object, Long> pair) {
        long adDurationUs;
        Assertions.checkArgument(timeline.isEmpty() || pair != null);
        Timeline timeline2 = playbackInfo.timeline;
        PlaybackInfo playbackInfoCopyWithTimeline = playbackInfo.copyWithTimeline(timeline);
        if (timeline.isEmpty()) {
            MediaSource.MediaPeriodId dummyPeriodForEmptyTimeline = PlaybackInfo.getDummyPeriodForEmptyTimeline();
            long jMsToUs = Util.msToUs(this.maskingWindowPositionMs);
            PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId = playbackInfoCopyWithTimeline.copyWithNewPosition(dummyPeriodForEmptyTimeline, jMsToUs, jMsToUs, jMsToUs, 0L, TrackGroupArray.EMPTY, this.emptyTrackSelectorResult, ImmutableList.of()).copyWithLoadingMediaPeriodId(dummyPeriodForEmptyTimeline);
            playbackInfoCopyWithLoadingMediaPeriodId.bufferedPositionUs = playbackInfoCopyWithLoadingMediaPeriodId.positionUs;
            return playbackInfoCopyWithLoadingMediaPeriodId;
        }
        Object obj = playbackInfoCopyWithTimeline.periodId.periodUid;
        boolean zEquals = obj.equals(((Pair) Util.castNonNull(pair)).first);
        MediaSource.MediaPeriodId mediaPeriodId = !zEquals ? new MediaSource.MediaPeriodId(pair.first) : playbackInfoCopyWithTimeline.periodId;
        long jLongValue = ((Long) pair.second).longValue();
        long jMsToUs2 = Util.msToUs(getContentPosition());
        if (!timeline2.isEmpty()) {
            jMsToUs2 -= timeline2.getPeriodByUid(obj, this.period).getPositionInWindowUs();
        }
        if (!zEquals || jLongValue < jMsToUs2) {
            MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodId;
            Assertions.checkState(!mediaPeriodId2.isAd());
            PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId2 = playbackInfoCopyWithTimeline.copyWithNewPosition(mediaPeriodId2, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? TrackGroupArray.EMPTY : playbackInfoCopyWithTimeline.trackGroups, !zEquals ? this.emptyTrackSelectorResult : playbackInfoCopyWithTimeline.trackSelectorResult, !zEquals ? ImmutableList.of() : playbackInfoCopyWithTimeline.staticMetadata).copyWithLoadingMediaPeriodId(mediaPeriodId2);
            playbackInfoCopyWithLoadingMediaPeriodId2.bufferedPositionUs = jLongValue;
            return playbackInfoCopyWithLoadingMediaPeriodId2;
        }
        if (jLongValue == jMsToUs2) {
            int indexOfPeriod = timeline.getIndexOfPeriod(playbackInfoCopyWithTimeline.loadingMediaPeriodId.periodUid);
            if (indexOfPeriod != -1 && timeline.getPeriod(indexOfPeriod, this.period).windowIndex == timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex) {
                return playbackInfoCopyWithTimeline;
            }
            timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
            boolean zIsAd = mediaPeriodId.isAd();
            Timeline.Period period = this.period;
            if (zIsAd) {
                adDurationUs = period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
            } else {
                adDurationUs = period.durationUs;
            }
            MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodId;
            PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId3 = playbackInfoCopyWithTimeline.copyWithNewPosition(mediaPeriodId3, playbackInfoCopyWithTimeline.positionUs, playbackInfoCopyWithTimeline.positionUs, playbackInfoCopyWithTimeline.discontinuityStartPositionUs, adDurationUs - playbackInfoCopyWithTimeline.positionUs, playbackInfoCopyWithTimeline.trackGroups, playbackInfoCopyWithTimeline.trackSelectorResult, playbackInfoCopyWithTimeline.staticMetadata).copyWithLoadingMediaPeriodId(mediaPeriodId3);
            playbackInfoCopyWithLoadingMediaPeriodId3.bufferedPositionUs = adDurationUs;
            return playbackInfoCopyWithLoadingMediaPeriodId3;
        }
        MediaSource.MediaPeriodId mediaPeriodId4 = mediaPeriodId;
        Assertions.checkState(!mediaPeriodId4.isAd());
        long jMax = Math.max(0L, playbackInfoCopyWithTimeline.totalBufferedDurationUs - (jLongValue - jMsToUs2));
        long j = playbackInfoCopyWithTimeline.bufferedPositionUs;
        if (playbackInfoCopyWithTimeline.loadingMediaPeriodId.equals(playbackInfoCopyWithTimeline.periodId)) {
            j = jLongValue + jMax;
        }
        PlaybackInfo playbackInfoCopyWithNewPosition = playbackInfoCopyWithTimeline.copyWithNewPosition(mediaPeriodId4, jLongValue, jLongValue, jLongValue, jMax, playbackInfoCopyWithTimeline.trackGroups, playbackInfoCopyWithTimeline.trackSelectorResult, playbackInfoCopyWithTimeline.staticMetadata);
        playbackInfoCopyWithNewPosition.bufferedPositionUs = j;
        return playbackInfoCopyWithNewPosition;
    }

    private Pair<Object, Long> getPeriodPositionUsAfterTimelineChanged(Timeline timeline, Timeline timeline2) {
        long contentPosition = getContentPosition();
        if (timeline.isEmpty() || timeline2.isEmpty()) {
            boolean z = !timeline.isEmpty() && timeline2.isEmpty();
            int currentWindowIndexInternal = z ? -1 : getCurrentWindowIndexInternal();
            if (z) {
                contentPosition = -9223372036854775807L;
            }
            return maskWindowPositionMsOrGetPeriodPositionUs(timeline2, currentWindowIndexInternal, contentPosition);
        }
        Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.window, this.period, getCurrentMediaItemIndex(), Util.msToUs(contentPosition));
        Object obj = ((Pair) Util.castNonNull(periodPositionUs)).first;
        if (timeline2.getIndexOfPeriod(obj) != -1) {
            return periodPositionUs;
        }
        Object objResolveSubsequentPeriod = ExoPlayerImplInternal.resolveSubsequentPeriod(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, obj, timeline, timeline2);
        if (objResolveSubsequentPeriod != null) {
            timeline2.getPeriodByUid(objResolveSubsequentPeriod, this.period);
            int i = this.period.windowIndex;
            return maskWindowPositionMsOrGetPeriodPositionUs(timeline2, i, timeline2.getWindow(i, this.window).getDefaultPositionMs());
        }
        return maskWindowPositionMsOrGetPeriodPositionUs(timeline2, -1, -9223372036854775807L);
    }

    private Pair<Object, Long> maskWindowPositionMsOrGetPeriodPositionUs(Timeline timeline, int i, long j) {
        if (timeline.isEmpty()) {
            this.maskingWindowIndex = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.maskingWindowPositionMs = j;
            this.maskingPeriodIndex = 0;
            return null;
        }
        if (i == -1 || i >= timeline.getWindowCount()) {
            i = timeline.getFirstWindowIndex(this.shuffleModeEnabled);
            j = timeline.getWindow(i, this.window).getDefaultPositionMs();
        }
        return timeline.getPeriodPositionUs(this.window, this.period, i, Util.msToUs(j));
    }

    private long periodPositionUsToWindowPositionUs(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return j + this.period.getPositionInWindowUs();
    }

    private PlayerMessage createMessageInternal(PlayerMessage.Target target) {
        int currentWindowIndexInternal = getCurrentWindowIndexInternal();
        ExoPlayerImplInternal exoPlayerImplInternal = this.internalPlayer;
        Timeline timeline = this.playbackInfo.timeline;
        if (currentWindowIndexInternal == -1) {
            currentWindowIndexInternal = 0;
        }
        return new PlayerMessage(exoPlayerImplInternal, target, timeline, currentWindowIndexInternal, this.clock, exoPlayerImplInternal.getPlaybackLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaMetadata buildUpdatedMediaMetadata() {
        Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return this.staticAndDynamicMediaMetadata;
        }
        return this.staticAndDynamicMediaMetadata.buildUpon().populate(currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).mediaItem.mediaMetadata).build();
    }

    private void removeSurfaceCallbacks() {
        TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.componentListener) {
                Log.m274w("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSurfaceTextureInternal(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        setVideoOutputInternal(surface);
        this.ownedSurface = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoOutputInternal(Object obj) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Renderer[] rendererArr = this.renderers;
        int length = rendererArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            Renderer renderer = rendererArr[i];
            if (renderer.getTrackType() == 2) {
                arrayList.add(createMessageInternal(renderer).setType(1).setPayload(obj).send());
            }
            i++;
        }
        Object obj2 = this.videoOutput;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj3 = arrayList.get(i2);
                    i2++;
                    ((PlayerMessage) obj3).blockUntilDelivered(this.detachSurfaceTimeoutMs);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj4 = this.videoOutput;
            Surface surface = this.ownedSurface;
            if (obj4 == surface) {
                try {
                    surface.release();
                } catch (Throwable unused3) {
                }
                this.ownedSurface = null;
            }
        }
        this.videoOutput = obj;
        if (z) {
            stopInternal(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeNotifySurfaceSizeChanged(final int i, final int i2) {
        if (i == this.surfaceSize.getWidth() && i2 == this.surfaceSize.getHeight()) {
            return;
        }
        this.surfaceSize = new Size(i, i2);
        DispatchQueue dispatchQueue = this.workerQueue;
        if (dispatchQueue != null) {
            dispatchQueue.postRunnable(new Runnable() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$maybeNotifySurfaceSizeChanged$28(i, i2);
                }
            });
        } else {
            this.listeners.sendEvent(24, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda22
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSurfaceSizeChanged(i, i2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$maybeNotifySurfaceSizeChanged$28(final int i, final int i2) {
        this.listeners.sendEvent(24, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticLambda25
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSurfaceSizeChanged(i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendVolumeToRenderers() {
        sendRendererMessage(1, 2, Float.valueOf(this.volume * this.audioFocusManager.getVolumeMultiplier()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayWhenReady(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playWhenReady == z2 && playbackInfo.playbackSuppressionReason == i3) {
            return;
        }
        this.pendingOperationAcks++;
        PlaybackInfo playbackInfoCopyWithPlayWhenReady = playbackInfo.copyWithPlayWhenReady(z2, i3);
        this.internalPlayer.setPlayWhenReady(z2, i3);
        updatePlaybackInfo(playbackInfoCopyWithPlayWhenReady, 0, i2, false, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWakeAndWifiLock() {
        int playbackState = getPlaybackState();
        boolean z = false;
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                boolean zExperimentalIsSleepingForOffload = experimentalIsSleepingForOffload();
                WakeLockManager wakeLockManager = this.wakeLockManager;
                if (getPlayWhenReady() && !zExperimentalIsSleepingForOffload) {
                    z = true;
                }
                wakeLockManager.setStayAwake(z);
                this.wifiLockManager.setStayAwake(getPlayWhenReady());
                return;
            }
            if (playbackState != 4) {
                MethodWriter$$ExternalSyntheticBUOutline0.m863m();
                return;
            }
        }
        this.wakeLockManager.setStayAwake(false);
        this.wifiLockManager.setStayAwake(false);
    }

    private void verifyApplicationThread() {
        this.constructorFinished.blockUninterruptible();
        if (Thread.currentThread() != getApplicationLooper().getThread()) {
            String invariant = Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), getApplicationLooper().getThread().getName());
            if (this.throwsWhenUsingWrongThread) {
                Segment$$ExternalSyntheticBUOutline1.m848m(invariant);
            } else {
                Log.m275w("ExoPlayerImpl", invariant, this.hasNotifiedFullWrongThreadWarning ? null : new IllegalStateException());
                this.hasNotifiedFullWrongThreadWarning = true;
            }
        }
    }

    private void sendRendererMessage(int i, int i2, Object obj) {
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == i) {
                createMessageInternal(renderer).setType(i2).setPayload(obj).send();
            }
        }
    }

    private int initializeKeepSessionIdAudioTrack(int i) {
        AudioTrack audioTrack = this.keepSessionIdAudioTrack;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i) {
            this.keepSessionIdAudioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        if (this.keepSessionIdAudioTrack == null) {
            this.keepSessionIdAudioTrack = new AudioTrack(3, 4000, 4, 2, 2, 0, i);
        }
        return this.keepSessionIdAudioTrack.getAudioSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DeviceInfo createDeviceInfo(StreamVolumeManager streamVolumeManager) {
        return new DeviceInfo(0, streamVolumeManager.getMinVolume(), streamVolumeManager.getMaxVolume());
    }

    private static boolean isPlaying(PlaybackInfo playbackInfo) {
        return playbackInfo.playbackState == 3 && playbackInfo.playWhenReady && playbackInfo.playbackSuppressionReason == 0;
    }

    public static final class MediaSourceHolderSnapshot implements MediaSourceInfoHolder {
        private Timeline timeline;
        private final Object uid;

        public MediaSourceHolderSnapshot(Object obj, Timeline timeline) {
            this.uid = obj;
            this.timeline = timeline;
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public Object getUid() {
            return this.uid;
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public Timeline getTimeline() {
            return this.timeline;
        }
    }

    public final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, AudioFocusManager.PlayerControl, AudioBecomingNoisyManager.EventListener, StreamVolumeManager.Listener, ExoPlayer.AudioOffloadListener {
        private ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoEnabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.videoDecoderCounters = decoderCounters;
            ExoPlayerImpl.this.analyticsCollector.onVideoEnabled(decoderCounters);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(String str, long j, long j2) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDecoderInitialized(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.videoFormat = format;
            ExoPlayerImpl.this.analyticsCollector.onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onDroppedFrames(int i, long j) {
            ExoPlayerImpl.this.analyticsCollector.onDroppedFrames(i, j);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoSizeChanged(final VideoSize videoSize) {
            ExoPlayerImpl.this.videoSize = videoSize;
            ExoPlayerImpl.this.listeners.sendEvent(25, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda11
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onVideoSizeChanged(videoSize);
                }
            });
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onRenderedFirstFrame(Object obj, long j) {
            ExoPlayerImpl.this.analyticsCollector.onRenderedFirstFrame(obj, j);
            if (ExoPlayerImpl.this.videoOutput == obj) {
                ExoPlayerImpl.this.listeners.sendEvent(26, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda10
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj2) {
                        ((Player.Listener) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDecoderReleased(String str) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDecoderReleased(str);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDisabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDisabled(decoderCounters);
            ExoPlayerImpl.this.videoFormat = null;
            ExoPlayerImpl.this.videoDecoderCounters = null;
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoFrameProcessingOffset(long j, int i) {
            ExoPlayerImpl.this.analyticsCollector.onVideoFrameProcessingOffset(j, i);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoCodecError(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.onVideoCodecError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioEnabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.audioDecoderCounters = decoderCounters;
            ExoPlayerImpl.this.analyticsCollector.onAudioEnabled(decoderCounters);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDecoderInitialized(String str, long j, long j2) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDecoderInitialized(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.audioFormat = format;
            ExoPlayerImpl.this.analyticsCollector.onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioPositionAdvancing(long j) {
            ExoPlayerImpl.this.analyticsCollector.onAudioPositionAdvancing(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioUnderrun(int i, long j, long j2) {
            ExoPlayerImpl.this.analyticsCollector.onAudioUnderrun(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDecoderReleased(String str) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDecoderReleased(str);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDisabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDisabled(decoderCounters);
            ExoPlayerImpl.this.audioFormat = null;
            ExoPlayerImpl.this.audioDecoderCounters = null;
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onSkipSilenceEnabledChanged(final boolean z) {
            if (ExoPlayerImpl.this.skipSilenceEnabled == z) {
                return;
            }
            ExoPlayerImpl.this.skipSilenceEnabled = z;
            ExoPlayerImpl.this.listeners.sendEvent(23, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda12
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSkipSilenceEnabledChanged(z);
                }
            });
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioSinkError(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.onAudioSinkError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioCodecError(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.onAudioCodecError(exc);
        }

        @Override // com.google.android.exoplayer2.text.TextOutput
        public void onCues(final List<Cue> list) {
            ExoPlayerImpl.this.listeners.sendEvent(27, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues((List<Cue>) list);
                }
            });
        }

        @Override // com.google.android.exoplayer2.text.TextOutput
        public void onCues(final CueGroup cueGroup) {
            ExoPlayerImpl.this.currentCueGroup = cueGroup;
            ExoPlayerImpl.this.listeners.sendEvent(27, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues(cueGroup);
                }
            });
        }

        @Override // com.google.android.exoplayer2.metadata.MetadataOutput
        public void onMetadata(final Metadata metadata) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.staticAndDynamicMediaMetadata = exoPlayerImpl.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(metadata).build();
            MediaMetadata mediaMetadataBuildUpdatedMediaMetadata = ExoPlayerImpl.this.buildUpdatedMediaMetadata();
            if (!mediaMetadataBuildUpdatedMediaMetadata.equals(ExoPlayerImpl.this.mediaMetadata)) {
                ExoPlayerImpl.this.mediaMetadata = mediaMetadataBuildUpdatedMediaMetadata;
                ExoPlayerImpl.this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        this.f$0.lambda$onMetadata$4((Player.Listener) obj);
                    }
                });
            }
            ExoPlayerImpl.this.listeners.queueEvent(28, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMetadata(metadata);
                }
            });
            ExoPlayerImpl.this.listeners.flushEvents();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMetadata$4(Player.Listener listener) {
            listener.onMediaMetadataChanged(ExoPlayerImpl.this.mediaMetadata);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.setVideoOutputInternal(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.setVideoOutputInternal(null);
            }
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(0, 0);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(final SurfaceTexture surfaceTexture, final int i, final int i2) {
            if (ExoPlayerImpl.this.workerQueue != null) {
                ExoPlayerImpl.this.workerQueue.postRunnable(new Runnable() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSurfaceTextureAvailable$6(surfaceTexture, i, i2);
                    }
                });
            } else {
                lambda$onSurfaceTextureAvailable$6(surfaceTexture, i, i2);
            }
        }

        /* JADX INFO: renamed from: onSurfaceTextureAvailableInternal, reason: merged with bridge method [inline-methods] */
        public void lambda$onSurfaceTextureAvailable$6(SurfaceTexture surfaceTexture, int i, int i2) {
            ExoPlayerImpl.this.setSurfaceTextureInternal(surfaceTexture);
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(final SurfaceTexture surfaceTexture, final int i, final int i2) {
            if (ExoPlayerImpl.this.workerQueue != null) {
                ExoPlayerImpl.this.workerQueue.postRunnable(new Runnable() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSurfaceTextureSizeChanged$7(surfaceTexture, i, i2);
                    }
                });
            } else {
                lambda$onSurfaceTextureSizeChanged$7(surfaceTexture, i, i2);
            }
        }

        /* JADX INFO: renamed from: onSurfaceTextureSizeChangedInternal, reason: merged with bridge method [inline-methods] */
        public void lambda$onSurfaceTextureSizeChanged$7(SurfaceTexture surfaceTexture, int i, int i2) {
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(final SurfaceTexture surfaceTexture) {
            ArrayList arrayList = ExoPlayerImpl.this.videoListeners;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                if (((VideoListener) obj).onSurfaceDestroyed(surfaceTexture)) {
                    return false;
                }
            }
            if (ExoPlayerImpl.this.workerQueue != null) {
                ExoPlayerImpl.this.workerQueue.postRunnable(new Runnable() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSurfaceTextureDestroyed$8(surfaceTexture);
                    }
                });
                return true;
            }
            lambda$onSurfaceTextureDestroyed$8(surfaceTexture);
            return true;
        }

        /* JADX INFO: renamed from: onSurfaceTextureDestroyedInternal, reason: merged with bridge method [inline-methods] */
        public void lambda$onSurfaceTextureDestroyed$8(SurfaceTexture surfaceTexture) {
            ExoPlayerImpl.this.setVideoOutputInternal(null);
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(0, 0);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(final SurfaceTexture surfaceTexture) {
            if (ExoPlayerImpl.this.workerQueue != null) {
                ExoPlayerImpl.this.workerQueue.postRunnable(new Runnable() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSurfaceTextureUpdated$9(surfaceTexture);
                    }
                });
            } else {
                lambda$onSurfaceTextureUpdated$9(surfaceTexture);
            }
        }

        /* JADX INFO: renamed from: onSurfaceTextureUpdatedInternal, reason: merged with bridge method [inline-methods] */
        public void lambda$onSurfaceTextureUpdated$9(SurfaceTexture surfaceTexture) {
            ArrayList arrayList = ExoPlayerImpl.this.videoListeners;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((VideoListener) obj).onSurfaceTextureUpdated(surfaceTexture);
            }
        }

        @Override // com.google.android.exoplayer2.AudioFocusManager.PlayerControl
        public void setVolumeMultiplier(float f) {
            ExoPlayerImpl.this.sendVolumeToRenderers();
        }

        @Override // com.google.android.exoplayer2.AudioFocusManager.PlayerControl
        public void executePlayerCommand(int i) {
            boolean playWhenReady = ExoPlayerImpl.this.getPlayWhenReady();
            ExoPlayerImpl.this.updatePlayWhenReady(playWhenReady, i, ExoPlayerImpl.getPlayWhenReadyChangeReason(playWhenReady, i));
        }

        @Override // com.google.android.exoplayer2.AudioBecomingNoisyManager.EventListener
        public void onAudioBecomingNoisy() {
            ExoPlayerImpl.this.updatePlayWhenReady(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.StreamVolumeManager.Listener
        public void onStreamTypeChanged(int i) {
            final DeviceInfo deviceInfoCreateDeviceInfo = ExoPlayerImpl.createDeviceInfo(ExoPlayerImpl.this.streamVolumeManager);
            if (deviceInfoCreateDeviceInfo.equals(ExoPlayerImpl.this.deviceInfo)) {
                return;
            }
            ExoPlayerImpl.this.deviceInfo = deviceInfoCreateDeviceInfo;
            ExoPlayerImpl.this.listeners.sendEvent(29, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceInfoChanged(deviceInfoCreateDeviceInfo);
                }
            });
        }

        @Override // com.google.android.exoplayer2.StreamVolumeManager.Listener
        public void onStreamVolumeChanged(final int i, final boolean z) {
            ExoPlayerImpl.this.listeners.sendEvent(30, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceVolumeChanged(i, z);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener
        public void onExperimentalSleepingForOffloadChanged(boolean z) {
            ExoPlayerImpl.this.updateWakeAndWifiLock();
        }
    }

    public static final class FrameMetadataListener implements VideoFrameMetadataListener, CameraMotionListener, PlayerMessage.Target {
        private CameraMotionListener cameraMotionListener;
        private CameraMotionListener internalCameraMotionListener;
        private VideoFrameMetadataListener internalVideoFrameMetadataListener;
        private VideoFrameMetadataListener videoFrameMetadataListener;

        private FrameMetadataListener() {
        }

        @Override // com.google.android.exoplayer2.PlayerMessage.Target
        public void handleMessage(int i, Object obj) {
            if (i == 7) {
                this.videoFrameMetadataListener = (VideoFrameMetadataListener) obj;
                return;
            }
            if (i == 8) {
                this.cameraMotionListener = (CameraMotionListener) obj;
            } else {
                if (i != 10000) {
                    return;
                }
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                this.internalVideoFrameMetadataListener = null;
                this.internalCameraMotionListener = null;
            }
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameMetadataListener
        public void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat) {
            VideoFrameMetadataListener videoFrameMetadataListener = this.internalVideoFrameMetadataListener;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
            VideoFrameMetadataListener videoFrameMetadataListener2 = this.videoFrameMetadataListener;
            if (videoFrameMetadataListener2 != null) {
                videoFrameMetadataListener2.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
        public void onCameraMotion(long j, float[] fArr) {
            CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotion(j, fArr);
            }
            CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotion(j, fArr);
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
        public void onCameraMotionReset() {
            CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotionReset();
            }
            CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotionReset();
            }
        }
    }

    public static final class Api31 {
        public static PlayerId registerMediaMetricsListener(Context context, ExoPlayerImpl exoPlayerImpl, boolean z) {
            MediaMetricsListener mediaMetricsListenerCreate = MediaMetricsListener.create(context);
            if (mediaMetricsListenerCreate == null) {
                Log.m274w("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return new PlayerId(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z) {
                exoPlayerImpl.addAnalyticsListener(mediaMetricsListenerCreate);
            }
            return new PlayerId(mediaMetricsListenerCreate.getLogSessionId());
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addVideoListener(VideoListener videoListener) {
        this.videoListeners.add(videoListener);
    }
}
