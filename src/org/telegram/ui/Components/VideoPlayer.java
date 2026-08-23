package org.telegram.ui.Components;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.SurfaceTexture;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.net.Uri;
import android.opengl.EGLContext;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.util.LongSparseArray;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AudioCapabilities;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.audio.TeeAudioProcessor;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.LoopingMediaSource;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionOverride;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.SurfaceNotValidException;
import com.google.android.exoplayer2.video.VideoListener;
import com.google.android.exoplayer2.video.VideoSize;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FourierTransform;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.chromecast.ChromecastMedia;
import org.telegram.messenger.chromecast.ChromecastMediaVariations;
import org.telegram.messenger.secretmedia.ExtendedDefaultDataSourceFactory;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Stories.recorder.StoryEntry;

/* JADX INFO: loaded from: classes3.dex */
public class VideoPlayer implements Player.Listener, VideoListener, AnalyticsListener, NotificationCenter.NotificationCenterDelegate {
    private static HashMap cachedSupportedCodec;
    private static int lastPlayerId;
    public boolean allowMultipleInstances;
    boolean audioDisabled;
    private ExoPlayer audioPlayer;
    private boolean audioPlayerReady;
    private String audioType;
    Handler audioUpdateHandler;
    private Uri audioUri;
    private AudioVisualizerDelegate audioVisualizerDelegate;
    private boolean autoIsOriginal;
    private boolean autoplay;
    private boolean currentStreamIsHls;
    private Uri currentUri;
    MediaSource.Factory dashMediaSourceFactory;
    private VideoPlayerDelegate delegate;
    private EGLContext eglParentContext;
    private long fallbackDuration;
    private long fallbackPosition;
    private boolean handleAudioFocus;
    HlsMediaSource.Factory hlsMediaSourceFactory;
    private boolean isStory;
    private boolean isStreaming;
    private boolean lastReportedPlayWhenReady;
    private int lastReportedPlaybackState;
    private Looper looper;
    private boolean looping;
    private boolean loopingMediaSource;
    private ArrayList manifestUris;
    private ExtendedDefaultDataSourceFactory mediaDataSourceFactory;
    private boolean mixedAudio;
    private boolean mixedPlayWhenReady;
    private Runnable onQualityChangeListener;
    public ExoPlayer player;
    public final int playerId;
    ProgressiveMediaSource.Factory progressiveMediaSourceFactory;
    private int repeatCount;
    private final ArrayList seekFinishedListeners;
    private int selectedQualityIndex;
    private boolean shouldPauseOther;
    SsMediaSource.Factory ssMediaSourceFactory;
    private Surface surface;
    private SurfaceView surfaceView;
    private TextureView textureView;
    private MappingTrackSelector trackSelector;
    private boolean triedReinit;
    private boolean videoPlayerReady;
    private ArrayList videoQualities;
    private Quality videoQualityToSelect;
    private String videoType;
    private Uri videoUri;
    private DispatchQueue workerQueue;
    public static final HashSet activePlayers = new HashSet();
    static int playerCounter = 0;

    /* JADX INFO: loaded from: classes7.dex */
    public interface AudioVisualizerDelegate {
        boolean needUpdate();

        void onVisualizerUpdate(boolean z, boolean z2, float[] fArr);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioAttributesChanged(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        AnalyticsListener.CC.$default$onAudioAttributesChanged(this, eventTime, audioAttributes);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        Player.Listener.CC.$default$onAudioAttributesChanged(this, audioAttributes);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioCodecError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener.CC.$default$onAudioCodecError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
        AnalyticsListener.CC.$default$onAudioDecoderInitialized(this, eventTime, str, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j, long j2) {
        AnalyticsListener.CC.$default$onAudioDecoderInitialized(this, eventTime, str, j, j2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
        AnalyticsListener.CC.$default$onAudioDecoderReleased(this, eventTime, str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onAudioDisabled(this, eventTime, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onAudioEnabled(this, eventTime, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format) {
        AnalyticsListener.CC.$default$onAudioInputFormatChanged(this, eventTime, format);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        AnalyticsListener.CC.$default$onAudioInputFormatChanged(this, eventTime, format, decoderReuseEvaluation);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioPositionAdvancing(AnalyticsListener.EventTime eventTime, long j) {
        AnalyticsListener.CC.$default$onAudioPositionAdvancing(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioSinkError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener.CC.$default$onAudioSinkError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        AnalyticsListener.CC.$default$onAudioUnderrun(this, eventTime, i, j, j2);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        Player.Listener.CC.$default$onAvailableCommandsChanged(this, commands);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAvailableCommandsChanged(AnalyticsListener.EventTime eventTime, Player.Commands commands) {
        AnalyticsListener.CC.$default$onAvailableCommandsChanged(this, eventTime, commands);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        AnalyticsListener.CC.$default$onBandwidthEstimate(this, eventTime, i, j, j2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onCues(AnalyticsListener.EventTime eventTime, CueGroup cueGroup) {
        AnalyticsListener.CC.$default$onCues(this, eventTime, cueGroup);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onCues(AnalyticsListener.EventTime eventTime, List list) {
        AnalyticsListener.CC.$default$onCues(this, eventTime, list);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onCues(CueGroup cueGroup) {
        Player.Listener.CC.$default$onCues(this, cueGroup);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onCues(List list) {
        Player.Listener.CC.$default$onCues(this, list);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderDisabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onDecoderDisabled(this, eventTime, i, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderEnabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onDecoderEnabled(this, eventTime, i, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderInitialized(AnalyticsListener.EventTime eventTime, int i, String str, long j) {
        AnalyticsListener.CC.$default$onDecoderInitialized(this, eventTime, i, str, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderInputFormatChanged(AnalyticsListener.EventTime eventTime, int i, Format format) {
        AnalyticsListener.CC.$default$onDecoderInputFormatChanged(this, eventTime, i, format);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        Player.Listener.CC.$default$onDeviceInfoChanged(this, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDeviceInfoChanged(AnalyticsListener.EventTime eventTime, DeviceInfo deviceInfo) {
        AnalyticsListener.CC.$default$onDeviceInfoChanged(this, eventTime, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        Player.Listener.CC.$default$onDeviceVolumeChanged(this, i, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDeviceVolumeChanged(AnalyticsListener.EventTime eventTime, int i, boolean z) {
        AnalyticsListener.CC.$default$onDeviceVolumeChanged(this, eventTime, i, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onDownstreamFormatChanged(this, eventTime, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onDrmKeysLoaded(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onDrmKeysRemoved(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onDrmKeysRestored(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onDrmSessionAcquired(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onDrmSessionAcquired(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener.CC.$default$onDrmSessionManagerError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmSessionReleased(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onDrmSessionReleased(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
        AnalyticsListener.CC.$default$onDroppedVideoFrames(this, eventTime, i, j);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onEvents(Player player, Player.Events events) {
        Player.Listener.CC.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onEvents(Player player, AnalyticsListener.Events events) {
        AnalyticsListener.CC.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onIsLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onIsLoadingChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onIsLoadingChanged(boolean z) {
        Player.Listener.CC.$default$onIsLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onIsPlayingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onIsPlayingChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onIsPlayingChanged(boolean z) {
        Player.Listener.CC.$default$onIsPlayingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadCanceled(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onLoadCanceled(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadCompleted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onLoadCompleted(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        AnalyticsListener.CC.$default$onLoadError(this, eventTime, loadEventInfo, mediaLoadData, iOException, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadStarted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onLoadStarted(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onLoadingChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onLoadingChanged(boolean z) {
        Player.Listener.CC.$default$onLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
        Player.Listener.CC.$default$onMediaItemTransition(this, mediaItem, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMediaItemTransition(AnalyticsListener.EventTime eventTime, MediaItem mediaItem, int i) {
        AnalyticsListener.CC.$default$onMediaItemTransition(this, eventTime, mediaItem, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        Player.Listener.CC.$default$onMediaMetadataChanged(this, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMediaMetadataChanged(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        AnalyticsListener.CC.$default$onMediaMetadataChanged(this, eventTime, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        AnalyticsListener.CC.$default$onMetadata(this, eventTime, metadata);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onMetadata(Metadata metadata) {
        Player.Listener.CC.$default$onMetadata(this, metadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayWhenReadyChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
        AnalyticsListener.CC.$default$onPlayWhenReadyChanged(this, eventTime, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
        Player.Listener.CC.$default$onPlayWhenReadyChanged(this, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        AnalyticsListener.CC.$default$onPlaybackParametersChanged(this, eventTime, playbackParameters);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlaybackStateChanged(int i) {
        Player.Listener.CC.$default$onPlaybackStateChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlaybackStateChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onPlaybackStateChanged(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        Player.Listener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onPlaybackSuppressionReasonChanged(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerError(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        AnalyticsListener.CC.$default$onPlayerError(this, eventTime, playbackException);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
        Player.Listener.CC.$default$onPlayerErrorChanged(this, playbackException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerErrorChanged(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        AnalyticsListener.CC.$default$onPlayerErrorChanged(this, eventTime, playbackException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerReleased(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onPlayerReleased(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerStateChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
        AnalyticsListener.CC.$default$onPlayerStateChanged(this, eventTime, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        Player.Listener.CC.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onPositionDiscontinuity(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        AnalyticsListener.CC.$default$onPositionDiscontinuity(this, eventTime, positionInfo, positionInfo2, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onRepeatModeChanged(int i) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onRepeatModeChanged(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSeekProcessed() {
        Player.Listener.CC.$default$onSeekProcessed(this);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onShuffleModeChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
        Player.Listener.CC.$default$onShuffleModeEnabledChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSkipSilenceEnabledChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onSkipSilenceEnabledChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
        Player.Listener.CC.$default$onSkipSilenceEnabledChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onSurfaceSizeChanged(int i, int i2) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSurfaceSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2) {
        AnalyticsListener.CC.$default$onSurfaceSizeChanged(this, eventTime, i, i2);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
        Player.Listener.CC.$default$onTimelineChanged(this, timeline, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onTimelineChanged(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onTracksChanged(AnalyticsListener.EventTime eventTime, Tracks tracks) {
        AnalyticsListener.CC.$default$onTracksChanged(this, eventTime, tracks);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onUpstreamDiscarded(this, eventTime, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoCodecError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener.CC.$default$onVideoCodecError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
        AnalyticsListener.CC.$default$onVideoDecoderInitialized(this, eventTime, str, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j, long j2) {
        AnalyticsListener.CC.$default$onVideoDecoderInitialized(this, eventTime, str, j, j2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
        AnalyticsListener.CC.$default$onVideoDecoderReleased(this, eventTime, str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onVideoDisabled(this, eventTime, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onVideoEnabled(this, eventTime, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoFrameProcessingOffset(AnalyticsListener.EventTime eventTime, long j, int i) {
        AnalyticsListener.CC.$default$onVideoFrameProcessingOffset(this, eventTime, j, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format) {
        AnalyticsListener.CC.$default$onVideoInputFormatChanged(this, eventTime, format);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        AnalyticsListener.CC.$default$onVideoInputFormatChanged(this, eventTime, format, decoderReuseEvaluation);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2, int i3, float f) {
        AnalyticsListener.CC.$default$onVideoSizeChanged(this, eventTime, i, i2, i3, f);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        AnalyticsListener.CC.$default$onVideoSizeChanged(this, eventTime, videoSize);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onVolumeChanged(float f) {
        Player.Listener.CC.$default$onVolumeChanged(this, f);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVolumeChanged(AnalyticsListener.EventTime eventTime, float f) {
        AnalyticsListener.CC.$default$onVolumeChanged(this, eventTime, f);
    }

    public boolean createdWithAudioTrack() {
        return !this.audioDisabled;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface VideoPlayerDelegate {
        void onError(VideoPlayer videoPlayer, Exception exc);

        void onRenderedFirstFrame();

        void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime);

        void onSeekFinished(AnalyticsListener.EventTime eventTime);

        void onSeekStarted(AnalyticsListener.EventTime eventTime);

        void onStateChanged(boolean z, int i);

        boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture);

        void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture);

        void onVideoSizeChanged(int i, int i2, int i3, float f);

        /* JADX INFO: renamed from: org.telegram.ui.Components.VideoPlayer$VideoPlayerDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onRenderedFirstFrame(VideoPlayerDelegate videoPlayerDelegate, AnalyticsListener.EventTime eventTime) {
            }

            public static void $default$onSeekStarted(VideoPlayerDelegate videoPlayerDelegate, AnalyticsListener.EventTime eventTime) {
            }

            public static void $default$onSeekFinished(VideoPlayerDelegate videoPlayerDelegate, AnalyticsListener.EventTime eventTime) {
            }
        }
    }

    public VideoPlayer() {
        this(true, false);
    }

    public VideoPlayer(boolean z, boolean z2) {
        int i = lastPlayerId;
        lastPlayerId = i + 1;
        this.playerId = i;
        this.audioUpdateHandler = new Handler(Looper.getMainLooper());
        this.autoIsOriginal = false;
        this.selectedQualityIndex = -1;
        this.fallbackDuration = -9223372036854775807L;
        this.fallbackPosition = -9223372036854775807L;
        this.seekFinishedListeners = new ArrayList();
        this.handleAudioFocus = false;
        this.audioDisabled = z2;
        this.mediaDataSourceFactory = new ExtendedDefaultDataSourceFactory(ApplicationLoader.applicationContext, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)");
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(ApplicationLoader.applicationContext, new AdaptiveTrackSelection.Factory());
        this.trackSelector = defaultTrackSelector;
        if (z2) {
            defaultTrackSelector.setParameters(defaultTrackSelector.getParameters().buildUpon().setTrackTypeDisabled(1, true).build());
        }
        this.lastReportedPlaybackState = 1;
        this.shouldPauseOther = z;
        if (z) {
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.playerDidStartPlaying);
        }
        playerCounter++;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.playerDidStartPlaying || ((VideoPlayer) objArr[0]) == this || !isPlaying() || this.allowMultipleInstances) {
            return;
        }
        pause();
    }

    private void ensurePlayerCreated() {
        DefaultLoadControl defaultLoadControl;
        DefaultRenderersFactory defaultRenderersFactory;
        if (this.isStory) {
            defaultLoadControl = new DefaultLoadControl(new DefaultAllocator(true, 65536), 50000, 50000, MediaDataController.MAX_STYLE_RUNS_COUNT, MediaDataController.MAX_STYLE_RUNS_COUNT, -1, false, 0, false);
        } else {
            defaultLoadControl = new DefaultLoadControl(new DefaultAllocator(true, 65536), 50000, 50000, 100, 5000, -1, false, 0, false);
        }
        if (this.player == null) {
            if (this.audioVisualizerDelegate != null) {
                defaultRenderersFactory = new AudioVisualizerRenderersFactory(ApplicationLoader.applicationContext);
            } else {
                defaultRenderersFactory = new DefaultRenderersFactory(ApplicationLoader.applicationContext);
            }
            defaultRenderersFactory.setExtensionRendererMode(2);
            ExoPlayer.Builder loadControl = new ExoPlayer.Builder(ApplicationLoader.applicationContext).setRenderersFactory(defaultRenderersFactory).setTrackSelector(this.trackSelector).setLoadControl(defaultLoadControl);
            Looper looper = this.looper;
            if (looper != null) {
                loadControl.setLooper(looper);
            }
            EGLContext eGLContext = this.eglParentContext;
            if (eGLContext != null) {
                loadControl.eglContext = eGLContext;
            }
            ExoPlayer exoPlayerBuild = loadControl.build();
            this.player = exoPlayerBuild;
            exoPlayerBuild.addAnalyticsListener(this);
            this.player.addListener(this);
            this.player.addVideoListener(this);
            TextureView textureView = this.textureView;
            if (textureView != null) {
                this.player.setVideoTextureView(textureView);
            } else {
                Surface surface = this.surface;
                if (surface != null) {
                    this.player.setVideoSurface(surface);
                } else {
                    SurfaceView surfaceView = this.surfaceView;
                    if (surfaceView != null) {
                        this.player.setVideoSurfaceView(surfaceView);
                    }
                }
            }
            this.player.setPlayWhenReady(this.autoplay);
            this.player.setRepeatMode(this.looping ? 2 : 0);
        }
        if (this.mixedAudio && this.audioPlayer == null) {
            SimpleExoPlayer simpleExoPlayerBuildSimpleExoPlayer = new ExoPlayer.Builder(ApplicationLoader.applicationContext).setTrackSelector(this.trackSelector).setLoadControl(defaultLoadControl).buildSimpleExoPlayer();
            this.audioPlayer = simpleExoPlayerBuildSimpleExoPlayer;
            simpleExoPlayerBuildSimpleExoPlayer.addListener(new Player.Listener() { // from class: org.telegram.ui.Components.VideoPlayer.1
                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                    Player.Listener.CC.$default$onAudioAttributesChanged(this, audioAttributes);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
                    Player.Listener.CC.$default$onAvailableCommandsChanged(this, commands);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onCues(CueGroup cueGroup) {
                    Player.Listener.CC.$default$onCues(this, cueGroup);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onCues(List list) {
                    Player.Listener.CC.$default$onCues(this, list);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                    Player.Listener.CC.$default$onDeviceInfoChanged(this, deviceInfo);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
                    Player.Listener.CC.$default$onDeviceVolumeChanged(this, i, z);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onEvents(Player player, Player.Events events) {
                    Player.Listener.CC.$default$onEvents(this, player, events);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onIsLoadingChanged(boolean z) {
                    Player.Listener.CC.$default$onIsLoadingChanged(this, z);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onIsPlayingChanged(boolean z) {
                    Player.Listener.CC.$default$onIsPlayingChanged(this, z);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onLoadingChanged(boolean z) {
                    Player.Listener.CC.$default$onLoadingChanged(this, z);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
                    Player.Listener.CC.$default$onMediaItemTransition(this, mediaItem, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                    Player.Listener.CC.$default$onMediaMetadataChanged(this, mediaMetadata);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onMetadata(Metadata metadata) {
                    Player.Listener.CC.$default$onMetadata(this, metadata);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
                    Player.Listener.CC.$default$onPlayWhenReadyChanged(this, z, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                    Player.Listener.CC.$default$onPlaybackParametersChanged(this, playbackParameters);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPlaybackStateChanged(int i) {
                    Player.Listener.CC.$default$onPlaybackStateChanged(this, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
                    Player.Listener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
                    Player.Listener.CC.$default$onPlayerError(this, playbackException);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
                    Player.Listener.CC.$default$onPlayerErrorChanged(this, playbackException);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPositionDiscontinuity(int i) {
                    Player.Listener.CC.$default$onPositionDiscontinuity(this, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
                    Player.Listener.CC.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onRenderedFirstFrame() {
                    Player.Listener.CC.$default$onRenderedFirstFrame(this);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onRepeatModeChanged(int i) {
                    Player.Listener.CC.$default$onRepeatModeChanged(this, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onSeekProcessed() {
                    Player.Listener.CC.$default$onSeekProcessed(this);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
                    Player.Listener.CC.$default$onShuffleModeEnabledChanged(this, z);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
                    Player.Listener.CC.$default$onSkipSilenceEnabledChanged(this, z);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
                    Player.Listener.CC.$default$onSurfaceSizeChanged(this, i, i2);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
                    Player.Listener.CC.$default$onTimelineChanged(this, timeline, i);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onTracksChanged(Tracks tracks) {
                    Player.Listener.CC.$default$onTracksChanged(this, tracks);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
                    Player.Listener.CC.$default$onVideoSizeChanged(this, videoSize);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public /* synthetic */ void onVolumeChanged(float f) {
                    Player.Listener.CC.$default$onVolumeChanged(this, f);
                }

                @Override // com.google.android.exoplayer2.Player.Listener
                public void onPlayerStateChanged(boolean z, int i) {
                    if (VideoPlayer.this.audioPlayerReady || i != 3) {
                        return;
                    }
                    VideoPlayer.this.audioPlayerReady = true;
                    VideoPlayer.this.checkPlayersReady();
                }
            });
            this.audioPlayer.setPlayWhenReady(this.autoplay);
        }
    }

    public void preparePlayerLoop(Uri uri, String str, Uri uri2, String str2) {
        Uri uri3;
        String str3;
        LoopingMediaSource loopingMediaSource = null;
        this.videoQualities = null;
        this.videoQualityToSelect = null;
        this.videoUri = uri;
        this.audioUri = uri2;
        this.videoType = str;
        this.audioType = str2;
        this.loopingMediaSource = true;
        this.currentStreamIsHls = false;
        this.mixedAudio = true;
        this.audioPlayerReady = false;
        this.videoPlayerReady = false;
        ensurePlayerCreated();
        LoopingMediaSource loopingMediaSource2 = null;
        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                uri3 = uri;
                str3 = str;
            } else {
                uri3 = uri2;
                str3 = str2;
            }
            LoopingMediaSource loopingMediaSource3 = new LoopingMediaSource(mediaSourceFromUri(uri3, str3));
            if (i == 0) {
                loopingMediaSource = loopingMediaSource3;
            } else {
                loopingMediaSource2 = loopingMediaSource3;
            }
        }
        this.player.setMediaSource(loopingMediaSource, true);
        this.player.prepare();
        this.audioPlayer.setMediaSource(loopingMediaSource2, true);
        this.audioPlayer.prepare();
        activePlayers.add(Integer.valueOf(this.playerId));
    }

    private MediaSource mediaSourceFromUri(Uri uri, String str) {
        MediaItem mediaItemBuild;
        mediaItemBuild = new MediaItem.Builder().setUri(uri).build();
        str.getClass();
        switch (str) {
            case "ss":
                if (this.ssMediaSourceFactory == null) {
                    this.ssMediaSourceFactory = new SsMediaSource.Factory(this.mediaDataSourceFactory);
                }
                return this.ssMediaSourceFactory.createMediaSource(mediaItemBuild);
            case "hls":
                if (this.hlsMediaSourceFactory == null) {
                    this.hlsMediaSourceFactory = new HlsMediaSource.Factory(this.mediaDataSourceFactory);
                }
                return this.hlsMediaSourceFactory.createMediaSource(mediaItemBuild);
            case "dash":
                if (this.dashMediaSourceFactory == null) {
                    this.dashMediaSourceFactory = new DashMediaSource.Factory(this.mediaDataSourceFactory);
                }
                return this.dashMediaSourceFactory.createMediaSource(mediaItemBuild);
            default:
                if (this.progressiveMediaSourceFactory == null) {
                    this.progressiveMediaSourceFactory = new ProgressiveMediaSource.Factory(this.mediaDataSourceFactory);
                }
                return this.progressiveMediaSourceFactory.createMediaSource(mediaItemBuild);
        }
    }

    public void preparePlayer(Uri uri, String str) {
        preparePlayer(uri, str, 3);
    }

    public void preparePlayer(Uri uri, String str, int i) {
        this.videoQualities = null;
        this.videoQualityToSelect = null;
        this.videoUri = uri;
        this.videoType = str;
        this.audioUri = null;
        this.audioType = null;
        boolean z = false;
        this.loopingMediaSource = false;
        this.autoIsOriginal = false;
        this.currentStreamIsHls = false;
        this.videoPlayerReady = false;
        this.mixedAudio = false;
        this.currentUri = uri;
        String scheme = uri != null ? uri.getScheme() : null;
        if (scheme != null && !scheme.startsWith("file")) {
            z = true;
        }
        this.isStreaming = z;
        ensurePlayerCreated();
        this.player.setMediaSource(mediaSourceFromUri(uri, str), true);
        this.player.prepare();
    }

    public void preparePlayer(ArrayList arrayList, Quality quality) {
        ArrayList arrayList2;
        this.videoQualities = arrayList;
        this.videoQualityToSelect = quality;
        this.videoUri = null;
        this.videoType = "hls";
        this.audioUri = null;
        this.audioType = null;
        this.loopingMediaSource = false;
        this.autoIsOriginal = false;
        this.videoPlayerReady = false;
        this.mixedAudio = false;
        this.currentUri = null;
        this.isStreaming = true;
        ensurePlayerCreated();
        this.currentStreamIsHls = false;
        this.selectedQualityIndex = (quality == null || (arrayList2 = this.videoQualities) == null) ? -1 : arrayList2.indexOf(quality);
        setSelectedQuality(true, quality);
        if (this.autoIsOriginal) {
            this.selectedQualityIndex = -1;
        }
    }

    public static Quality getSavedQuality(ArrayList arrayList, MessageObject messageObject) {
        if (ExteraConfig.preferOriginalQuality) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Quality quality = (Quality) obj;
                if (quality.original) {
                    return quality;
                }
            }
        }
        if (messageObject == null) {
            return null;
        }
        return getSavedQuality(arrayList, messageObject.getDialogId(), messageObject.getId());
    }

    public static Quality getSavedQuality(ArrayList arrayList, long j, int i) {
        int i2 = 0;
        String string = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).getString(j + "_" + i + "q2", _UrlKt.FRAGMENT_ENCODE_SET);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Quality quality = (Quality) obj;
            StringBuilder sb = new StringBuilder();
            sb.append(quality.width);
            sb.append("x");
            sb.append(quality.height);
            sb.append(quality.original ? "s" : _UrlKt.FRAGMENT_ENCODE_SET);
            if (TextUtils.equals(string, sb.toString())) {
                return quality;
            }
        }
        return null;
    }

    public static void saveQuality(Quality quality, MessageObject messageObject) {
        if (messageObject == null) {
            return;
        }
        saveQuality(quality, messageObject.getDialogId(), messageObject.getId());
    }

    public static void saveQuality(Quality quality, long j, int i) {
        SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).edit();
        if (quality == null) {
            editorEdit.remove(j + "_" + i + "q2");
        } else {
            String str = j + "_" + i + "q2";
            StringBuilder sb = new StringBuilder();
            sb.append(quality.width);
            sb.append("x");
            sb.append(quality.height);
            sb.append(quality.original ? "s" : _UrlKt.FRAGMENT_ENCODE_SET);
            editorEdit.putString(str, sb.toString());
        }
        editorEdit.apply();
    }

    public static void saveLooping(boolean z, MessageObject messageObject) {
        if (messageObject == null) {
            return;
        }
        ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).edit().putBoolean(messageObject.getDialogId() + "_" + messageObject.getId() + "loop", z).apply();
    }

    public static Boolean getLooping(MessageObject messageObject) {
        if (messageObject == null) {
            return null;
        }
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0);
        String str = messageObject.getDialogId() + "_" + messageObject.getId() + "loop";
        if (sharedPreferences.contains(str)) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, false));
        }
        return null;
    }

    public Quality getQuality(int i) {
        ArrayList arrayList = this.videoQualities;
        if (arrayList == null) {
            return getHighestQuality(Boolean.FALSE);
        }
        if (i < 0 || i >= arrayList.size()) {
            return getHighestQuality(Boolean.FALSE);
        }
        return (Quality) this.videoQualities.get(i);
    }

    public Quality getOriginalQuality() {
        for (int i = 0; i < getQualitiesCount(); i++) {
            Quality quality = getQuality(i);
            if (quality.original) {
                return quality;
            }
        }
        return null;
    }

    public Quality getHighestQuality(Boolean bool) {
        Quality quality = null;
        for (int i = 0; i < getQualitiesCount(); i++) {
            Quality quality2 = getQuality(i);
            if ((bool == null || quality2.original == bool.booleanValue()) && (quality == null || quality.width * quality.height < quality2.width * quality2.height)) {
                quality = quality2;
            }
        }
        return quality;
    }

    public int getQualitiesCount() {
        ArrayList arrayList = this.videoQualities;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public File getLowestFile() {
        ArrayList arrayList = this.videoQualities;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ArrayList arrayList2 = ((Quality) this.videoQualities.get(size)).uris;
                int size2 = arrayList2.size();
                int i = 0;
                while (i < size2) {
                    Object obj = arrayList2.get(i);
                    i++;
                    VideoUri videoUri = (VideoUri) obj;
                    if (!videoUri.isCached()) {
                        videoUri.updateCached(true);
                    }
                    if (videoUri.isCached()) {
                        return new File(videoUri.uri.getPath());
                    }
                }
            }
        }
        Uri uri = this.videoUri;
        if (uri == null || !"file".equalsIgnoreCase(uri.getScheme())) {
            return null;
        }
        return new File(this.videoUri.getPath());
    }

    public int getSelectedQuality() {
        return this.selectedQualityIndex;
    }

    public TLRPC.Document getCurrentDocument() {
        Format videoFormat;
        ArrayList arrayList;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null && (videoFormat = exoPlayer.getVideoFormat()) != null && videoFormat.documentId != 0 && (arrayList = this.videoQualities) != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ArrayList arrayList2 = ((Quality) obj).uris;
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    VideoUri videoUri = (VideoUri) obj2;
                    if (videoUri.docId == videoFormat.documentId) {
                        return videoUri.document;
                    }
                }
            }
        }
        return null;
    }

    public int getCurrentQualityIndex() {
        Format videoFormat;
        if (this.selectedQualityIndex == -1) {
            try {
                if (this.autoIsOriginal) {
                    for (int i = 0; i < getQualitiesCount(); i++) {
                        if (getQuality(i).original) {
                            return i;
                        }
                    }
                }
                ExoPlayer exoPlayer = this.player;
                if (exoPlayer == null || (videoFormat = exoPlayer.getVideoFormat()) == null) {
                    return -1;
                }
                for (int i2 = 0; i2 < getQualitiesCount(); i2++) {
                    Quality quality = getQuality(i2);
                    if (!quality.original && videoFormat.width == quality.width && videoFormat.height == quality.height && videoFormat.bitrate == ((int) Math.floor(((VideoUri) quality.uris.get(0)).bitrate * 8.0d))) {
                        return i2;
                    }
                }
            } catch (Exception e) {
                FileLog.m955e(e);
                return -1;
            }
        }
        return this.selectedQualityIndex;
    }

    private TrackSelectionOverride getQualityTrackSelection(VideoUri videoUri) {
        int i;
        try {
            int iIndexOf = this.manifestUris.indexOf(videoUri);
            MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = this.trackSelector.getCurrentMappedTrackInfo();
            for (int i2 = 0; i2 < currentMappedTrackInfo.getRendererCount(); i2++) {
                TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(i2);
                for (int i3 = 0; i3 < trackGroups.length; i3++) {
                    TrackGroup trackGroup = trackGroups.get(i3);
                    for (int i4 = 0; i4 < trackGroup.length; i4++) {
                        Format format = trackGroup.getFormat(i4);
                        try {
                            i = Integer.parseInt(format.id);
                        } catch (Exception unused) {
                            i = -1;
                        }
                        if (i >= 0 && iIndexOf == i) {
                            return new TrackSelectionOverride(trackGroup, i4);
                        }
                        if (format.width == videoUri.width && format.height == videoUri.height) {
                            return new TrackSelectionOverride(trackGroup, i4);
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            FileLog.m955e(e);
            return null;
        }
    }

    public void setSelectedQuality(int i) {
        if (this.player == null || i == this.selectedQualityIndex) {
            return;
        }
        this.selectedQualityIndex = i;
        ArrayList arrayList = this.videoQualities;
        setSelectedQuality(false, (arrayList == null || i < 0 || i >= arrayList.size()) ? null : (Quality) this.videoQualities.get(i));
    }

    private void setSelectedQuality(boolean z, Quality quality) {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return;
        }
        boolean zIsPlaying = exoPlayer.isPlaying();
        long currentPosition = this.player.getCurrentPosition();
        if (!z) {
            this.fallbackPosition = currentPosition;
            this.fallbackDuration = this.player.getDuration();
        }
        this.videoQualityToSelect = quality;
        boolean z2 = true;
        int i = 0;
        if (quality == null) {
            Uri uriMakeManifest = makeManifest(this.videoQualities);
            Quality originalQuality = getOriginalQuality();
            if (originalQuality != null && originalQuality.uris.size() == 1 && ((VideoUri) originalQuality.uris.get(0)).isCached()) {
                this.currentStreamIsHls = false;
                this.autoIsOriginal = true;
                this.videoQualityToSelect = originalQuality;
                this.player.setMediaSource(mediaSourceFromUri(originalQuality.getDownloadUri().uri, "other"), false);
            } else if (uriMakeManifest != null) {
                this.autoIsOriginal = false;
                MappingTrackSelector mappingTrackSelector = this.trackSelector;
                mappingTrackSelector.setParameters(mappingTrackSelector.getParameters().buildUpon().clearOverrides().build());
                if (this.currentStreamIsHls) {
                    z2 = false;
                } else {
                    this.currentStreamIsHls = true;
                    this.player.setMediaSource(mediaSourceFromUri(uriMakeManifest, "hls"), false);
                }
            } else {
                Quality highestQuality = getHighestQuality(Boolean.TRUE);
                if (highestQuality == null) {
                    highestQuality = getHighestQuality(Boolean.FALSE);
                }
                if (highestQuality == null || highestQuality.uris.isEmpty()) {
                    return;
                }
                this.currentStreamIsHls = false;
                this.videoQualityToSelect = highestQuality;
                this.autoIsOriginal = highestQuality.original;
                this.player.setMediaSource(mediaSourceFromUri(highestQuality.getDownloadUri().uri, "other"), false);
            }
        } else {
            this.autoIsOriginal = false;
            if (quality.uris.isEmpty()) {
                return;
            }
            Uri uriMakeManifest2 = quality.uris.size() > 1 ? makeManifest(this.videoQualities) : null;
            if (uriMakeManifest2 == null || quality.uris.size() == 1 || this.trackSelector.getCurrentMappedTrackInfo() == null) {
                this.currentStreamIsHls = false;
                this.player.setMediaSource(mediaSourceFromUri(quality.getDownloadUri().uri, "other"), false);
            } else {
                if (this.currentStreamIsHls) {
                    z2 = false;
                } else {
                    this.currentStreamIsHls = true;
                    this.player.setMediaSource(mediaSourceFromUri(uriMakeManifest2, "hls"), false);
                }
                TrackSelectionParameters.Builder builderClearOverrides = this.trackSelector.getParameters().buildUpon().clearOverrides();
                ArrayList arrayList = quality.uris;
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    TrackSelectionOverride qualityTrackSelection = getQualityTrackSelection((VideoUri) obj);
                    if (qualityTrackSelection != null) {
                        builderClearOverrides.addOverride(qualityTrackSelection);
                    }
                }
                this.trackSelector.setParameters(builderClearOverrides.build());
            }
        }
        if (z2) {
            this.player.prepare();
            if (!z) {
                this.player.seekTo(currentPosition);
                if (zIsPlaying) {
                    this.player.play();
                }
            }
            Runnable runnable = this.onQualityChangeListener;
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
            activePlayers.add(Integer.valueOf(this.playerId));
        }
    }

    public Quality getCurrentQuality() {
        int currentQualityIndex = getCurrentQualityIndex();
        if (currentQualityIndex < 0 || currentQualityIndex >= getQualitiesCount()) {
            return null;
        }
        return getQuality(currentQualityIndex);
    }

    public void setOnQualityChangeListener(Runnable runnable) {
        this.onQualityChangeListener = runnable;
    }

    public static ArrayList getQualities(int i, TLRPC.Document document, ArrayList arrayList, int i2, boolean z) {
        return getQualities(i, document, arrayList, i2, z, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList getQualities(int i, TLRPC.Document document, ArrayList arrayList, int i2, boolean z, boolean z2) {
        String str;
        ArrayList arrayList2 = new ArrayList();
        if (document != null) {
            arrayList2.add(document);
        }
        if (!MessagesController.getInstance(i).videoIgnoreAltDocuments && arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        LongSparseArray longSparseArray = new LongSparseArray();
        int i3 = 0;
        while (i3 < arrayList2.size()) {
            TLRPC.Document document2 = (TLRPC.Document) arrayList2.get(i3);
            if ("application/x-mpegurl".equalsIgnoreCase(document2.mime_type) && (str = document2.file_name_fixed) != null && str.startsWith("mtproto")) {
                try {
                    longSparseArray.put(Long.parseLong(document2.file_name_fixed.substring(7)), document2);
                    arrayList2.remove(i3);
                    i3--;
                } catch (Exception e) {
                    FileLog.m955e(e);
                }
            }
            i3++;
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            try {
                TLRPC.Document document3 = (TLRPC.Document) arrayList2.get(i4);
                if (!"application/x-mpegurl".equalsIgnoreCase(document3.mime_type) && !"application/x-tgstoryboard".equalsIgnoreCase(document3.mime_type) && !"application/x-tgstoryboardmap".equalsIgnoreCase(document3.mime_type)) {
                    VideoUri videoUriOf = VideoUri.of(i, document3, (TLRPC.Document) longSparseArray.get(document3.id), i2, z2);
                    if (videoUriOf.width > 0 && videoUriOf.height > 0) {
                        if (document3 == document) {
                            videoUriOf.original = true;
                        }
                        arrayList3.add(videoUriOf);
                    }
                }
            } catch (Exception e2) {
                FileLog.m955e(e2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        for (int i5 = 0; i5 < arrayList3.size(); i5++) {
            VideoUri videoUri = (VideoUri) arrayList3.get(i5);
            String str2 = videoUri.codec;
            if (str2 == null) {
                arrayList4.add(videoUri);
            } else if (z) {
                if ("avc".equals(str2) || "h264".equals(videoUri.codec) || "vp9".equals(videoUri.codec) || "vp8".equals(videoUri.codec) || (("av1".equals(videoUri.codec) || "av01".equals(videoUri.codec)) && supportsHardwareDecoder(videoUri.codec))) {
                }
            } else if (("av1".equals(str2) || "av01".equals(videoUri.codec) || "hevc".equals(videoUri.codec) || "h265".equals(videoUri.codec) || "vp9".equals(videoUri.codec)) && !supportsHardwareDecoder(videoUri.codec)) {
            }
        }
        ArrayList arrayList5 = new ArrayList();
        if (arrayList4.isEmpty()) {
            arrayList5.addAll(arrayList3);
        } else {
            arrayList5.addAll(arrayList4);
        }
        return Quality.group(arrayList5);
    }

    public static ArrayList getQualities(int i, TLRPC.MessageMedia messageMedia, boolean z) {
        if (!(messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
            return new ArrayList();
        }
        return getQualities(i, messageMedia.document, messageMedia.alt_documents, 0, false, z);
    }

    public static VideoUri getQualityForThumb(ArrayList arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ArrayList arrayList2 = ((Quality) obj).uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList2.get(i2);
                i2++;
                VideoUri videoUri = (VideoUri) obj2;
                if (videoUri.isCached()) {
                    return videoUri;
                }
            }
        }
        int size3 = arrayList.size();
        VideoUri videoUri2 = null;
        int i3 = 0;
        while (i3 < size3) {
            Object obj3 = arrayList.get(i3);
            i3++;
            ArrayList arrayList3 = ((Quality) obj3).uris;
            int size4 = arrayList3.size();
            int i4 = 0;
            while (i4 < size4) {
                Object obj4 = arrayList3.get(i4);
                i4++;
                VideoUri videoUri3 = (VideoUri) obj4;
                if (!videoUri3.original && (videoUri2 == null || videoUri2.width * videoUri2.height > videoUri3.width * videoUri3.height || videoUri3.bitrate < videoUri2.bitrate)) {
                    if (videoUri3.width <= 900 && videoUri3.height <= 900) {
                        videoUri2 = videoUri3;
                    }
                }
            }
        }
        if (videoUri2 == null) {
            int size5 = arrayList.size();
            int i5 = 0;
            while (i5 < size5) {
                Object obj5 = arrayList.get(i5);
                i5++;
                ArrayList arrayList4 = ((Quality) obj5).uris;
                int size6 = arrayList4.size();
                int i6 = 0;
                while (i6 < size6) {
                    Object obj6 = arrayList4.get(i6);
                    i6++;
                    VideoUri videoUri4 = (VideoUri) obj6;
                    if (videoUri2 == null || videoUri2.width * videoUri2.height > videoUri4.width * videoUri4.height || videoUri4.bitrate < videoUri2.bitrate) {
                        videoUri2 = videoUri4;
                    }
                }
            }
        }
        return videoUri2;
    }

    public static VideoUri getCachedQuality(ArrayList arrayList) {
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ArrayList arrayList2 = ((Quality) obj).uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList2.get(i2);
                i2++;
                VideoUri videoUri = (VideoUri) obj2;
                if (videoUri.isCached()) {
                    return videoUri;
                }
            }
        }
        return null;
    }

    public static VideoUri getQualityForPlayer(ArrayList arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ArrayList arrayList2 = ((Quality) obj).uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList2.get(i2);
                i2++;
                VideoUri videoUri = (VideoUri) obj2;
                if (videoUri.original && videoUri.isCached()) {
                    return videoUri;
                }
            }
        }
        int size3 = arrayList.size();
        VideoUri videoUri2 = null;
        int i3 = 0;
        while (i3 < size3) {
            Object obj3 = arrayList.get(i3);
            i3++;
            ArrayList arrayList3 = ((Quality) obj3).uris;
            int size4 = arrayList3.size();
            int i4 = 0;
            while (i4 < size4) {
                Object obj4 = arrayList3.get(i4);
                i4++;
                VideoUri videoUri3 = (VideoUri) obj4;
                if (!videoUri3.original && supportsHardwareDecoder(videoUri3.codec)) {
                    if (videoUri2 != null) {
                        int i5 = videoUri3.width;
                        int i6 = videoUri3.height;
                        int i7 = i5 * i6;
                        int i8 = videoUri2.width;
                        int i9 = videoUri2.height;
                        if (i7 > i8 * i9 || (i5 * i6 == i8 * i9 && videoUri3.bitrate < videoUri2.bitrate)) {
                        }
                    }
                    videoUri2 = videoUri3;
                }
            }
        }
        if (videoUri2 == null) {
            int size5 = arrayList.size();
            int i10 = 0;
            while (i10 < size5) {
                Object obj5 = arrayList.get(i10);
                i10++;
                ArrayList arrayList4 = ((Quality) obj5).uris;
                int size6 = arrayList4.size();
                int i11 = 0;
                while (i11 < size6) {
                    Object obj6 = arrayList4.get(i11);
                    i11++;
                    VideoUri videoUri4 = (VideoUri) obj6;
                    if (videoUri2 == null || videoUri2.width * videoUri2.height > videoUri4.width * videoUri4.height || videoUri4.bitrate < videoUri2.bitrate) {
                        videoUri2 = videoUri4;
                    }
                }
            }
        }
        return videoUri2;
    }

    public static String toMime(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "av1":
            case "av01":
                return "video/av01";
            case "avc":
            case "h264":
                return MediaController.VIDEO_MIME_TYPE;
            case "vp8":
                return "video/x-vnd.on2.vp8";
            case "vp9":
                return "video/x-vnd.on2.vp9";
            case "h265":
            case "hevc":
                return "video/hevc";
            default:
                return "video/" + str;
        }
    }

    public static boolean supportsHardwareDecoder(String str) {
        try {
            String mime = toMime(str);
            if (mime == null) {
                return false;
            }
            if (cachedSupportedCodec == null) {
                cachedSupportedCodec = new HashMap();
            }
            Boolean bool = (Boolean) cachedSupportedCodec.get(mime);
            if (bool != null) {
                return bool.booleanValue();
            }
            if (MessagesController.getGlobalMainSettings().getBoolean("unsupport_" + mime, false)) {
                return false;
            }
            int codecCount = MediaCodecList.getCodecCount();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (!codecInfoAt.isEncoder() && MediaCodecUtil.isHardwareAccelerated(codecInfoAt, mime)) {
                    for (String str2 : codecInfoAt.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(mime)) {
                            cachedSupportedCodec.put(mime, Boolean.TRUE);
                            return true;
                        }
                    }
                }
            }
            cachedSupportedCodec.put(mime, Boolean.FALSE);
            return false;
        } catch (Exception e) {
            FileLog.m955e(e);
            return false;
        }
    }

    public Uri makeManifest(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        sb.append("#EXTM3U\n");
        sb.append("#EXT-X-VERSION:6\n");
        sb.append("#EXT-X-INDEPENDENT-SEGMENTS\n\n");
        this.manifestUris = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ArrayList arrayList3 = ((Quality) obj).uris;
            int size2 = arrayList3.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList3.get(i2);
                i2++;
                VideoUri videoUri = (VideoUri) obj2;
                this.mediaDataSourceFactory.putDocumentUri(videoUri.docId, videoUri.uri);
                this.mediaDataSourceFactory.putDocumentUri(videoUri.manifestDocId, videoUri.m3u8uri);
                if (videoUri.m3u8uri != null) {
                    this.manifestUris.add(videoUri);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("#EXT-X-STREAM-INF:BANDWIDTH=");
                    sb2.append((int) Math.floor(videoUri.bitrate * 8.0d));
                    sb2.append(",RESOLUTION=");
                    sb2.append(videoUri.width);
                    sb2.append("x");
                    sb2.append(videoUri.height);
                    String mime = toMime(videoUri.codec);
                    if (mime != null) {
                        sb2.append(",MIME=\"");
                        sb2.append(mime);
                        sb2.append("\"");
                    }
                    if (videoUri.isCached() && videoUri.isManifestCached()) {
                        sb2.append(",CACHED=\"true\"");
                    }
                    sb2.append(",DOCID=\"");
                    sb2.append(videoUri.docId);
                    sb2.append("\"");
                    sb2.append(",ACCOUNT=\"");
                    sb2.append(videoUri.currentAccount);
                    sb2.append("\"");
                    sb2.append("\n");
                    if (videoUri.isManifestCached()) {
                        sb2.append(videoUri.m3u8uri);
                        sb2.append("\n\n");
                    } else {
                        sb2.append("mtproto:");
                        sb2.append(videoUri.manifestDocId);
                        sb2.append("\n\n");
                    }
                    arrayList2.add(sb2.toString());
                    z = true;
                }
            }
        }
        if (!z) {
            return null;
        }
        Collections.reverse(arrayList2);
        sb.append(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, arrayList2));
        return Uri.parse("data:application/x-mpegurl;base64," + Base64.encodeToString(sb.toString().getBytes(), 2));
    }

    public static class Quality {
        public int height;
        public boolean original;
        public final ArrayList uris;
        public int width;

        public Quality(VideoUri videoUri) {
            ArrayList arrayList = new ArrayList();
            this.uris = arrayList;
            this.original = videoUri.original;
            this.width = videoUri.width;
            this.height = videoUri.height;
            arrayList.add(videoUri);
        }

        public static ArrayList group(ArrayList arrayList) {
            Quality quality;
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                VideoUri videoUri = (VideoUri) obj;
                if (videoUri.original) {
                    arrayList2.add(new Quality(videoUri));
                } else {
                    int size2 = arrayList2.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size2) {
                            quality = null;
                            break;
                        }
                        Object obj2 = arrayList2.get(i2);
                        i2++;
                        quality = (Quality) obj2;
                        if (!quality.original && quality.width == videoUri.width && quality.height == videoUri.height) {
                            break;
                        }
                    }
                    if (quality != null && !SharedConfig.debugVideoQualities) {
                        quality.uris.add(videoUri);
                    } else {
                        arrayList2.add(new Quality(videoUri));
                    }
                }
            }
            return arrayList2;
        }

        public static ArrayList filterByCodec(ArrayList arrayList) {
            if (arrayList == null) {
                return null;
            }
            int i = 0;
            while (i < arrayList.size()) {
                Quality quality = (Quality) arrayList.get(i);
                int i2 = 0;
                while (i2 < quality.uris.size()) {
                    VideoUri videoUri = (VideoUri) quality.uris.get(i2);
                    if (!TextUtils.isEmpty(videoUri.codec) && !VideoPlayer.supportsHardwareDecoder(videoUri.codec)) {
                        quality.uris.remove(i2);
                        i2--;
                    }
                    i2++;
                }
                if (quality.uris.isEmpty()) {
                    arrayList.remove(i);
                    i--;
                }
                i++;
            }
            return arrayList;
        }

        public String toString() {
            String str;
            boolean z = SharedConfig.debugVideoQualities;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (z) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.width);
                sb.append("x");
                sb.append(this.height);
                if (this.original) {
                    str = " (" + LocaleController.getString(C2484R.string.QualitySource) + ")";
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                sb.append(str);
                sb.append("\n");
                sb.append(AndroidUtilities.formatFileSize((long) ((VideoUri) this.uris.get(0)).bitrate).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET));
                sb.append("/s");
                if (((VideoUri) this.uris.get(0)).codec != null) {
                    str2 = ", " + ((VideoUri) this.uris.get(0)).codec;
                }
                sb.append(str2);
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m1016p());
            sb2.append("p");
            if (this.original) {
                str2 = " (" + LocaleController.getString(C2484R.string.QualitySource) + ")";
            }
            sb2.append(str2);
            return sb2.toString();
        }

        /* JADX INFO: renamed from: p */
        public int m1016p() {
            int iMin = Math.min(this.width, this.height);
            if (Math.abs(iMin - 2160) < 55) {
                return 2160;
            }
            if (Math.abs(iMin - 1440) < 55) {
                return 1440;
            }
            if (Math.abs(iMin - 1080) < 55) {
                return 1080;
            }
            if (Math.abs(iMin - 720) < 55) {
                return 720;
            }
            if (Math.abs(iMin - 480) < 55) {
                return 480;
            }
            if (Math.abs(iMin - 360) < 55) {
                return 360;
            }
            if (Math.abs(iMin - 240) < 55) {
                return 240;
            }
            if (Math.abs(iMin - 144) < 55) {
                return 144;
            }
            return iMin;
        }

        public TLRPC.Document getDownloadDocument() {
            VideoUri videoUri = null;
            if (this.uris.isEmpty()) {
                return null;
            }
            ArrayList arrayList = this.uris;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                VideoUri videoUri2 = (VideoUri) obj;
                if (videoUri2.isCached()) {
                    return videoUri2.document;
                }
            }
            long j = Long.MAX_VALUE;
            for (int i2 = 0; i2 < this.uris.size(); i2++) {
                VideoUri videoUri3 = (VideoUri) this.uris.get(i2);
                if (videoUri3.size < j && VideoPlayer.supportsHardwareDecoder(videoUri3.codec)) {
                    j = videoUri3.size;
                    videoUri = videoUri3;
                }
            }
            if (videoUri != null) {
                return videoUri.document;
            }
            return ((VideoUri) this.uris.get(0)).document;
        }

        public VideoUri getDownloadUri() {
            VideoUri videoUri = null;
            if (this.uris.isEmpty()) {
                return null;
            }
            ArrayList arrayList = this.uris;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                VideoUri videoUri2 = (VideoUri) obj;
                if (videoUri2.isCached()) {
                    return videoUri2;
                }
            }
            long j = Long.MAX_VALUE;
            for (int i2 = 0; i2 < this.uris.size(); i2++) {
                VideoUri videoUri3 = (VideoUri) this.uris.get(i2);
                if (videoUri3.size < j && VideoPlayer.supportsHardwareDecoder(videoUri3.codec)) {
                    j = videoUri3.size;
                    videoUri = videoUri3;
                }
            }
            return videoUri != null ? videoUri : (VideoUri) this.uris.get(0);
        }
    }

    public static class VideoUri {
        public double bitrate;
        public String codec;
        public int currentAccount;
        public long docId;
        public TLRPC.Document document;
        public double duration;
        public int height;
        public Uri m3u8uri;
        public long manifestDocId;
        public TLRPC.Document manifestDocument;
        public boolean original;
        public long size;
        public Uri uri;
        public int width;

        public boolean isCached() {
            Uri uri = this.uri;
            return uri != null && "file".equalsIgnoreCase(uri.getScheme());
        }

        public boolean isManifestCached() {
            Uri uri = this.m3u8uri;
            return uri != null && "file".equalsIgnoreCase(uri.getScheme());
        }

        public void updateCached(boolean z) {
            if (!isCached() && this.document != null) {
                File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(this.document, null, false, z);
                if (pathToAttach != null && pathToAttach.exists()) {
                    this.uri = Uri.fromFile(pathToAttach);
                } else {
                    File pathToAttach2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(this.document, null, true, z);
                    if (pathToAttach2 != null && pathToAttach2.exists()) {
                        this.uri = Uri.fromFile(pathToAttach2);
                    }
                }
            }
            if (isManifestCached() || this.manifestDocument == null) {
                return;
            }
            File pathToAttach3 = FileLoader.getInstance(this.currentAccount).getPathToAttach(this.manifestDocument, null, false, z);
            if (pathToAttach3 != null && pathToAttach3.exists()) {
                this.m3u8uri = Uri.fromFile(pathToAttach3);
                return;
            }
            File pathToAttach4 = FileLoader.getInstance(this.currentAccount).getPathToAttach(this.manifestDocument, null, true, z);
            if (pathToAttach4 == null || !pathToAttach4.exists()) {
                return;
            }
            this.m3u8uri = Uri.fromFile(pathToAttach4);
        }

        public static Uri getUri(int i, TLRPC.Document document, int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append("?account=");
            sb.append(i);
            sb.append("&id=");
            sb.append(document.id);
            sb.append("&hash=");
            sb.append(document.access_hash);
            sb.append("&dc=");
            sb.append(document.dc_id);
            sb.append("&size=");
            sb.append(document.size);
            sb.append("&mime=");
            sb.append(URLEncoder.encode(document.mime_type, "UTF-8"));
            sb.append("&rid=");
            sb.append(i2);
            sb.append("&name=");
            sb.append(URLEncoder.encode(FileLoader.getDocumentFileName(document), "UTF-8"));
            sb.append("&reference=");
            byte[] bArr = document.file_reference;
            if (bArr == null) {
                bArr = new byte[0];
            }
            sb.append(Utilities.bytesToHex(bArr));
            return Uri.parse("tg://" + MessageObject.getFileName(document) + sb.toString());
        }

        public static VideoUri of(int i, TLRPC.Document document, TLRPC.Document document2, int i2, boolean z) {
            TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo;
            String str;
            VideoUri videoUri = new VideoUri();
            int i3 = 0;
            while (true) {
                if (i3 >= document.attributes.size()) {
                    tL_documentAttributeVideo = null;
                    break;
                }
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) documentAttribute;
                    break;
                }
                i3++;
            }
            String lowerCase = (tL_documentAttributeVideo == null || (str = tL_documentAttributeVideo.video_codec) == null) ? null : str.toLowerCase();
            videoUri.currentAccount = i;
            videoUri.document = document;
            videoUri.docId = document.id;
            videoUri.uri = getUri(i, document, i2);
            if (document2 != null) {
                videoUri.manifestDocument = document2;
                videoUri.manifestDocId = document2.id;
                videoUri.m3u8uri = getUri(i, document2, i2);
                File pathToAttach = FileLoader.getInstance(i).getPathToAttach(document2, null, false, z);
                if (pathToAttach != null && pathToAttach.exists()) {
                    videoUri.m3u8uri = Uri.fromFile(pathToAttach);
                } else {
                    File pathToAttach2 = FileLoader.getInstance(i).getPathToAttach(document2, null, true, z);
                    if (pathToAttach2 != null && pathToAttach2.exists()) {
                        videoUri.m3u8uri = Uri.fromFile(pathToAttach2);
                    }
                }
            }
            videoUri.codec = lowerCase;
            long j = document.size;
            videoUri.size = j;
            if (tL_documentAttributeVideo != null) {
                double d = tL_documentAttributeVideo.duration;
                videoUri.duration = d;
                videoUri.width = tL_documentAttributeVideo.f1339w;
                videoUri.height = tL_documentAttributeVideo.f1338h;
                videoUri.bitrate = j / d;
            }
            File pathToAttach3 = FileLoader.getInstance(i).getPathToAttach(document, null, false, z);
            if (pathToAttach3 != null && pathToAttach3.exists()) {
                videoUri.uri = Uri.fromFile(pathToAttach3);
                return videoUri;
            }
            File pathToAttach4 = FileLoader.getInstance(i).getPathToAttach(document, null, true, z);
            if (pathToAttach4 != null && pathToAttach4.exists()) {
                videoUri.uri = Uri.fromFile(pathToAttach4);
            }
            return videoUri;
        }
    }

    public boolean isPlayerPrepared() {
        return this.player != null;
    }

    public void releasePlayer(boolean z) {
        activePlayers.remove(Integer.valueOf(this.playerId));
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.release();
            this.player = null;
        }
        ExoPlayer exoPlayer2 = this.audioPlayer;
        if (exoPlayer2 != null) {
            exoPlayer2.release();
            this.audioPlayer = null;
        }
        if (this.shouldPauseOther) {
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.playerDidStartPlaying);
        }
        playerCounter--;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onSeekStarted(AnalyticsListener.EventTime eventTime) {
        VideoPlayerDelegate videoPlayerDelegate = this.delegate;
        if (videoPlayerDelegate != null) {
            videoPlayerDelegate.onSeekStarted(eventTime);
        }
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onSeekProcessed(AnalyticsListener.EventTime eventTime) {
        VideoPlayerDelegate videoPlayerDelegate = this.delegate;
        if (videoPlayerDelegate != null) {
            videoPlayerDelegate.onSeekFinished(eventTime);
        }
        ArrayList arrayList = this.seekFinishedListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((Runnable) obj).run();
        }
        this.seekFinishedListeners.clear();
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Object obj, long j) {
        this.fallbackPosition = -9223372036854775807L;
        this.fallbackDuration = -9223372036854775807L;
        VideoPlayerDelegate videoPlayerDelegate = this.delegate;
        if (videoPlayerDelegate != null) {
            videoPlayerDelegate.onRenderedFirstFrame(eventTime);
        }
    }

    public void setTextureView(TextureView textureView) {
        if (this.textureView == textureView) {
            return;
        }
        this.textureView = textureView;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.setVideoTextureView(textureView);
    }

    public void setSurfaceView(SurfaceView surfaceView) {
        if (this.surfaceView == surfaceView) {
            return;
        }
        this.surfaceView = surfaceView;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.setVideoSurfaceView(surfaceView);
    }

    public void setSurface(Surface surface) {
        if (this.surface == surface) {
            return;
        }
        this.surface = surface;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.setVideoSurface(surface);
    }

    public boolean getPlayWhenReady() {
        return this.player.getPlayWhenReady();
    }

    public int getPlaybackState() {
        return this.player.getPlaybackState();
    }

    public Uri getCurrentUri() {
        return this.currentUri;
    }

    public void play() {
        this.mixedPlayWhenReady = true;
        if (this.mixedAudio && (!this.audioPlayerReady || !this.videoPlayerReady)) {
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.setPlayWhenReady(false);
            }
            ExoPlayer exoPlayer2 = this.audioPlayer;
            if (exoPlayer2 != null) {
                exoPlayer2.setPlayWhenReady(false);
                return;
            }
            return;
        }
        ExoPlayer exoPlayer3 = this.player;
        if (exoPlayer3 != null) {
            exoPlayer3.setPlayWhenReady(true);
        }
        ExoPlayer exoPlayer4 = this.audioPlayer;
        if (exoPlayer4 != null) {
            exoPlayer4.setPlayWhenReady(true);
        }
    }

    public void pause() {
        this.mixedPlayWhenReady = false;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(false);
        }
        ExoPlayer exoPlayer2 = this.audioPlayer;
        if (exoPlayer2 != null) {
            exoPlayer2.setPlayWhenReady(false);
        }
        if (this.audioVisualizerDelegate != null) {
            this.audioUpdateHandler.removeCallbacksAndMessages(null);
            this.audioVisualizerDelegate.onVisualizerUpdate(false, true, null);
        }
    }

    public void setPlaybackSpeed(float f) {
        try {
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.setPlaybackParameters(new PlaybackParameters(f, f > 1.0f ? 0.98f : 1.0f));
            }
        } catch (Exception unused) {
        }
    }

    public float getPlaybackSpeed() {
        PlaybackParameters playbackParameters;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null || (playbackParameters = exoPlayer.getPlaybackParameters()) == null) {
            return 1.0f;
        }
        return playbackParameters.speed;
    }

    public void setPlayWhenReady(boolean z) {
        this.mixedPlayWhenReady = z;
        if (z && this.mixedAudio && (!this.audioPlayerReady || !this.videoPlayerReady)) {
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.setPlayWhenReady(false);
            }
            ExoPlayer exoPlayer2 = this.audioPlayer;
            if (exoPlayer2 != null) {
                exoPlayer2.setPlayWhenReady(false);
                return;
            }
            return;
        }
        this.autoplay = z;
        ExoPlayer exoPlayer3 = this.player;
        if (exoPlayer3 != null) {
            exoPlayer3.setPlayWhenReady(z);
        }
        ExoPlayer exoPlayer4 = this.audioPlayer;
        if (exoPlayer4 != null) {
            exoPlayer4.setPlayWhenReady(z);
        }
    }

    public long getDuration() {
        long j = this.fallbackDuration;
        if (j != -9223372036854775807L) {
            return j;
        }
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            return exoPlayer.getDuration();
        }
        return 0L;
    }

    public long getCurrentPosition() {
        long j = this.fallbackPosition;
        if (j != -9223372036854775807L) {
            return j;
        }
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            return exoPlayer.getCurrentPosition();
        }
        return 0L;
    }

    public boolean isMuted() {
        ExoPlayer exoPlayer = this.player;
        return exoPlayer != null && exoPlayer.getVolume() == 0.0f;
    }

    public void setMute(boolean z) {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.setVolume(z ? 0.0f : 1.0f);
        }
        ExoPlayer exoPlayer2 = this.audioPlayer;
        if (exoPlayer2 != null) {
            exoPlayer2.setVolume(z ? 0.0f : 1.0f);
        }
    }

    public void setVolume(float f) {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.setVolume(f);
        }
        ExoPlayer exoPlayer2 = this.audioPlayer;
        if (exoPlayer2 != null) {
            exoPlayer2.setVolume(f);
        }
    }

    public void seekTo(long j) {
        seekTo(j, false);
    }

    public void seekTo(long j, boolean z) {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.setSeekParameters(z ? SeekParameters.CLOSEST_SYNC : SeekParameters.EXACT);
            this.player.seekTo(j);
        }
    }

    public void seekTo(long j, boolean z, Runnable runnable) {
        if (this.player != null) {
            if (runnable != null) {
                this.seekFinishedListeners.add(runnable);
            }
            this.player.setSeekParameters(z ? SeekParameters.CLOSEST_SYNC : SeekParameters.EXACT);
            this.player.seekTo(j);
        }
    }

    public void setDelegate(VideoPlayerDelegate videoPlayerDelegate) {
        this.delegate = videoPlayerDelegate;
    }

    public void setAudioVisualizerDelegate(AudioVisualizerDelegate audioVisualizerDelegate) {
        this.audioVisualizerDelegate = audioVisualizerDelegate;
    }

    public long getBufferedPosition() {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            return this.isStreaming ? exoPlayer.getBufferedPosition() : exoPlayer.getDuration();
        }
        return 0L;
    }

    public boolean isPlaying() {
        if (this.mixedAudio && this.mixedPlayWhenReady) {
            return true;
        }
        ExoPlayer exoPlayer = this.player;
        return exoPlayer != null && exoPlayer.getPlayWhenReady();
    }

    public boolean isBuffering() {
        return this.player != null && this.lastReportedPlaybackState == 2;
    }

    public void setStreamType(int i) {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.setAudioAttributes(new AudioAttributes.Builder().setUsage(i == 0 ? 2 : 1).build(), this.handleAudioFocus);
        }
        ExoPlayer exoPlayer2 = this.audioPlayer;
        if (exoPlayer2 != null) {
            exoPlayer2.setAudioAttributes(new AudioAttributes.Builder().setUsage(i != 0 ? 1 : 2).build(), true);
        }
    }

    public void setLooping(boolean z) {
        if (this.looping != z) {
            this.looping = z;
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.setRepeatMode(z ? 2 : 0);
            }
        }
    }

    public boolean isLooping() {
        return this.looping;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPlayersReady() {
        if (this.audioPlayerReady && this.videoPlayerReady && this.mixedPlayWhenReady) {
            play();
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlayerStateChanged(boolean z, int i) {
        maybeReportPlayerState();
        if (z && i == 3 && !isMuted() && this.shouldPauseOther) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.playerDidStartPlaying, this);
        }
        if (!this.videoPlayerReady && i == 3) {
            this.videoPlayerReady = true;
            checkPlayersReady();
        }
        if (i != 3) {
            this.audioUpdateHandler.removeCallbacksAndMessages(null);
            AudioVisualizerDelegate audioVisualizerDelegate = this.audioVisualizerDelegate;
            if (audioVisualizerDelegate != null) {
                audioVisualizerDelegate.onVisualizerUpdate(false, true, null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        if (i == 0) {
            this.repeatCount++;
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlayerError(final PlaybackException playbackException) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onPlayerError$1(playbackException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPlayerError$1(PlaybackException playbackException) {
        Throwable cause = playbackException.getCause();
        if ((cause instanceof MediaCodecDecoderException) && (cause.toString().contains("av1") || cause.toString().contains("av01"))) {
            FileLog.m955e(playbackException);
            FileLog.m953e("av1 codec failed, we think this codec is not supported");
            MessagesController.getGlobalMainSettings().edit().putBoolean("unsupport_video/av01", true).commit();
            HashMap map = cachedSupportedCodec;
            if (map != null) {
                map.clear();
            }
            ArrayList arrayListFilterByCodec = Quality.filterByCodec(this.videoQualities);
            this.videoQualities = arrayListFilterByCodec;
            if (arrayListFilterByCodec != null) {
                preparePlayer(arrayListFilterByCodec, this.videoQualityToSelect);
                return;
            }
            return;
        }
        TextureView textureView = this.textureView;
        if (textureView != null && ((!this.triedReinit && (cause instanceof MediaCodecRenderer.DecoderInitializationException)) || (cause instanceof SurfaceNotValidException))) {
            this.triedReinit = true;
            if (this.player != null) {
                ViewGroup viewGroup = (ViewGroup) textureView.getParent();
                if (viewGroup != null) {
                    int iIndexOfChild = viewGroup.indexOfChild(this.textureView);
                    viewGroup.removeView(this.textureView);
                    viewGroup.addView(this.textureView, iIndexOfChild);
                }
                DispatchQueue dispatchQueue = this.workerQueue;
                if (dispatchQueue != null) {
                    dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onPlayerError$0();
                        }
                    });
                    return;
                }
                this.player.clearVideoTextureView(this.textureView);
                this.player.setVideoTextureView(this.textureView);
                ArrayList arrayList = this.videoQualities;
                if (arrayList != null) {
                    preparePlayer(arrayList, this.videoQualityToSelect);
                } else if (this.loopingMediaSource) {
                    preparePlayerLoop(this.videoUri, this.videoType, this.audioUri, this.audioType);
                } else {
                    preparePlayer(this.videoUri, this.videoType);
                }
                play();
                return;
            }
            return;
        }
        VideoPlayerDelegate videoPlayerDelegate = this.delegate;
        if (videoPlayerDelegate != null) {
            videoPlayerDelegate.onError(this, playbackException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPlayerError$0() {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.clearVideoTextureView(this.textureView);
            this.player.setVideoTextureView(this.textureView);
            ArrayList arrayList = this.videoQualities;
            if (arrayList != null) {
                preparePlayer(arrayList, this.videoQualityToSelect);
            } else if (this.loopingMediaSource) {
                preparePlayerLoop(this.videoUri, this.videoType, this.audioUri, this.audioType);
            } else {
                preparePlayer(this.videoUri, this.videoType);
            }
            play();
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onVideoSizeChanged(VideoSize videoSize) {
        this.delegate.onVideoSizeChanged(videoSize.width, videoSize.height, videoSize.unappliedRotationDegrees, videoSize.pixelWidthHeightRatio);
        Player.Listener.CC.$default$onVideoSizeChanged(this, videoSize);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onRenderedFirstFrame() {
        this.delegate.onRenderedFirstFrame();
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
        return this.delegate.onSurfaceDestroyed(surfaceTexture);
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.delegate.onSurfaceTextureUpdated(surfaceTexture);
    }

    private void maybeReportPlayerState() {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return;
        }
        boolean playWhenReady = exoPlayer.getPlayWhenReady();
        int playbackState = this.player.getPlaybackState();
        if (this.lastReportedPlayWhenReady == playWhenReady && this.lastReportedPlaybackState == playbackState) {
            return;
        }
        this.delegate.onStateChanged(playWhenReady, playbackState);
        this.lastReportedPlayWhenReady = playWhenReady;
        this.lastReportedPlaybackState = playbackState;
    }

    public int getRepeatCount() {
        return this.repeatCount;
    }

    /* JADX INFO: loaded from: classes7.dex */
    private class AudioVisualizerRenderersFactory extends DefaultRenderersFactory {
        public AudioVisualizerRenderersFactory(Context context) {
            super(context);
        }

        @Override // com.google.android.exoplayer2.DefaultRenderersFactory
        protected AudioSink buildAudioSink(Context context, boolean z, boolean z2, boolean z3) {
            return new DefaultAudioSink.Builder().setAudioCapabilities(AudioCapabilities.getCapabilities(context)).setEnableFloatOutput(z).setEnableAudioTrackPlaybackParams(z2).setAudioProcessors(new AudioProcessor[]{new TeeAudioProcessor(VideoPlayer.this.new VisualizerBufferSink())}).setOffloadMode(z3 ? 1 : 0).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    class VisualizerBufferSink implements TeeAudioProcessor.AudioBufferSink {
        ByteBuffer byteBuffer;
        long lastUpdateTime;
        private final int BUFFER_SIZE = 1024;
        private final int MAX_BUFFER_SIZE = 8192;
        FourierTransform.FFT fft = new FourierTransform.FFT(1024, 48000.0f);
        float[] real = new float[1024];
        int position = 0;

        @Override // com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink
        public void flush(int i, int i2, int i3) {
        }

        public VisualizerBufferSink() {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(8192);
            this.byteBuffer = byteBufferAllocateDirect;
            byteBufferAllocateDirect.position(0);
        }

        @Override // com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink
        public void handleBuffer(ByteBuffer byteBuffer) {
            if (VideoPlayer.this.audioVisualizerDelegate == null) {
                return;
            }
            if (byteBuffer == AudioProcessor.EMPTY_BUFFER || !VideoPlayer.this.mixedPlayWhenReady) {
                VideoPlayer.this.audioUpdateHandler.postDelayed(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$VisualizerBufferSink$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleBuffer$0();
                    }
                }, 80L);
                return;
            }
            if (VideoPlayer.this.audioVisualizerDelegate.needUpdate()) {
                int iLimit = byteBuffer.limit();
                int i = 0;
                if (iLimit > 8192) {
                    VideoPlayer.this.audioUpdateHandler.removeCallbacksAndMessages(null);
                    VideoPlayer.this.audioVisualizerDelegate.onVisualizerUpdate(false, true, null);
                    return;
                }
                this.byteBuffer.put(byteBuffer);
                int i2 = this.position + iLimit;
                this.position = i2;
                if (i2 >= 1024) {
                    this.byteBuffer.position(0);
                    for (int i3 = 0; i3 < 1024; i3++) {
                        this.real[i3] = this.byteBuffer.getShort() / 32768.0f;
                    }
                    this.byteBuffer.rewind();
                    this.position = 0;
                    this.fft.forward(this.real);
                    float f = 0.0f;
                    int i4 = 0;
                    while (true) {
                        float f2 = 1.0f;
                        if (i4 >= 1024) {
                            break;
                        }
                        float f3 = this.fft.getSpectrumReal()[i4];
                        float f4 = this.fft.getSpectrumImaginary()[i4];
                        float fSqrt = ((float) Math.sqrt((f3 * f3) + (f4 * f4))) / 30.0f;
                        if (fSqrt <= 1.0f) {
                            f2 = fSqrt < 0.0f ? 0.0f : fSqrt;
                        }
                        f += f2 * f2;
                        i4++;
                    }
                    float fSqrt2 = (float) Math.sqrt(f / 1024);
                    final float[] fArr = new float[7];
                    fArr[6] = fSqrt2;
                    if (fSqrt2 < 0.4f) {
                        while (i < 7) {
                            fArr[i] = 0.0f;
                            i++;
                        }
                    } else {
                        while (i < 6) {
                            int i5 = 170 * i;
                            float f5 = this.fft.getSpectrumReal()[i5];
                            float f6 = this.fft.getSpectrumImaginary()[i5];
                            float fSqrt3 = (float) (Math.sqrt((f5 * f5) + (f6 * f6)) / 30.0d);
                            fArr[i] = fSqrt3;
                            if (fSqrt3 > 1.0f) {
                                fArr[i] = 1.0f;
                            } else if (fSqrt3 < 0.0f) {
                                fArr[i] = 0.0f;
                            }
                            i++;
                        }
                    }
                    if (System.currentTimeMillis() - this.lastUpdateTime < 64) {
                        return;
                    }
                    this.lastUpdateTime = System.currentTimeMillis();
                    VideoPlayer.this.audioUpdateHandler.postDelayed(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$VisualizerBufferSink$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$handleBuffer$1(fArr);
                        }
                    }, 130L);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$handleBuffer$0() {
            VideoPlayer.this.audioUpdateHandler.removeCallbacksAndMessages(null);
            VideoPlayer.this.audioVisualizerDelegate.onVisualizerUpdate(false, true, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$handleBuffer$1(float[] fArr) {
            VideoPlayer.this.audioVisualizerDelegate.onVisualizerUpdate(true, true, fArr);
        }
    }

    public boolean isHDR() {
        ColorInfo colorInfo;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return false;
        }
        try {
            Format videoFormat = exoPlayer.getVideoFormat();
            if (videoFormat != null && (colorInfo = videoFormat.colorInfo) != null) {
                int i = colorInfo.colorTransfer;
                return i == 6 || i == 7;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public StoryEntry.HDRInfo getHDRStaticInfo(StoryEntry.HDRInfo hDRInfo) {
        if (hDRInfo == null) {
            hDRInfo = new StoryEntry.HDRInfo();
        }
        try {
            MediaFormat mediaFormat = ((MediaCodecRenderer) this.player.getRenderer(0)).codecOutputMediaFormat;
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            if (byteBuffer.get() == 0) {
                hDRInfo.maxlum = byteBuffer.getShort(17);
                hDRInfo.minlum = byteBuffer.getShort(19) * 1.0E-4f;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (mediaFormat.containsKey("color-transfer")) {
                    hDRInfo.colorTransfer = mediaFormat.getInteger("color-transfer");
                }
                if (mediaFormat.containsKey("color-standard")) {
                    hDRInfo.colorStandard = mediaFormat.getInteger("color-standard");
                }
                if (mediaFormat.containsKey("color-range")) {
                    hDRInfo.colorRange = mediaFormat.getInteger("color-range");
                }
            }
            return hDRInfo;
        } catch (Exception unused) {
            hDRInfo.minlum = 0.0f;
            hDRInfo.maxlum = 0.0f;
            return hDRInfo;
        }
    }

    public void setWorkerQueue(DispatchQueue dispatchQueue) {
        this.workerQueue = dispatchQueue;
        this.player.setWorkerQueue(dispatchQueue);
    }

    public void setIsStory() {
        this.isStory = true;
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onTracksChanged(Tracks tracks) {
        Player.Listener.CC.$default$onTracksChanged(this, tracks);
        Runnable runnable = this.onQualityChangeListener;
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    public ChromecastMediaVariations getCurrentChromecastMedia(String str, String str2, String str3) {
        if (this.videoQualities == null) {
            if (this.videoUri == null) {
                return null;
            }
            String str4 = "/mtproto_" + str;
            String queryParameter = this.videoUri.getQueryParameter("mime");
            return ChromecastMediaVariations.of(ChromecastMedia.Builder.fromUri(this.videoUri, str4, TextUtils.isEmpty(queryParameter) ? "video/mp4" : queryParameter).setTitle(str2).setSubtitle(str3).build());
        }
        ChromecastMediaVariations.Builder builder = new ChromecastMediaVariations.Builder();
        ArrayList arrayList = this.videoQualities;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ArrayList arrayList2 = ((Quality) obj).uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList2.get(i2);
                i2++;
                VideoUri videoUri = (VideoUri) obj2;
                StringBuilder sb = new StringBuilder();
                sb.append("/mtproto_");
                ArrayList arrayList3 = arrayList;
                sb.append(videoUri.docId);
                String string = sb.toString();
                TLRPC.Document document = videoUri.document;
                String str5 = document != null ? document.mime_type : null;
                if (TextUtils.isEmpty(str5)) {
                    str5 = "video/mp4";
                }
                builder.add(ChromecastMedia.Builder.fromUri(videoUri.uri, string, str5).setTitle(str2).setSubtitle(str3).setSize(videoUri.width, videoUri.height).build());
                arrayList = arrayList3;
            }
        }
        return builder.build();
    }
}
