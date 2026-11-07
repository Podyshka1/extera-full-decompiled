package org.telegram.ui.Components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.SurfaceTexture;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.util.LongSparseArray;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoListener;
import androidx.media3.common.VideoSize;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.text.CueGroup;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.TeeAudioProcessor;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.LoopingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MergingMediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.SingleSampleMediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.video.SurfaceNotValidException;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.utils.VideoSubtitlesHelper$SubtitleState$$ExternalSyntheticRecord0;
import com.google.android.gms.cast.CastStatusCodes;
import j$.net.URLEncoder;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda6;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FourierTransform;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
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
@SuppressLint({"NewApi"})
public class VideoPlayer implements Player.Listener, VideoListener, AnalyticsListener, NotificationCenter.NotificationCenterDelegate {
    private static HashMap<String, Boolean> cachedSupportedCodec;
    private static int lastPlayerId;
    public boolean allowMultipleInstances;
    boolean audioDisabled;
    private ExoPlayer audioPlayer;
    private boolean audioPlayerReady;
    private volatile int audioTrackState;
    private String audioType;
    Handler audioUpdateHandler;
    private Uri audioUri;
    private AudioVisualizerDelegate audioVisualizerDelegate;
    private boolean autoIsOriginal;
    private boolean autoplay;
    private ExternalSubtitle currentExternalSubtitle;
    private boolean currentStreamIsHls;
    private Uri currentUri;
    private long currentVideoByteOffset;
    MediaSource.Factory dashMediaSourceFactory;
    private VideoPlayerDelegate delegate;
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
    private ArrayList<VideoUri> manifestUris;
    private ExtendedDefaultDataSourceFactory mediaDataSourceFactory;
    private boolean mixedAudio;
    private boolean mixedPlayWhenReady;
    private Runnable onQualityChangeListener;
    public ExoPlayer player;
    public final int playerId;
    ProgressiveMediaSource.Factory progressiveMediaSourceFactory;
    private int repeatCount;
    private final ArrayList<Runnable> seekFinishedListeners;
    private int selectedQualityIndex;
    private boolean shouldPauseOther;
    private Surface surface;
    private SurfaceView surfaceView;
    private TextureView textureView;
    private MappingTrackSelector trackSelector;
    private boolean triedReinit;
    private boolean videoPlayerReady;
    private ArrayList<Quality> videoQualities;
    private Quality videoQualityToSelect;
    private String videoType;
    private Uri videoUri;
    private DispatchQueue workerQueue;
    public static final HashSet<Integer> activePlayers = new HashSet<>();
    static int playerCounter = 0;

    /* JADX INFO: loaded from: classes7.dex */
    public interface AudioVisualizerDelegate {
        boolean needUpdate();

        void onVisualizerUpdate(boolean z, boolean z2, float[] fArr);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface VideoPlayerDelegate {
        default void onAudioTrackChanged(int i) {
        }

        default void onCues(CueGroup cueGroup) {
        }

        void onError(VideoPlayer videoPlayer, Exception exc);

        void onRenderedFirstFrame();

        default void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
        }

        default void onSeekFinished(AnalyticsListener.EventTime eventTime) {
        }

        default void onSeekStarted(AnalyticsListener.EventTime eventTime) {
        }

        void onStateChanged(boolean z, int i);

        default boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        default void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        void onVideoSizeChanged(int i, int i2, int i3, float f);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    @Override // androidx.media3.common.Player.Listener
    public void onRepeatModeChanged(int i) {
    }

    public boolean createdWithAudioTrack() {
        return !this.audioDisabled;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class ExternalSubtitle extends RecordTag {
        private final String label;
        private final String mimeType;
        private final Uri uri;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof ExternalSubtitle)) {
                return false;
            }
            ExternalSubtitle externalSubtitle = (ExternalSubtitle) obj;
            return Objects.equals(this.uri, externalSubtitle.uri) && Objects.equals(this.mimeType, externalSubtitle.mimeType) && Objects.equals(this.label, externalSubtitle.label);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.uri, this.mimeType, this.label};
        }

        public ExternalSubtitle(Uri uri, String str, String str2) {
            this.uri = uri;
            this.mimeType = str;
            this.label = str2;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return VideoSubtitlesHelper$SubtitleState$$ExternalSyntheticRecord0.m270m(this.uri, this.mimeType, this.label);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m235m($record$getFieldsAsObjects(), ExternalSubtitle.class, "uri;mimeType;label");
        }

        public MediaItem.SubtitleConfiguration toSubtitleConfiguration() {
            return new MediaItem.SubtitleConfiguration.Builder(this.uri).setMimeType(this.mimeType).setLabel(this.label).setSelectionFlags(1).build();
        }
    }

    public VideoPlayer() {
        this(true, false);
    }

    public VideoPlayer(boolean z, boolean z2) {
        int i = lastPlayerId;
        lastPlayerId = i + 1;
        this.playerId = i;
        this.audioTrackState = 0;
        this.audioUpdateHandler = new Handler(Looper.getMainLooper());
        this.autoIsOriginal = false;
        this.selectedQualityIndex = -1;
        this.fallbackDuration = -9223372036854775807L;
        this.fallbackPosition = -9223372036854775807L;
        this.seekFinishedListeners = new ArrayList<>();
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
        DefaultRenderersFactory defaultRenderersFactory;
        DefaultLoadControl.Builder allocator = new DefaultLoadControl.Builder().setAllocator(new DefaultAllocator(true, 65536));
        boolean z = this.isStory;
        DefaultLoadControl defaultLoadControlBuild = allocator.setBufferDurationsMs(50000, 50000, z ? 1000 : 100, z ? 1000 : CastStatusCodes.AUTHENTICATION_FAILED).setTargetBufferBytes(-1).setPrioritizeTimeOverSizeThresholds(false).setBackBuffer(0, false).build();
        if (this.player == null) {
            if (this.audioVisualizerDelegate != null) {
                defaultRenderersFactory = new AudioVisualizerRenderersFactory(ApplicationLoader.applicationContext);
            } else {
                defaultRenderersFactory = new DefaultRenderersFactory(ApplicationLoader.applicationContext);
            }
            defaultRenderersFactory.setExtensionRendererMode(1);
            ExoPlayer.Builder loadControl = new ExoPlayer.Builder(ApplicationLoader.applicationContext).setRenderersFactory(defaultRenderersFactory).setTrackSelector(this.trackSelector).setLoadControl(defaultLoadControlBuild);
            Looper looper = this.looper;
            if (looper != null) {
                loadControl.setLooper(looper);
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
            ExoPlayer exoPlayerBuild2 = new ExoPlayer.Builder(ApplicationLoader.applicationContext).setTrackSelector(this.trackSelector).setLoadControl(defaultLoadControlBuild).build();
            this.audioPlayer = exoPlayerBuild2;
            exoPlayerBuild2.addListener(new Player.Listener() { // from class: org.telegram.ui.Components.VideoPlayer.1
                @Override // androidx.media3.common.Player.Listener
                public void onPlayerStateChanged(boolean z2, int i) {
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
        setAudioTrackState(0);
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
        LoopingMediaSource loopingMediaSource = null;
        LoopingMediaSource loopingMediaSource2 = null;
        int i = 0;
        while (i < 2) {
            if (i == 0) {
                uri3 = uri;
                str3 = str;
            } else {
                uri3 = uri2;
                str3 = str2;
            }
            LoopingMediaSource loopingMediaSource3 = new LoopingMediaSource(mediaSourceFromUri(uri3, 0L, str3, i == 0));
            if (i == 0) {
                loopingMediaSource = loopingMediaSource3;
            } else {
                loopingMediaSource2 = loopingMediaSource3;
            }
            i++;
        }
        this.player.setMediaSource(loopingMediaSource, true);
        this.player.prepare();
        this.audioPlayer.setMediaSource(loopingMediaSource2, true);
        this.audioPlayer.prepare();
        activePlayers.add(Integer.valueOf(this.playerId));
    }

    private MediaSource mediaSourceFromUri(VideoUri videoUri, String str) {
        return mediaSourceFromUri(videoUri.uri, videoUri.fileVideoOffset, str, true);
    }

    private MediaSource mediaSourceFromUri(Uri uri, long j, String str) {
        return mediaSourceFromUri(uri, j, str, true);
    }

    private MediaSource mediaSourceFromUri(Uri uri, final long j, String str, boolean z) {
        MediaSource mediaSourceCreateMediaSource;
        MediaItem mediaItemBuild = new MediaItem.Builder().setUri(uri).build();
        if (j != 0) {
            ProgressiveMediaSource progressiveMediaSourceCreateMediaSource = new ProgressiveMediaSource.Factory(new DataSource.Factory() { // from class: org.telegram.ui.Components.VideoPlayer$$ExternalSyntheticLambda1
                @Override // androidx.media3.datasource.DataSource.Factory
                public final DataSource createDataSource() {
                    return this.f$0.lambda$mediaSourceFromUri$0(j);
                }
            }).createMediaSource(mediaItemBuild);
            return z ? maybeWrapWithExternalSubtitle(progressiveMediaSourceCreateMediaSource) : progressiveMediaSourceCreateMediaSource;
        }
        str.getClass();
        if (str.equals("hls")) {
            if (this.hlsMediaSourceFactory == null) {
                this.hlsMediaSourceFactory = new HlsMediaSource.Factory(this.mediaDataSourceFactory);
            }
            mediaSourceCreateMediaSource = this.hlsMediaSourceFactory.createMediaSource(mediaItemBuild);
        } else if (str.equals("dash")) {
            if (this.dashMediaSourceFactory == null) {
                this.dashMediaSourceFactory = new DashMediaSource.Factory(this.mediaDataSourceFactory);
            }
            mediaSourceCreateMediaSource = this.dashMediaSourceFactory.createMediaSource(mediaItemBuild);
        } else {
            if (this.progressiveMediaSourceFactory == null) {
                this.progressiveMediaSourceFactory = new ProgressiveMediaSource.Factory(this.mediaDataSourceFactory);
            }
            mediaSourceCreateMediaSource = this.progressiveMediaSourceFactory.createMediaSource(mediaItemBuild);
        }
        return z ? maybeWrapWithExternalSubtitle(mediaSourceCreateMediaSource) : mediaSourceCreateMediaSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ DataSource lambda$mediaSourceFromUri$0(long j) {
        return new OffsetDataSource(this.mediaDataSourceFactory.createDataSource(), j);
    }

    private MediaSource maybeWrapWithExternalSubtitle(MediaSource mediaSource) {
        return this.currentExternalSubtitle == null ? mediaSource : new MergingMediaSource(mediaSource, new SingleSampleMediaSource.Factory(this.mediaDataSourceFactory).createMediaSource(this.currentExternalSubtitle.toSubtitleConfiguration(), -9223372036854775807L));
    }

    public void preparePlayer(Uri uri, String str) {
        preparePlayer(uri, str, 3, 0L);
    }

    public void preparePlayer(Uri uri, String str, int i, long j) {
        boolean z = false;
        setAudioTrackState(0);
        this.videoQualities = null;
        this.videoQualityToSelect = null;
        this.videoUri = uri;
        this.videoType = str;
        this.audioUri = null;
        this.audioType = null;
        this.currentVideoByteOffset = j;
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
        this.player.setMediaSource(mediaSourceFromUri(uri, j, str, true), true);
        this.player.prepare();
    }

    public void preparePlayer(ArrayList<Quality> arrayList, Quality quality) {
        ArrayList<Quality> arrayList2;
        setAudioTrackState(0);
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

    public static Quality getSavedQuality(ArrayList<Quality> arrayList, MessageObject messageObject) {
        if (ExteraConfig.getPreferOriginalQuality()) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Quality quality = arrayList.get(i);
                i++;
                Quality quality2 = quality;
                if (quality2.original) {
                    return quality2;
                }
            }
        }
        if (messageObject == null) {
            return null;
        }
        return getSavedQuality(arrayList, messageObject.getDialogId(), messageObject.getId());
    }

    public static Quality getSavedQuality(ArrayList<Quality> arrayList, long j, int i) {
        int i2 = 0;
        String string = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).getString(j + "_" + i + "q2", _UrlKt.FRAGMENT_ENCODE_SET);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        int size = arrayList.size();
        while (i2 < size) {
            Quality quality = arrayList.get(i2);
            i2++;
            Quality quality2 = quality;
            StringBuilder sb = new StringBuilder();
            sb.append(quality2.width);
            sb.append("x");
            sb.append(quality2.height);
            sb.append(quality2.original ? "s" : _UrlKt.FRAGMENT_ENCODE_SET);
            if (TextUtils.equals(string, sb.toString())) {
                return quality2;
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
        ArrayList<Quality> arrayList = this.videoQualities;
        if (arrayList == null) {
            return getHighestQuality(Boolean.FALSE);
        }
        if (i < 0 || i >= arrayList.size()) {
            return getHighestQuality(Boolean.FALSE);
        }
        return this.videoQualities.get(i);
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
        ArrayList<Quality> arrayList = this.videoQualities;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public File getLowestFile() {
        ArrayList<Quality> arrayList = this.videoQualities;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ArrayList<VideoUri> arrayList2 = this.videoQualities.get(size).uris;
                int size2 = arrayList2.size();
                int i = 0;
                while (i < size2) {
                    VideoUri videoUri = arrayList2.get(i);
                    i++;
                    VideoUri videoUri2 = videoUri;
                    if (!videoUri2.isCached()) {
                        videoUri2.updateCached(true);
                    }
                    if (videoUri2.isCached()) {
                        return new File(videoUri2.uri.getPath());
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
        ArrayList<Quality> arrayList;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null && (videoFormat = exoPlayer.getVideoFormat()) != null && videoFormat.documentId != 0 && (arrayList = this.videoQualities) != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Quality quality = arrayList.get(i);
                i++;
                ArrayList<VideoUri> arrayList2 = quality.uris;
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    VideoUri videoUri = arrayList2.get(i2);
                    i2++;
                    VideoUri videoUri2 = videoUri;
                    if (videoUri2.docId == videoFormat.documentId) {
                        return videoUri2.document;
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
                    if (!quality.original && videoFormat.width == quality.width && videoFormat.height == quality.height && videoFormat.bitrate == ((int) Math.floor(quality.uris.get(0).bitrate * 8.0d))) {
                        return i2;
                    }
                }
            } catch (Exception e) {
                FileLog.m992e(e);
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
            FileLog.m992e(e);
            return null;
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        super.onTrackSelectionParametersChanged(trackSelectionParameters);
        Runnable runnable = this.onQualityChangeListener;
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public void onCues(final CueGroup cueGroup) {
        super.onCues(cueGroup);
        if (this.delegate != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCues$1(cueGroup);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCues$1(CueGroup cueGroup) {
        VideoPlayerDelegate videoPlayerDelegate = this.delegate;
        if (videoPlayerDelegate != null) {
            videoPlayerDelegate.onCues(cueGroup);
        }
    }

    public void setSelectedQuality(int i) {
        if (this.player == null || i == this.selectedQualityIndex) {
            return;
        }
        this.selectedQualityIndex = i;
        ArrayList<Quality> arrayList = this.videoQualities;
        setSelectedQuality(false, (arrayList == null || i < 0 || i >= arrayList.size()) ? null : this.videoQualities.get(i));
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
            if (originalQuality != null && originalQuality.uris.size() == 1 && originalQuality.uris.get(0).isCached()) {
                this.currentStreamIsHls = false;
                this.autoIsOriginal = true;
                this.videoQualityToSelect = originalQuality;
                this.player.setMediaSource(mediaSourceFromUri(originalQuality.getDownloadUri(), "other"), false);
            } else if (uriMakeManifest != null) {
                this.autoIsOriginal = false;
                MappingTrackSelector mappingTrackSelector = this.trackSelector;
                mappingTrackSelector.setParameters(mappingTrackSelector.getParameters().buildUpon().clearOverrides().build());
                if (this.currentStreamIsHls) {
                    z2 = false;
                } else {
                    this.currentStreamIsHls = true;
                    this.player.setMediaSource(mediaSourceFromUri(uriMakeManifest, 0L, "hls"), false);
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
                this.player.setMediaSource(mediaSourceFromUri(highestQuality.getDownloadUri(), "other"), false);
            }
        } else {
            this.autoIsOriginal = false;
            if (quality.uris.isEmpty()) {
                return;
            }
            Uri uriMakeManifest2 = quality.uris.size() > 1 ? makeManifest(this.videoQualities) : null;
            if (uriMakeManifest2 == null || quality.uris.size() == 1 || this.trackSelector.getCurrentMappedTrackInfo() == null) {
                this.currentStreamIsHls = false;
                this.player.setMediaSource(mediaSourceFromUri(quality.getDownloadUri(), "other"), false);
            } else {
                if (this.currentStreamIsHls) {
                    z2 = false;
                } else {
                    this.currentStreamIsHls = true;
                    this.player.setMediaSource(mediaSourceFromUri(uriMakeManifest2, 0L, "hls"), false);
                }
                TrackSelectionParameters.Builder builderClearOverrides = this.trackSelector.getParameters().buildUpon().clearOverrides();
                ArrayList<VideoUri> arrayList = quality.uris;
                int size = arrayList.size();
                while (i < size) {
                    VideoUri videoUri = arrayList.get(i);
                    i++;
                    TrackSelectionOverride qualityTrackSelection = getQualityTrackSelection(videoUri);
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

    public void setExternalSubtitle(ExternalSubtitle externalSubtitle) {
        this.currentExternalSubtitle = externalSubtitle;
    }

    public boolean reloadCurrentSource() {
        if (this.player == null) {
            return false;
        }
        if (this.videoQualities != null) {
            setSelectedQuality(false, this.videoQualityToSelect);
            return true;
        }
        if (this.videoUri == null) {
            return false;
        }
        boolean playWhenReady = getPlayWhenReady();
        long jMax = Math.max(0L, getCurrentPosition());
        if (this.loopingMediaSource && this.audioUri != null && this.audioPlayer != null) {
            LoopingMediaSource loopingMediaSource = new LoopingMediaSource(mediaSourceFromUri(this.videoUri, this.currentVideoByteOffset, this.videoType));
            LoopingMediaSource loopingMediaSource2 = new LoopingMediaSource(mediaSourceFromUri(this.audioUri, 0L, this.audioType, false));
            this.player.setMediaSource(loopingMediaSource, false);
            this.player.prepare();
            this.audioPlayer.setMediaSource(loopingMediaSource2, false);
            this.audioPlayer.prepare();
            if (jMax > 0) {
                this.player.seekTo(jMax);
                this.audioPlayer.seekTo(jMax);
            }
            setPlayWhenReady(playWhenReady);
            activePlayers.add(Integer.valueOf(this.playerId));
            return true;
        }
        this.player.setMediaSource(mediaSourceFromUri(this.videoUri, this.currentVideoByteOffset, this.videoType), false);
        this.player.prepare();
        if (jMax > 0) {
            this.player.seekTo(jMax);
        }
        setPlayWhenReady(playWhenReady);
        activePlayers.add(Integer.valueOf(this.playerId));
        return true;
    }

    public static ArrayList<Quality> getQualities(int i, TLRPC.Document document, ArrayList<TLRPC.Document> arrayList, int i2, boolean z) {
        return getQualities(i, document, arrayList, i2, z, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList<Quality> getQualities(int i, TLRPC.Document document, ArrayList<TLRPC.Document> arrayList, int i2, boolean z, boolean z2) {
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
                    FileLog.m992e(e);
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
                FileLog.m992e(e2);
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

    public static ArrayList<Quality> getQualities(int i, TLRPC.MessageMedia messageMedia, boolean z) {
        if (!(messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
            return new ArrayList<>();
        }
        return getQualities(i, messageMedia.document, messageMedia.alt_documents, 0, false, z);
    }

    public static VideoUri getQualityForThumb(ArrayList<Quality> arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Quality quality = arrayList.get(i);
            i++;
            ArrayList<VideoUri> arrayList2 = quality.uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                VideoUri videoUri = arrayList2.get(i2);
                i2++;
                VideoUri videoUri2 = videoUri;
                if (videoUri2.isCached()) {
                    return videoUri2;
                }
            }
        }
        int size3 = arrayList.size();
        VideoUri videoUri3 = null;
        int i3 = 0;
        while (i3 < size3) {
            Quality quality2 = arrayList.get(i3);
            i3++;
            ArrayList<VideoUri> arrayList3 = quality2.uris;
            int size4 = arrayList3.size();
            int i4 = 0;
            while (i4 < size4) {
                VideoUri videoUri4 = arrayList3.get(i4);
                i4++;
                VideoUri videoUri5 = videoUri4;
                if (!videoUri5.original && (videoUri3 == null || videoUri3.width * videoUri3.height > videoUri5.width * videoUri5.height || videoUri5.bitrate < videoUri3.bitrate)) {
                    if (videoUri5.width <= 900 && videoUri5.height <= 900) {
                        videoUri3 = videoUri5;
                    }
                }
            }
        }
        if (videoUri3 == null) {
            int size5 = arrayList.size();
            int i5 = 0;
            while (i5 < size5) {
                Quality quality3 = arrayList.get(i5);
                i5++;
                ArrayList<VideoUri> arrayList4 = quality3.uris;
                int size6 = arrayList4.size();
                int i6 = 0;
                while (i6 < size6) {
                    VideoUri videoUri6 = arrayList4.get(i6);
                    i6++;
                    VideoUri videoUri7 = videoUri6;
                    if (videoUri3 == null || videoUri3.width * videoUri3.height > videoUri7.width * videoUri7.height || videoUri7.bitrate < videoUri3.bitrate) {
                        videoUri3 = videoUri7;
                    }
                }
            }
        }
        return videoUri3;
    }

    public static VideoUri getCachedQuality(ArrayList<Quality> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Quality quality = arrayList.get(i);
            i++;
            ArrayList<VideoUri> arrayList2 = quality.uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                VideoUri videoUri = arrayList2.get(i2);
                i2++;
                VideoUri videoUri2 = videoUri;
                if (videoUri2.isCached()) {
                    return videoUri2;
                }
            }
        }
        return null;
    }

    public static VideoUri getQualityForPlayer(ArrayList<Quality> arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Quality quality = arrayList.get(i);
            i++;
            ArrayList<VideoUri> arrayList2 = quality.uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                VideoUri videoUri = arrayList2.get(i2);
                i2++;
                VideoUri videoUri2 = videoUri;
                if (videoUri2.original && videoUri2.isCached()) {
                    return videoUri2;
                }
            }
        }
        int size3 = arrayList.size();
        VideoUri videoUri3 = null;
        int i3 = 0;
        while (i3 < size3) {
            Quality quality2 = arrayList.get(i3);
            i3++;
            ArrayList<VideoUri> arrayList3 = quality2.uris;
            int size4 = arrayList3.size();
            int i4 = 0;
            while (i4 < size4) {
                VideoUri videoUri4 = arrayList3.get(i4);
                i4++;
                VideoUri videoUri5 = videoUri4;
                if (!videoUri5.original && supportsHardwareDecoder(videoUri5.codec)) {
                    if (videoUri3 != null) {
                        int i5 = videoUri5.width;
                        int i6 = videoUri5.height;
                        int i7 = i5 * i6;
                        int i8 = videoUri3.width;
                        int i9 = videoUri3.height;
                        if (i7 > i8 * i9 || (i5 * i6 == i8 * i9 && videoUri5.bitrate < videoUri3.bitrate)) {
                        }
                    }
                    videoUri3 = videoUri5;
                }
            }
        }
        if (videoUri3 == null) {
            int size5 = arrayList.size();
            int i10 = 0;
            while (i10 < size5) {
                Quality quality3 = arrayList.get(i10);
                i10++;
                ArrayList<VideoUri> arrayList4 = quality3.uris;
                int size6 = arrayList4.size();
                int i11 = 0;
                while (i11 < size6) {
                    VideoUri videoUri6 = arrayList4.get(i11);
                    i11++;
                    VideoUri videoUri7 = videoUri6;
                    if (videoUri3 == null || videoUri3.width * videoUri3.height > videoUri7.width * videoUri7.height || videoUri7.bitrate < videoUri3.bitrate) {
                        videoUri3 = videoUri7;
                    }
                }
            }
        }
        return videoUri3;
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
                return "video/".concat(str);
        }
    }

    public static boolean supportsHardwareDecoder(String str) {
        try {
            String mime = toMime(str);
            if (mime == null) {
                return false;
            }
            if (cachedSupportedCodec == null) {
                cachedSupportedCodec = new HashMap<>();
            }
            Boolean bool = cachedSupportedCodec.get(mime);
            if (bool == null) {
                if (MessagesController.getGlobalMainSettings().getBoolean("unsupport_".concat(mime), false)) {
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
            }
            return bool.booleanValue();
        } catch (Exception e) {
            FileLog.m992e(e);
            return false;
        }
    }

    public Uri makeManifest(ArrayList<Quality> arrayList) {
        StringBuilder sb = new StringBuilder("#EXTM3U\n#EXT-X-VERSION:6\n#EXT-X-INDEPENDENT-SEGMENTS\n\n");
        this.manifestUris = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        while (i < size) {
            Quality quality = arrayList.get(i);
            i++;
            ArrayList<VideoUri> arrayList3 = quality.uris;
            int size2 = arrayList3.size();
            int i2 = 0;
            while (i2 < size2) {
                VideoUri videoUri = arrayList3.get(i2);
                i2++;
                VideoUri videoUri2 = videoUri;
                this.mediaDataSourceFactory.putDocumentUri(videoUri2.docId, videoUri2.uri);
                this.mediaDataSourceFactory.putDocumentUri(videoUri2.manifestDocId, videoUri2.m3u8uri);
                if (videoUri2.m3u8uri != null) {
                    this.manifestUris.add(videoUri2);
                    StringBuilder sb2 = new StringBuilder("#EXT-X-STREAM-INF:BANDWIDTH=");
                    sb2.append((int) Math.floor(videoUri2.bitrate * 8.0d));
                    sb2.append(",RESOLUTION=");
                    sb2.append(videoUri2.width);
                    sb2.append("x");
                    sb2.append(videoUri2.height);
                    String mime = toMime(videoUri2.codec);
                    if (mime != null) {
                        sb2.append(",MIME=\"");
                        sb2.append(mime);
                        sb2.append("\"");
                    }
                    if (videoUri2.isCached() && videoUri2.isManifestCached()) {
                        sb2.append(",CACHED=\"true\"");
                    }
                    sb2.append(",DOCID=\"");
                    sb2.append(videoUri2.docId);
                    sb2.append("\",ACCOUNT=\"");
                    sb2.append(videoUri2.currentAccount);
                    sb2.append("\"\n");
                    if (videoUri2.isManifestCached()) {
                        sb2.append(videoUri2.m3u8uri);
                        sb2.append("\n\n");
                    } else {
                        sb2.append("mtproto:");
                        sb2.append(videoUri2.manifestDocId);
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
        public final ArrayList<VideoUri> uris;
        public int width;

        public Quality(VideoUri videoUri) {
            ArrayList<VideoUri> arrayList = new ArrayList<>();
            this.uris = arrayList;
            this.original = videoUri.original;
            this.width = videoUri.width;
            this.height = videoUri.height;
            arrayList.add(videoUri);
        }

        public static ArrayList<Quality> group(ArrayList<VideoUri> arrayList) {
            Quality quality;
            ArrayList<Quality> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                VideoUri videoUri = arrayList.get(i);
                i++;
                VideoUri videoUri2 = videoUri;
                if (videoUri2.original) {
                    arrayList2.add(new Quality(videoUri2));
                } else {
                    int size2 = arrayList2.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size2) {
                            quality = null;
                            break;
                        }
                        Quality quality2 = arrayList2.get(i2);
                        i2++;
                        quality = quality2;
                        if (!quality.original && quality.width == videoUri2.width && quality.height == videoUri2.height) {
                            break;
                        }
                    }
                    if (quality != null && !SharedConfig.debugVideoQualities) {
                        quality.uris.add(videoUri2);
                    } else {
                        arrayList2.add(new Quality(videoUri2));
                    }
                }
            }
            return arrayList2;
        }

        public static ArrayList<Quality> filterByCodec(ArrayList<Quality> arrayList) {
            ArrayList<VideoUri> arrayList2;
            if (arrayList == null) {
                return null;
            }
            int i = 0;
            while (i < arrayList.size()) {
                Quality quality = arrayList.get(i);
                int i2 = 0;
                while (true) {
                    int size = quality.uris.size();
                    arrayList2 = quality.uris;
                    if (i2 >= size) {
                        break;
                    }
                    VideoUri videoUri = arrayList2.get(i2);
                    if (!TextUtils.isEmpty(videoUri.codec) && !VideoPlayer.supportsHardwareDecoder(videoUri.codec)) {
                        quality.uris.remove(i2);
                        i2--;
                    }
                    i2++;
                }
                if (arrayList2.isEmpty()) {
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
                    str = " (" + LocaleController.getString(C2665R.string.QualitySource) + ")";
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                sb.append(str);
                sb.append("\n");
                sb.append(AndroidUtilities.formatFileSize((long) this.uris.get(0).bitrate).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET));
                sb.append("/s");
                if (this.uris.get(0).codec != null) {
                    str2 = ", " + this.uris.get(0).codec;
                }
                sb.append(str2);
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m1034p());
            sb2.append("p");
            if (this.original) {
                str2 = " (" + LocaleController.getString(C2665R.string.QualitySource) + ")";
            }
            sb2.append(str2);
            return sb2.toString();
        }

        /* JADX INFO: renamed from: p */
        public int m1034p() {
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
            ArrayList<VideoUri> arrayList = this.uris;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                VideoUri videoUri2 = arrayList.get(i);
                i++;
                VideoUri videoUri3 = videoUri2;
                if (videoUri3.isCached()) {
                    return videoUri3.document;
                }
            }
            long j = LongCompanionObject.MAX_VALUE;
            for (int i2 = 0; i2 < this.uris.size(); i2++) {
                VideoUri videoUri4 = this.uris.get(i2);
                if (videoUri4.size < j && VideoPlayer.supportsHardwareDecoder(videoUri4.codec)) {
                    j = videoUri4.size;
                    videoUri = videoUri4;
                }
            }
            if (videoUri != null) {
                return videoUri.document;
            }
            return this.uris.get(0).document;
        }

        public VideoUri getDownloadUri() {
            VideoUri videoUri = null;
            if (this.uris.isEmpty()) {
                return null;
            }
            ArrayList<VideoUri> arrayList = this.uris;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                VideoUri videoUri2 = arrayList.get(i);
                i++;
                VideoUri videoUri3 = videoUri2;
                if (videoUri3.isCached()) {
                    return videoUri3;
                }
            }
            long j = LongCompanionObject.MAX_VALUE;
            for (int i2 = 0; i2 < this.uris.size(); i2++) {
                VideoUri videoUri4 = this.uris.get(i2);
                if (videoUri4.size < j && VideoPlayer.supportsHardwareDecoder(videoUri4.codec)) {
                    j = videoUri4.size;
                    videoUri = videoUri4;
                }
            }
            return videoUri != null ? videoUri : this.uris.get(0);
        }
    }

    public static class VideoUri {
        public double bitrate;
        public String codec;
        public int currentAccount;
        public long docId;
        public TLRPC.Document document;
        public double duration;
        public long fileVideoOffset;
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
            StringBuilder sb = new StringBuilder("?account=");
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
                videoUri.width = tL_documentAttributeVideo.f1015w;
                videoUri.height = tL_documentAttributeVideo.f1014h;
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

    public void releasePlayerDeferred(long j) {
        final ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            this.player = null;
            exoPlayer.removeAnalyticsListener(this);
            exoPlayer.removeListener(this);
            exoPlayer.removeVideoListener(this);
            exoPlayer.stop();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    exoPlayer.release();
                }
            }, j);
        }
        releasePlayer(true);
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

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onSeekStarted(AnalyticsListener.EventTime eventTime) {
        VideoPlayerDelegate videoPlayerDelegate = this.delegate;
        if (videoPlayerDelegate != null) {
            videoPlayerDelegate.onSeekStarted(eventTime);
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        if (i == 1) {
            VideoPlayerDelegate videoPlayerDelegate = this.delegate;
            if (videoPlayerDelegate != null) {
                videoPlayerDelegate.onSeekFinished(eventTime);
            }
            ArrayList<Runnable> arrayList = this.seekFinishedListeners;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Runnable runnable = arrayList.get(i2);
                i2++;
                runnable.run();
            }
            this.seekFinishedListeners.clear();
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
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

    public int getAudioTrackState() {
        return this.audioTrackState;
    }

    public boolean hasAudioTrack() {
        return this.audioTrackState == 1;
    }

    private void setAudioTrackState(int i) {
        if (this.audioTrackState == i) {
            return;
        }
        this.audioTrackState = i;
        VideoPlayerDelegate videoPlayerDelegate = this.delegate;
        if (videoPlayerDelegate != null) {
            videoPlayerDelegate.onAudioTrackChanged(i);
        }
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

    @Override // androidx.media3.common.Player.Listener
    public void onPlayerStateChanged(boolean z, int i) {
        maybeReportPlayerState();
        if (z && i == 3 && !isMuted() && this.shouldPauseOther && hasAudioTrack()) {
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

    @Override // androidx.media3.common.Player.Listener
    public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        if (i == 0) {
            this.repeatCount++;
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlayerError(final PlaybackException playbackException) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onPlayerError$3(playbackException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPlayerError$3(PlaybackException playbackException) {
        Throwable cause = playbackException.getCause();
        if ((cause instanceof MediaCodecDecoderException) && (cause.toString().contains("av1") || cause.toString().contains("av01"))) {
            FileLog.m992e(playbackException);
            FileLog.m990e("av1 codec failed, we think this codec is not supported");
            MessagesController.getGlobalMainSettings().edit().putBoolean("unsupport_video/av01", true).commit();
            HashMap<String, Boolean> map = cachedSupportedCodec;
            if (map != null) {
                map.clear();
            }
            ArrayList<Quality> arrayListFilterByCodec = Quality.filterByCodec(this.videoQualities);
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
                    dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.VideoPlayer$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onPlayerError$2();
                        }
                    });
                    return;
                }
                this.player.clearVideoTextureView(this.textureView);
                this.player.setVideoTextureView(this.textureView);
                ArrayList<Quality> arrayList = this.videoQualities;
                if (arrayList != null) {
                    preparePlayer(arrayList, this.videoQualityToSelect);
                } else {
                    boolean z = this.loopingMediaSource;
                    Uri uri = this.videoUri;
                    if (z) {
                        preparePlayerLoop(uri, this.videoType, this.audioUri, this.audioType);
                    } else {
                        preparePlayer(uri, this.videoType);
                    }
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
    public /* synthetic */ void lambda$onPlayerError$2() {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.clearVideoTextureView(this.textureView);
            this.player.setVideoTextureView(this.textureView);
            ArrayList<Quality> arrayList = this.videoQualities;
            if (arrayList != null) {
                preparePlayer(arrayList, this.videoQualityToSelect);
            } else {
                boolean z = this.loopingMediaSource;
                Uri uri = this.videoUri;
                if (z) {
                    preparePlayerLoop(uri, this.videoType, this.audioUri, this.audioType);
                } else {
                    preparePlayer(uri, this.videoType);
                }
            }
            play();
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public void onVideoSizeChanged(VideoSize videoSize) {
        if (!Objects.equals(videoSize, VideoSize.UNKNOWN)) {
            this.delegate.onVideoSizeChanged(videoSize.width, videoSize.height, videoSize.unappliedRotationDegrees, videoSize.pixelWidthHeightRatio);
        }
        super.onVideoSizeChanged(videoSize);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onRenderedFirstFrame() {
        this.delegate.onRenderedFirstFrame();
    }

    @Override // androidx.media3.common.VideoListener
    public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
        return this.delegate.onSurfaceDestroyed(surfaceTexture);
    }

    @Override // androidx.media3.common.VideoListener
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
    public class AudioVisualizerRenderersFactory extends DefaultRenderersFactory {
        public AudioVisualizerRenderersFactory(Context context) {
            super(context);
        }

        @Override // androidx.media3.exoplayer.DefaultRenderersFactory
        public AudioSink buildAudioSink(Context context, boolean z, boolean z2) {
            return new DefaultAudioSink.Builder(context).setEnableFloatOutput(z).setEnableAudioTrackPlaybackParams(z2).setAudioProcessors(new AudioProcessor[]{new TeeAudioProcessor(VideoPlayer.this.new VisualizerBufferSink())}).build();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class VisualizerBufferSink implements TeeAudioProcessor.AudioBufferSink {
        ByteBuffer byteBuffer;
        long lastUpdateTime;
        private final int BUFFER_SIZE = 1024;
        private final int MAX_BUFFER_SIZE = 8192;
        FourierTransform.FFT fft = new FourierTransform.FFT(1024, 48000.0f);
        float[] real = new float[1024];
        int position = 0;

        @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
        public void flush(int i, int i2, int i3) {
        }

        public VisualizerBufferSink() {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(8192);
            this.byteBuffer = byteBufferAllocateDirect;
            byteBufferAllocateDirect.position(0);
        }

        @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
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
                    float fSqrt2 = (float) Math.sqrt(f / 1024.0f);
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
            MediaFormat codecOutputMediaFormat = ((MediaCodecRenderer) this.player.getRenderer(0)).getCodecOutputMediaFormat();
            ByteBuffer byteBuffer = codecOutputMediaFormat.getByteBuffer("hdr-static-info");
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            if (byteBuffer.get() == 0) {
                hDRInfo.maxlum = byteBuffer.getShort(17);
                hDRInfo.minlum = byteBuffer.getShort(19) * 1.0E-4f;
            }
            if (codecOutputMediaFormat.containsKey("color-transfer")) {
                hDRInfo.colorTransfer = codecOutputMediaFormat.getInteger("color-transfer");
            }
            if (codecOutputMediaFormat.containsKey("color-standard")) {
                hDRInfo.colorStandard = codecOutputMediaFormat.getInteger("color-standard");
            }
            if (codecOutputMediaFormat.containsKey("color-range")) {
                hDRInfo.colorRange = codecOutputMediaFormat.getInteger("color-range");
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
        ExoPlayer exoPlayer = this.player;
        if (dispatchQueue != null) {
            exoPlayer.setWorkerQueue(new ChatThemeController$$ExternalSyntheticLambda6(dispatchQueue));
        } else {
            exoPlayer.setWorkerQueue(null);
        }
    }

    public void setIsStory() {
        this.isStory = true;
    }

    @Override // androidx.media3.common.Player.Listener
    public void onTracksChanged(Tracks tracks) {
        super.onTracksChanged(tracks);
        if (this.mixedAudio) {
            setAudioTrackState(1);
        } else if (tracks.getGroups().isEmpty()) {
            setAudioTrackState(0);
        } else {
            setAudioTrackState(tracks.isTypeSelected(1) ? 1 : 2);
        }
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
        ArrayList<Quality> arrayList = this.videoQualities;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Quality quality = arrayList.get(i);
            i++;
            ArrayList<VideoUri> arrayList2 = quality.uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                VideoUri videoUri = arrayList2.get(i2);
                i2++;
                VideoUri videoUri2 = videoUri;
                StringBuilder sb = new StringBuilder("/mtproto_");
                int i3 = size;
                sb.append(videoUri2.docId);
                String string = sb.toString();
                TLRPC.Document document = videoUri2.document;
                String str5 = document != null ? document.mime_type : null;
                if (TextUtils.isEmpty(str5)) {
                    str5 = "video/mp4";
                }
                builder.add(ChromecastMedia.Builder.fromUri(videoUri2.uri, string, str5).setTitle(str2).setSubtitle(str3).setSize(videoUri2.width, videoUri2.height).build());
                size = i3;
            }
        }
        return builder.build();
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class OffsetDataSource implements DataSource {
        private final long byteOffset;
        private final DataSource upstream;

        public OffsetDataSource(DataSource dataSource, long j) {
            this.upstream = dataSource;
            this.byteOffset = j;
        }

        @Override // androidx.media3.datasource.DataSource
        public void addTransferListener(TransferListener transferListener) {
            this.upstream.addTransferListener(transferListener);
        }

        @Override // androidx.media3.datasource.DataSource
        public long open(DataSpec dataSpec) {
            return this.upstream.open(dataSpec.buildUpon().setPosition(dataSpec.position + this.byteOffset).build());
        }

        @Override // androidx.media3.common.DataReader
        public int read(byte[] bArr, int i, int i2) {
            return this.upstream.read(bArr, i, i2);
        }

        @Override // androidx.media3.datasource.DataSource
        public Uri getUri() {
            return this.upstream.getUri();
        }

        @Override // androidx.media3.datasource.DataSource
        public void close() {
            this.upstream.close();
        }

        @Override // androidx.media3.datasource.DataSource
        public Map<String, List<String>> getResponseHeaders() {
            return this.upstream.getResponseHeaders();
        }
    }
}
