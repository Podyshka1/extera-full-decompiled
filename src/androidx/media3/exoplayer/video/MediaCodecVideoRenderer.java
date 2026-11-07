package androidx.media3.exoplayer.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Timeline;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.ScrubbingModeParameters;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.MoreExecutors;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.MediaController;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer implements VideoFrameReleaseControl.FrameTimingEvaluator {
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final Av1SampleDependencyParser av1SampleDependencyParser;
    private int buffersInCodecCount;
    private int changeFrameRateStrategy;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private CodecMaxValues codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private int consecutiveDroppedInputBufferCount;
    private final Context context;
    private VideoSize decodedVideoSize;
    private final boolean deviceNeedsNoPostProcessWorkaround;
    private Surface displaySurface;
    private final PriorityQueue<Long> droppedDecoderInputBufferTimestamps;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final boolean enableMediaCodecBufferDecodeOnlyFlag;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private VideoFrameMetadataListener frameMetadataListener;
    private boolean hasSetVideoSink;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private boolean isFlushRequired;
    private long lastFrameReleaseTimeNs;
    private final int maxDroppedFramesToNotify;
    private final long minEarlyUsToDropDecoderInput;
    private int nextVideoSinkFirstFrameReleaseInstruction;
    private Size outputResolution;
    private final boolean ownsVideoSink;
    private boolean pendingVideoSinkInputStreamChange;
    private long periodDurationUs;
    private PlaceholderSurface placeholderSurface;
    private int rendererPriority;
    private VideoSize reportedVideoSize;
    private int scalingMode;
    private ScrubbingModeParameters scrubbingModeParameters;
    private long startPositionUs;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;
    OnFrameRenderedListenerV23 tunnelingOnFrameRenderedListener;
    private List<Object> videoEffects;
    private int videoFrameProcessingOffsetCount;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo;
    private VideoSink videoSink;

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public boolean getCodecNeedsEosPropagation() {
        return false;
    }

    public boolean shouldDropBuffersToKeyframe(long j, long j2, boolean z) {
        return j < -500000 && !z;
    }

    public boolean shouldDropOutputBuffer(long j, long j2, boolean z) {
        return j < -30000 && !z;
    }

    public boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return j < -30000 && j2 > 100000;
    }

    public boolean shouldSkipBuffersWithIdenticalReleaseTime() {
        return true;
    }

    public static final class Builder {
        private long allowedJoiningTimeMs;
        private boolean buildCalled;
        private MediaCodecAdapter.Factory codecAdapterFactory;
        private final Context context;
        private boolean enableDecoderFallback;
        private boolean enableMediaCodecBufferDecodeOnlyFlag;
        private Handler eventHandler;
        private VideoRendererEventListener eventListener;
        private int maxDroppedFramesToNotify;
        private boolean parseAv1SampleDependencies;
        private VideoSink videoSink;
        private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;
        private float assumedMinimumCodecOperatingRate = 30.0f;
        private long lateThresholdToDropDecoderInputUs = -9223372036854775807L;

        public Builder(Context context) {
            this.context = context;
            this.codecAdapterFactory = MediaCodecAdapter.Factory.getDefault(context);
        }

        public Builder setMediaCodecSelector(MediaCodecSelector mediaCodecSelector) {
            this.mediaCodecSelector = mediaCodecSelector;
            return this;
        }

        public Builder setCodecAdapterFactory(MediaCodecAdapter.Factory factory) {
            this.codecAdapterFactory = factory;
            return this;
        }

        public Builder setAllowedJoiningTimeMs(long j) {
            this.allowedJoiningTimeMs = j;
            return this;
        }

        public Builder setEnableDecoderFallback(boolean z) {
            this.enableDecoderFallback = z;
            return this;
        }

        public Builder setEventHandler(Handler handler) {
            this.eventHandler = handler;
            return this;
        }

        public Builder setEventListener(VideoRendererEventListener videoRendererEventListener) {
            this.eventListener = videoRendererEventListener;
            return this;
        }

        public Builder setMaxDroppedFramesToNotify(int i) {
            this.maxDroppedFramesToNotify = i;
            return this;
        }

        public Builder experimentalSetParseAv1SampleDependencies(boolean z) {
            this.parseAv1SampleDependencies = z;
            return this;
        }

        public Builder experimentalSetLateThresholdToDropDecoderInputUs(long j) {
            this.lateThresholdToDropDecoderInputUs = j;
            return this;
        }

        public Builder experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(boolean z) {
            this.enableMediaCodecBufferDecodeOnlyFlag = z;
            return this;
        }

        public MediaCodecVideoRenderer build() {
            Assertions.checkState(!this.buildCalled);
            Handler handler = this.eventHandler;
            Assertions.checkState((handler == null && this.eventListener == null) || !(handler == null || this.eventListener == null));
            this.buildCalled = true;
            return new MediaCodecVideoRenderer(this);
        }
    }

    public MediaCodecVideoRenderer(Builder builder) {
        super(2, builder.codecAdapterFactory, builder.mediaCodecSelector, builder.enableDecoderFallback, builder.assumedMinimumCodecOperatingRate);
        Context applicationContext = builder.context.getApplicationContext();
        this.context = applicationContext;
        this.maxDroppedFramesToNotify = builder.maxDroppedFramesToNotify;
        this.videoSink = builder.videoSink;
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(builder.eventHandler, builder.eventListener);
        this.ownsVideoSink = this.videoSink == null;
        this.videoFrameReleaseControl = new VideoFrameReleaseControl(applicationContext, this, builder.allowedJoiningTimeMs);
        this.videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
        this.deviceNeedsNoPostProcessWorkaround = deviceNeedsNoPostProcessWorkaround();
        this.outputResolution = Size.UNKNOWN;
        this.scalingMode = 1;
        this.changeFrameRateStrategy = 0;
        this.decodedVideoSize = VideoSize.UNKNOWN;
        this.tunnelingAudioSessionId = 0;
        this.reportedVideoSize = null;
        this.rendererPriority = -1000;
        this.startPositionUs = -9223372036854775807L;
        this.periodDurationUs = -9223372036854775807L;
        this.av1SampleDependencyParser = builder.parseAv1SampleDependencies ? new Av1SampleDependencyParser() : null;
        this.droppedDecoderInputBufferTimestamps = new PriorityQueue<>();
        if (builder.lateThresholdToDropDecoderInputUs != -9223372036854775807L) {
            this.minEarlyUsToDropDecoderInput = -builder.lateThresholdToDropDecoderInputUs;
            this.videoFrameReleaseEarlyTimeForecaster = new VideoFrameReleaseEarlyTimeForecaster(1.0f);
        } else {
            this.minEarlyUsToDropDecoderInput = -9223372036854775807L;
            this.videoFrameReleaseEarlyTimeForecaster = null;
        }
        this.enableMediaCodecBufferDecodeOnlyFlag = builder.enableMediaCodecBufferDecodeOnlyFlag;
        this.scrubbingModeParameters = null;
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldForceReleaseFrame(long j, long j2) {
        return shouldForceRenderOutputBuffer(j, j2);
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldDropFrame(long j, long j2, boolean z) {
        return shouldDropOutputBuffer(j, j2, z);
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldIgnoreFrame(long j, long j2, long j3, boolean z, boolean z2) {
        if (this.videoSink != null && this.ownsVideoSink) {
            j2 -= getBufferTimestampAdjustmentUs();
        }
        return shouldDropBuffersToKeyframe(j, j3, z) && maybeDropBuffersToKeyframe(j2, z2);
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) {
        return supportsFormatInternal(this.context, mediaCodecSelector, format);
    }

    private static int supportsFormatInternal(Context context, MediaCodecSelector mediaCodecSelector, Format format) {
        boolean z;
        int i = 0;
        if (!MimeTypes.isVideo(format.sampleMimeType)) {
            return RendererCapabilities.create(0);
        }
        boolean z2 = format.drmInitData != null;
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(context, mediaCodecSelector, format, z2, false);
        if (z2 && decoderInfos.isEmpty()) {
            decoderInfos = getDecoderInfos(context, mediaCodecSelector, format, false, false);
        }
        if (decoderInfos.isEmpty()) {
            return RendererCapabilities.create(1);
        }
        if (!MediaCodecRenderer.supportsFormatDrm(format)) {
            return RendererCapabilities.create(2);
        }
        MediaCodecInfo mediaCodecInfo = decoderInfos.get(0);
        boolean zIsFormatSupported = mediaCodecInfo.isFormatSupported(format);
        if (zIsFormatSupported) {
            z = true;
        } else {
            for (int i2 = 1; i2 < decoderInfos.size(); i2++) {
                MediaCodecInfo mediaCodecInfo2 = decoderInfos.get(i2);
                if (mediaCodecInfo2.isFormatSupported(format)) {
                    z = false;
                    zIsFormatSupported = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
            }
            z = true;
        }
        int i3 = zIsFormatSupported ? 4 : 3;
        int i4 = mediaCodecInfo.isSeamlessAdaptationSupported(format) ? 16 : 8;
        int i5 = mediaCodecInfo.hardwareAccelerated ? 64 : 0;
        int i6 = z ? 128 : 0;
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(format.sampleMimeType) && !Api26.doesDisplaySupportDolbyVision(context)) {
            i6 = 256;
        }
        if (zIsFormatSupported) {
            List<MediaCodecInfo> decoderInfos2 = getDecoderInfos(context, mediaCodecSelector, format, z2, true);
            if (!decoderInfos2.isEmpty()) {
                MediaCodecInfo mediaCodecInfo3 = MediaCodecUtil.getDecoderInfosSortedByFormatSupport(decoderInfos2, format).get(0);
                if (mediaCodecInfo3.isFormatSupported(format) && mediaCodecInfo3.isSeamlessAdaptationSupported(format)) {
                    i = 32;
                }
            }
        }
        return RendererCapabilities.create(i3, i4, i, i5, i6);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z) {
        return MediaCodecUtil.getDecoderInfosSortedByFormatSupport(getDecoderInfos(this.context, mediaCodecSelector, format, z, this.tunneling), format);
    }

    private static List<MediaCodecInfo> getDecoderInfos(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) {
        String str = format.sampleMimeType;
        if (str == null) {
            return ImmutableList.of();
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !Api26.doesDisplaySupportDolbyVision(context)) {
            List<MediaCodecInfo> alternativeDecoderInfos = MediaCodecUtil.getAlternativeDecoderInfos(mediaCodecSelector, format, z, z2);
            if (!alternativeDecoderInfos.isEmpty()) {
                return alternativeDecoderInfos;
            }
        }
        return MediaCodecUtil.getDecoderInfosSoftMatch(mediaCodecSelector, format, z, z2);
    }

    public static final class Api26 {
        public static boolean doesDisplaySupportDolbyVision(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display != null && display.isHdr()) {
                for (int i : display.getHdrCapabilities().getSupportedHdrTypes()) {
                    if (i == 1) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onInit() {
        super.onInit();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        super.onEnabled(z, z2);
        boolean z3 = getConfiguration().tunneling;
        Assertions.checkState((z3 && this.tunnelingAudioSessionId == 0) ? false : true);
        if (this.tunneling != z3) {
            this.tunneling = z3;
            releaseCodec();
        }
        this.eventDispatcher.enabled(this.decoderCounters);
        if (!this.hasSetVideoSink) {
            if (this.videoEffects != null && this.videoSink == null) {
                PlaybackVideoGraphWrapper playbackVideoGraphWrapperCreatePlaybackVideoGraphWrapper = createPlaybackVideoGraphWrapper(this.context, this.videoFrameReleaseControl);
                playbackVideoGraphWrapperCreatePlaybackVideoGraphWrapper.setTotalVideoInputCount(1);
                this.videoSink = playbackVideoGraphWrapperCreatePlaybackVideoGraphWrapper.getSink(0);
            }
            this.hasSetVideoSink = true;
        }
        if (this.videoSink != null) {
            configureVideoSink();
            this.nextVideoSinkFirstFrameReleaseInstruction = !z2 ? 1 : 0;
            experimentalEnableProcessedStreamChangedAtStart();
        } else {
            this.videoFrameReleaseControl.setClock(getClock());
            this.videoFrameReleaseControl.onStreamChanged(!z2 ? 1 : 0);
        }
    }

    @RequiresNonNull({"videoSink"})
    private void configureVideoSink() {
        this.videoSink.setListener(new VideoSink.Listener() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.1
            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onVideoSizeChanged(VideoSize videoSize) {
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFrameAvailableForRendering() {
                Renderer.WakeupListener wakeupListener = MediaCodecVideoRenderer.this.getWakeupListener();
                if (wakeupListener != null) {
                    wakeupListener.onWakeup();
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFirstFrameRendered() {
                if (MediaCodecVideoRenderer.this.displaySurface != null) {
                    MediaCodecVideoRenderer.this.notifyRenderedFirstFrame();
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFrameDropped() {
                if (MediaCodecVideoRenderer.this.displaySurface != null) {
                    MediaCodecVideoRenderer.this.updateDroppedBufferCounters(0, 1);
                }
            }
        }, MoreExecutors.directExecutor());
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            this.videoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
        }
        if (this.displaySurface != null && !this.outputResolution.equals(Size.UNKNOWN)) {
            this.videoSink.setOutputSurfaceInfo(this.displaySurface, this.outputResolution);
        }
        this.videoSink.setChangeFrameRateStrategy(this.changeFrameRateStrategy);
        this.videoSink.setPlaybackSpeed(getPlaybackSpeed());
        List<Object> list = this.videoEffects;
        if (list != null) {
            this.videoSink.setVideoEffects(list);
        }
    }

    public PlaybackVideoGraphWrapper createPlaybackVideoGraphWrapper(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
        return new PlaybackVideoGraphWrapper.Builder(context, videoFrameReleaseControl).setEnablePlaylistMode(true).setClock(getClock()).build();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void enableMayRenderStartOfStream() {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            int i = this.nextVideoSinkFirstFrameReleaseInstruction;
            if (i == 0 || i == 1) {
                this.nextVideoSinkFirstFrameReleaseInstruction = 0;
                return;
            } else {
                videoSink.allowReleaseFirstFrameBeforeStarted();
                return;
            }
        }
        this.videoFrameReleaseControl.allowReleaseFirstFrameBeforeStarted();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
        super.onStreamChanged(formatArr, j, j2, mediaPeriodId);
        updatePeriodDurationUs(mediaPeriodId);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
    }

    private void updatePeriodDurationUs(MediaSource.MediaPeriodId mediaPeriodId) {
        Timeline timeline = getTimeline();
        if (timeline.isEmpty()) {
            this.periodDurationUs = -9223372036854775807L;
        } else {
            this.periodDurationUs = timeline.getPeriodByUid(((MediaSource.MediaPeriodId) Assertions.checkNotNull(mediaPeriodId)).periodUid, new Timeline.Period()).getDurationUs();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null && !z) {
            videoSink.flush(true);
        }
        super.onPositionReset(j, z);
        if (this.videoSink == null) {
            this.videoFrameReleaseControl.reset();
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
        if (z) {
            VideoSink videoSink2 = this.videoSink;
            if (videoSink2 != null) {
                videoSink2.join(false);
            } else {
                this.videoFrameReleaseControl.join(false);
            }
        }
        maybeSetupTunnelingForFirstFrame();
        this.consecutiveDroppedFrameCount = 0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        if (!super.isEnded()) {
            return false;
        }
        VideoSink videoSink = this.videoSink;
        return videoSink == null || videoSink.isEnded();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        boolean zIsReady = super.isReady();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            return videoSink.isReady(zIsReady);
        }
        if (zIsReady && (getCodec() == null || this.tunneling)) {
            return true;
        }
        return this.videoFrameReleaseControl.isReady(zIsReady);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onStarted() {
        super.onStarted();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = getClock().elapsedRealtime();
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.startRendering();
        } else {
            this.videoFrameReleaseControl.onStarted();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onStopped() {
        maybeNotifyDroppedFrames();
        maybeNotifyVideoFrameProcessingOffset();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.stopRendering();
        } else {
            this.videoFrameReleaseControl.onStopped();
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
        super.onStopped();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.reportedVideoSize = null;
        this.periodDurationUs = -9223372036854775807L;
        maybeSetupTunnelingForFirstFrame();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.tunnelingOnFrameRenderedListener = null;
        this.isFlushRequired = true;
        try {
            super.onDisabled();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
            this.eventDispatcher.videoSizeChanged(VideoSize.UNKNOWN);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onReset() {
        try {
            super.onReset();
        } finally {
            this.hasSetVideoSink = false;
            this.startPositionUs = -9223372036854775807L;
            releasePlaceholderSurface();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onRelease() {
        super.onRelease();
        VideoSink videoSink = this.videoSink;
        if (videoSink == null || !this.ownsVideoSink) {
            return;
        }
        videoSink.release();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            setOutput(obj);
            return;
        }
        if (i == 7) {
            VideoFrameMetadataListener videoFrameMetadataListener = (VideoFrameMetadataListener) Assertions.checkNotNull(obj);
            this.frameMetadataListener = videoFrameMetadataListener;
            VideoSink videoSink = this.videoSink;
            if (videoSink != null) {
                videoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
                return;
            }
            return;
        }
        if (i == 10) {
            int iIntValue = ((Integer) Assertions.checkNotNull(obj)).intValue();
            if (this.tunnelingAudioSessionId != iIntValue) {
                this.tunnelingAudioSessionId = iIntValue;
                if (this.tunneling) {
                    releaseCodec();
                    return;
                }
                return;
            }
            return;
        }
        if (i == 4) {
            this.scalingMode = ((Integer) Assertions.checkNotNull(obj)).intValue();
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                codec.setVideoScalingMode(this.scalingMode);
                return;
            }
            return;
        }
        if (i == 5) {
            int iIntValue2 = ((Integer) Assertions.checkNotNull(obj)).intValue();
            this.changeFrameRateStrategy = iIntValue2;
            VideoSink videoSink2 = this.videoSink;
            if (videoSink2 != null) {
                videoSink2.setChangeFrameRateStrategy(iIntValue2);
                return;
            } else {
                this.videoFrameReleaseControl.setChangeFrameRateStrategy(iIntValue2);
                return;
            }
        }
        if (i == 13) {
            setVideoEffects((List) Assertions.checkNotNull(obj));
            return;
        }
        if (i == 14) {
            Size size = (Size) Assertions.checkNotNull(obj);
            if (size.getWidth() == 0 || size.getHeight() == 0) {
                return;
            }
            this.outputResolution = size;
            VideoSink videoSink3 = this.videoSink;
            if (videoSink3 != null) {
                videoSink3.setOutputSurfaceInfo((Surface) Assertions.checkStateNotNull(this.displaySurface), size);
                return;
            }
            return;
        }
        switch (i) {
            case 16:
                this.rendererPriority = ((Integer) Assertions.checkNotNull(obj)).intValue();
                updateCodecImportance();
                break;
            case 17:
                Surface surface = this.displaySurface;
                setOutput(null);
                ((MediaCodecVideoRenderer) Assertions.checkNotNull(obj)).handleMessage(1, surface);
                break;
            case 18:
                ScrubbingModeParameters scrubbingModeParameters = this.scrubbingModeParameters;
                boolean z = scrubbingModeParameters != null && scrubbingModeParameters.shouldIncreaseCodecOperatingRate;
                ScrubbingModeParameters scrubbingModeParameters2 = (ScrubbingModeParameters) obj;
                this.scrubbingModeParameters = scrubbingModeParameters2;
                if (z != (scrubbingModeParameters2 != null && scrubbingModeParameters2.shouldIncreaseCodecOperatingRate)) {
                    updateCodecOperatingRate();
                }
                break;
            default:
                super.handleMessage(i, obj);
                break;
        }
    }

    private void setOutput(Object obj) throws ExoPlaybackException {
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        if (this.displaySurface == surface) {
            if (surface != null) {
                maybeRenotifyVideoSizeChanged();
                maybeRenotifyRenderedFirstFrame();
                return;
            }
            return;
        }
        this.displaySurface = surface;
        if (this.videoSink == null) {
            this.videoFrameReleaseControl.setOutputSurface(surface);
        }
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int state = getState();
        MediaCodecAdapter codec = getCodec();
        if (codec != null && this.videoSink == null) {
            MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) Assertions.checkNotNull(getCodecInfo());
            if (hasSurfaceForCodec(mediaCodecInfo) && !this.codecNeedsSetOutputSurfaceWorkaround) {
                setOutputSurface(codec, getSurfaceForCodec(mediaCodecInfo));
            } else {
                releaseCodec();
                maybeInitCodecOrBypass();
            }
        }
        if (surface != null) {
            maybeRenotifyVideoSizeChanged();
        } else {
            this.reportedVideoSize = null;
            VideoSink videoSink = this.videoSink;
            if (videoSink != null) {
                videoSink.clearOutputSurfaceInfo();
            }
        }
        if (state == 2) {
            VideoSink videoSink2 = this.videoSink;
            if (videoSink2 != null) {
                videoSink2.join(true);
            } else {
                this.videoFrameReleaseControl.join(true);
            }
        }
        maybeSetupTunnelingForFirstFrame();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return hasSurfaceForCodec(mediaCodecInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f) {
        String str = mediaCodecInfo.codecMimeType;
        CodecMaxValues codecMaxValues = getCodecMaxValues(mediaCodecInfo, format, getStreamFormats());
        this.codecMaxValues = codecMaxValues;
        MediaFormat mediaFormat = getMediaFormat(format, str, codecMaxValues, f, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        Surface surfaceForCodec = getSurfaceForCodec(mediaCodecInfo);
        maybeSetKeyAllowFrameDrop(mediaFormat);
        return MediaCodecAdapter.Configuration.createForVideoDecoding(mediaCodecInfo, mediaFormat, format, surfaceForCodec, mediaCrypto);
    }

    private void maybeSetKeyAllowFrameDrop(MediaFormat mediaFormat) {
        if (this.videoSink == null || Util.isFrameDropAllowedOnSurfaceInput(this.context)) {
            return;
        }
        mediaFormat.setInteger("allow-frame-drop", 0);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        DecoderReuseEvaluation decoderReuseEvaluationCanReuseCodec = mediaCodecInfo.canReuseCodec(format, format2);
        int i = decoderReuseEvaluationCanReuseCodec.discardReasons;
        CodecMaxValues codecMaxValues = (CodecMaxValues) Assertions.checkNotNull(this.codecMaxValues);
        if (format2.width > codecMaxValues.width || format2.height > codecMaxValues.height) {
            i |= 256;
        }
        if (getMaxInputSize(mediaCodecInfo, format2) > codecMaxValues.inputSize) {
            i |= 64;
        }
        int i2 = i;
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, i2 != 0 ? 0 : decoderReuseEvaluationCanReuseCodec.result, i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            try {
                videoSink.render(j, j2);
            } catch (VideoSink.VideoSinkException e) {
                throw createRendererException(e, e.format, 7001);
            }
        }
        super.render(j, j2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.droppedDecoderInputBufferTimestamps.clear();
        this.buffersInCodecCount = 0;
        this.consecutiveDroppedInputBufferCount = 0;
        this.isFlushRequired = false;
        Av1SampleDependencyParser av1SampleDependencyParser = this.av1SampleDependencyParser;
        if (av1SampleDependencyParser != null) {
            av1SampleDependencyParser.reset();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        super.setPlaybackSpeed(f, f2);
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.setPlaybackSpeed(f);
        } else {
            this.videoFrameReleaseControl.setPlaybackSpeed(f);
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.setPlaybackSpeed(f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getCodecMaxInputSize(MediaCodecInfo mediaCodecInfo, Format format) {
        int i = format.width;
        int i2 = format.height;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        String str = (String) Assertions.checkNotNull(format.sampleMimeType);
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(format);
            if (codecProfileAndLevel == null) {
                str = "video/hevc";
            } else {
                int iIntValue = ((Integer) codecProfileAndLevel.first).intValue();
                if (iIntValue == 512 || iIntValue == 1 || iIntValue == 2) {
                    str = MediaController.VIDEO_MIME_TYPE;
                } else if (iIntValue == 1024) {
                    str = "video/av01";
                }
            }
        }
        str.getClass();
        switch (str) {
            case "video/3gpp":
            case "video/av01":
            case "video/mp4v-es":
            case "video/x-vnd.on2.vp8":
                return getMaxSampleSize(i * i2, 2);
            case "video/hevc":
                return Math.max(TLObject.FLAG_21, getMaxSampleSize(i * i2, 2));
            case "video/avc":
                String str2 = Build.MODEL;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(Build.MANUFACTURER) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && mediaCodecInfo.secure)))) {
                    return -1;
                }
                return getMaxSampleSize(Util.ceilDivide(i, 16) * Util.ceilDivide(i2, 16) * 256, 2);
            case "video/x-vnd.on2.vp9":
                return getMaxSampleSize(i * i2, 4);
            default:
                return -1;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public float getCodecOperatingRateV23(float f, Format format, Format[] formatArr) {
        MediaCodecInfo codecInfo;
        float fMax = -1.0f;
        for (Format format2 : formatArr) {
            float f2 = format2.frameRate;
            if (f2 != -1.0f) {
                fMax = Math.max(fMax, f2);
            }
        }
        float f3 = fMax == -1.0f ? -1.0f : fMax * f;
        if (this.scrubbingModeParameters == null || (codecInfo = getCodecInfo()) == null) {
            return f3;
        }
        float maxSupportedFrameRate = codecInfo.getMaxSupportedFrameRate(format.width, format.height);
        return f3 != -1.0f ? Math.max(f3, maxSupportedFrameRate) : maxSupportedFrameRate;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public boolean maybeInitializeProcessingPipeline(Format format) throws ExoPlaybackException {
        VideoSink videoSink = this.videoSink;
        if (videoSink == null || videoSink.isInitialized()) {
            return true;
        }
        try {
            return this.videoSink.initialize(format);
        } catch (VideoSink.VideoSinkException e) {
            throw this.createRendererException(e, format, 7000);
        }
    }

    public void setVideoEffects(List<Object> list) {
        if (list.equals(VideoFrameProcessor.REDRAW)) {
            VideoSink videoSink = this.videoSink;
            if (videoSink == null || !videoSink.isInitialized()) {
                return;
            }
            this.videoSink.redraw();
            return;
        }
        this.videoEffects = list;
        VideoSink videoSink2 = this.videoSink;
        if (videoSink2 != null) {
            videoSink2.setVideoEffects(list);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j, long j2) {
        this.eventDispatcher.decoderInitialized(str, j, j2);
        this.codecNeedsSetOutputSurfaceWorkaround = codecNeedsSetOutputSurfaceWorkaround(str);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        maybeSetupTunnelingForFirstFrame();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onCodecReleased(String str) {
        this.eventDispatcher.decoderReleased(str);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onCodecError(Exception exc) {
        Log.m161e("MediaCodecVideoRenderer", "Video codec error", exc);
        this.eventDispatcher.videoCodecError(exc);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean shouldReleaseCodecInsteadOfFlushing() {
        MediaCodecInfo codecInfo = getCodecInfo();
        if (this.videoSink == null || codecInfo == null || !(codecInfo.name.equals("c2.mtk.avc.decoder") || codecInfo.name.equals("c2.mtk.hevc.decoder"))) {
            return super.shouldReleaseCodecInsteadOfFlushing();
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean shouldFlushCodec() {
        Format codecInputFormat = getCodecInputFormat();
        ScrubbingModeParameters scrubbingModeParameters = this.scrubbingModeParameters;
        if (scrubbingModeParameters == null) {
            return super.shouldFlushCodec();
        }
        if (!scrubbingModeParameters.allowSkippingMediaCodecFlush || this.isFlushRequired || this.tunneling) {
            return true;
        }
        return (codecInputFormat != null && codecInputFormat.maxNumReorderSamples > 0) || hasSkippedFlushAndWaitingForEarlierFrame() || getLastBufferInStreamPresentationTimeUs() != -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        DecoderReuseEvaluation decoderReuseEvaluationOnInputFormatChanged = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged((Format) Assertions.checkNotNull(formatHolder.format), decoderReuseEvaluationOnInputFormatChanged);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
        return decoderReuseEvaluationOnInputFormatChanged;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (this.av1SampleDependencyParser != null && ((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).mimeType.equals("video/av01") && (byteBuffer = decoderInputBuffer.data) != null) {
            this.av1SampleDependencyParser.queueInputBuffer(byteBuffer);
        }
        this.consecutiveDroppedInputBufferCount = 0;
        int codecBufferFlags = getCodecBufferFlags(decoderInputBuffer);
        if ((Build.VERSION.SDK_INT < 34 || (codecBufferFlags & 32) == 0) && !this.tunneling) {
            this.buffersInCodecCount++;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public int getCodecBufferFlags(DecoderInputBuffer decoderInputBuffer) {
        ScrubbingModeParameters scrubbingModeParameters;
        if (Build.VERSION.SDK_INT >= 34) {
            return ((this.enableMediaCodecBufferDecodeOnlyFlag || (((scrubbingModeParameters = this.scrubbingModeParameters) != null && scrubbingModeParameters.useDecodeOnlyFlag) || this.tunneling)) && isBufferBeforeStartTime(decoderInputBuffer) && !isBufferProbablyLastSample(decoderInputBuffer)) ? 32 : 0;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a4  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean shouldDiscardDecoderInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        boolean z;
        ByteBuffer byteBuffer;
        boolean z2 = false;
        if (isBufferProbablyLastSample(decoderInputBuffer)) {
            return false;
        }
        boolean zIsBufferBeforeStartTime = isBufferBeforeStartTime(decoderInputBuffer);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            long jPredictEarlyUs = videoFrameReleaseEarlyTimeForecaster.predictEarlyUs(decoderInputBuffer.timeUs);
            z = jPredictEarlyUs != -9223372036854775807L && jPredictEarlyUs < this.minEarlyUsToDropDecoderInput;
        }
        if ((!zIsBufferBeforeStartTime && !z) || decoderInputBuffer.hasSupplementalData()) {
            return false;
        }
        if (decoderInputBuffer.notDependedOn()) {
            decoderInputBuffer.clear();
        } else {
            if (this.av1SampleDependencyParser != null && ((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).mimeType.equals("video/av01") && (byteBuffer = decoderInputBuffer.data) != null) {
                boolean z3 = zIsBufferBeforeStartTime || this.consecutiveDroppedInputBufferCount <= 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                byteBufferAsReadOnlyBuffer.flip();
                int iSampleLimitAfterSkippingNonReferenceFrame = this.av1SampleDependencyParser.sampleLimitAfterSkippingNonReferenceFrame(byteBufferAsReadOnlyBuffer, z3);
                if (iSampleLimitAfterSkippingNonReferenceFrame == 0) {
                    decoderInputBuffer.clear();
                } else if (iSampleLimitAfterSkippingNonReferenceFrame != byteBufferAsReadOnlyBuffer.limit() && ((CodecMaxValues) Assertions.checkNotNull(this.codecMaxValues)).inputSize + iSampleLimitAfterSkippingNonReferenceFrame < byteBufferAsReadOnlyBuffer.capacity() && !decoderInputBuffer.isEncrypted()) {
                    ((ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.data)).position(iSampleLimitAfterSkippingNonReferenceFrame);
                }
            }
            if (z2) {
                if (zIsBufferBeforeStartTime) {
                    this.decoderCounters.skippedInputBufferCount++;
                    return z2;
                }
                this.droppedDecoderInputBufferTimestamps.add(Long.valueOf(decoderInputBuffer.timeUs));
                this.consecutiveDroppedInputBufferCount++;
            }
            return z2;
        }
        z2 = true;
        if (z2) {
        }
        return z2;
    }

    private boolean isBufferProbablyLastSample(DecoderInputBuffer decoderInputBuffer) {
        if (hasReadStreamToEnd() || decoderInputBuffer.isLastSample() || this.periodDurationUs == -9223372036854775807L) {
            return true;
        }
        return this.periodDurationUs - (decoderInputBuffer.timeUs - getOutputStreamOffsetUs()) <= 100000;
    }

    private boolean isBufferBeforeStartTime(DecoderInputBuffer decoderInputBuffer) {
        return decoderInputBuffer.timeUs < getLastResetPositionUs();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onOutputFormatChanged(Format format, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        int i;
        int i2;
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
        if (this.tunneling) {
            i2 = format.width;
            i = format.height;
        } else {
            Assertions.checkNotNull(mediaFormat);
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            if (z) {
                integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            if (z) {
                integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            int i3 = integer;
            i = integer2;
            i2 = i3;
        }
        float f = format.pixelWidthHeightRatio;
        int i4 = format.rotationDegrees;
        if (i4 == 90 || i4 == 270) {
            f = 1.0f / f;
            int i5 = i;
            i = i2;
            i2 = i5;
        }
        this.decodedVideoSize = new VideoSize(i2, i, f);
        VideoSink videoSink = this.videoSink;
        if (videoSink != null && this.pendingVideoSinkInputStreamChange) {
            changeVideoSinkInputStream(videoSink, 1, format.buildUpon().setWidth(i2).setHeight(i).setPixelWidthHeightRatio(f).build(), this.nextVideoSinkFirstFrameReleaseInstruction);
            this.nextVideoSinkFirstFrameReleaseInstruction = 2;
        } else {
            this.videoFrameReleaseControl.setFrameRate(format.frameRate);
        }
        this.pendingVideoSinkInputStreamChange = false;
    }

    public void changeVideoSinkInputStream(VideoSink videoSink, int i, Format format, int i2) {
        List<Object> listOf = this.videoEffects;
        if (listOf == null) {
            listOf = ImmutableList.of();
        }
        videoSink.onInputStreamChanged(i, format, getOutputStreamStartPositionUs(), i2, listOf);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    public void handleInputBufferSupplementalData(DecoderInputBuffer decoderInputBuffer) {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata) {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4) {
                    if (b4 == 0 || b4 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        setHdr10PlusInfoV29((MediaCodecAdapter) Assertions.checkNotNull(getCodec()), bArr);
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public boolean processOutputBuffer(long j, long j2, final MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, final int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) {
        Assertions.checkNotNull(mediaCodecAdapter);
        final long outputStreamOffsetUs = j3 - getOutputStreamOffsetUs();
        updateDroppedBufferCountersWithInputBuffers(j3);
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            if (z && !z2) {
                skipOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
                return true;
            }
            return videoSink.handleInputFrame(j3, new VideoSink.VideoFrameHandler() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.2
                @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
                public void render(long j4) {
                    MediaCodecVideoRenderer.this.renderOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs, j4);
                }

                @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
                public void skip() {
                    MediaCodecVideoRenderer.this.skipOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
                }
            });
        }
        int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(j3, j, j2, getOutputStreamStartPositionUs(), z, z2, this.videoFrameReleaseInfo);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null && frameReleaseAction != 5 && frameReleaseAction != 4) {
            videoFrameReleaseEarlyTimeForecaster.onVideoFrameProcessed(j3, this.videoFrameReleaseInfo.getEarlyUs());
        }
        if (frameReleaseAction == 0) {
            long jNanoTime = getClock().nanoTime();
            notifyFrameMetadataListener(outputStreamOffsetUs, jNanoTime, format);
            renderOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs, jNanoTime);
            updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
            return true;
        }
        if (frameReleaseAction == 1) {
            releaseFrame((MediaCodecAdapter) Assertions.checkStateNotNull(mediaCodecAdapter), i, outputStreamOffsetUs, format);
            return true;
        }
        if (frameReleaseAction == 2) {
            dropOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
            updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
            return true;
        }
        if (frameReleaseAction == 3) {
            skipOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
            updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
            return true;
        }
        if (frameReleaseAction == 4 || frameReleaseAction == 5) {
            return false;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m(String.valueOf(frameReleaseAction));
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void renderToEndOfStream() {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.signalEndOfCurrentInputStream();
        }
    }

    public long getBufferTimestampAdjustmentUs() {
        return -this.startPositionUs;
    }

    private void releaseFrame(MediaCodecAdapter mediaCodecAdapter, int i, long j, Format format) {
        MediaCodecVideoRenderer mediaCodecVideoRenderer;
        long releaseTimeNs = this.videoFrameReleaseInfo.getReleaseTimeNs();
        long earlyUs = this.videoFrameReleaseInfo.getEarlyUs();
        if (shouldSkipBuffersWithIdenticalReleaseTime() && releaseTimeNs == this.lastFrameReleaseTimeNs) {
            skipOutputBuffer(mediaCodecAdapter, i, j);
            mediaCodecVideoRenderer = this;
        } else {
            mediaCodecVideoRenderer = this;
            mediaCodecVideoRenderer.notifyFrameMetadataListener(j, releaseTimeNs, format);
            mediaCodecVideoRenderer.renderOutputBufferV21(mediaCodecAdapter, i, j, releaseTimeNs);
            releaseTimeNs = releaseTimeNs;
        }
        mediaCodecVideoRenderer.updateVideoFrameProcessingOffsetCounters(earlyUs);
        mediaCodecVideoRenderer.lastFrameReleaseTimeNs = releaseTimeNs;
    }

    private void notifyFrameMetadataListener(long j, long j2, Format format) {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, getCodecOutputMediaFormat());
        }
    }

    public void onProcessedTunneledBuffer(long j) {
        updateOutputFormatForTime(j);
        maybeNotifyVideoSizeChanged(this.decodedVideoSize);
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
        onProcessedOutputBuffer(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProcessedTunneledEndOfStream() {
        setPendingOutputEndOfStream();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onProcessedOutputBuffer(long j) {
        super.onProcessedOutputBuffer(j);
        if (this.tunneling) {
            return;
        }
        this.buffersInCodecCount--;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.signalEndOfCurrentInputStream();
            if (this.startPositionUs == -9223372036854775807L) {
                this.startPositionUs = getOutputStreamStartPositionUs();
            }
            this.videoSink.setBufferTimestampAdjustmentUs(getBufferTimestampAdjustmentUs());
        } else {
            this.videoFrameReleaseControl.onStreamChanged(2);
        }
        this.pendingVideoSinkInputStreamChange = true;
        maybeSetupTunnelingForFirstFrame();
    }

    public void skipOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("skipVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    public void dropOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("dropVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        updateDroppedBufferCounters(0, 1);
    }

    public boolean maybeDropBuffersToKeyframe(long j, boolean z) throws ExoPlaybackException {
        int iSkipSource = skipSource(j);
        if (iSkipSource == 0) {
            return false;
        }
        DecoderCounters decoderCounters = this.decoderCounters;
        if (z) {
            int i = decoderCounters.skippedInputBufferCount + iSkipSource;
            decoderCounters.skippedInputBufferCount = i;
            decoderCounters.skippedOutputBufferCount += this.buffersInCodecCount;
            decoderCounters.skippedInputBufferCount = i + this.droppedDecoderInputBufferTimestamps.size();
        } else {
            decoderCounters.droppedToKeyframeCount++;
            updateDroppedBufferCounters(iSkipSource + this.droppedDecoderInputBufferTimestamps.size(), this.buffersInCodecCount);
        }
        flushOrReinitializeCodec();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.flush(false);
        }
        return true;
    }

    public void updateDroppedBufferCounters(int i, int i2) {
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedInputBufferCount += i;
        int i3 = i + i2;
        decoderCounters.droppedBufferCount += i3;
        this.droppedFrames += i3;
        int i4 = this.consecutiveDroppedFrameCount + i3;
        this.consecutiveDroppedFrameCount = i4;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i4, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i5 = this.maxDroppedFramesToNotify;
        if (i5 <= 0 || this.droppedFrames < i5) {
            return;
        }
        maybeNotifyDroppedFrames();
    }

    private void updateDroppedBufferCountersWithInputBuffers(long j) {
        int i = 0;
        while (true) {
            Long lPeek = this.droppedDecoderInputBufferTimestamps.peek();
            if (lPeek == null || lPeek.longValue() >= j) {
                break;
            }
            i++;
            this.droppedDecoderInputBufferTimestamps.poll();
        }
        updateDroppedBufferCounters(i, 0);
    }

    public void updateVideoFrameProcessingOffsetCounters(long j) {
        this.decoderCounters.addVideoFrameProcessingOffset(j);
        this.totalVideoFrameProcessingOffsetUs += j;
        this.videoFrameProcessingOffsetCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j, long j2) {
        renderOutputBufferV21(mediaCodecAdapter, i, j, j2);
    }

    public void renderOutputBufferV21(MediaCodecAdapter mediaCodecAdapter, int i, long j, long j2) {
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, j2);
        TraceUtil.endSection();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (this.videoSink == null) {
            maybeNotifyVideoSizeChanged(this.decodedVideoSize);
            maybeNotifyRenderedFirstFrame();
        }
    }

    private boolean hasSurfaceForCodec(MediaCodecInfo mediaCodecInfo) {
        if (this.videoSink != null) {
            return true;
        }
        Surface surface = this.displaySurface;
        return (surface != null && surface.isValid()) || shouldUseDetachedSurface(mediaCodecInfo) || shouldUsePlaceholderSurface(mediaCodecInfo);
    }

    private Surface getSurfaceForCodec(MediaCodecInfo mediaCodecInfo) {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            return videoSink.getInputSurface();
        }
        Surface surface = this.displaySurface;
        if (surface != null) {
            return surface;
        }
        if (shouldUseDetachedSurface(mediaCodecInfo)) {
            return null;
        }
        Assertions.checkState(shouldUsePlaceholderSurface(mediaCodecInfo));
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null && placeholderSurface.secure != mediaCodecInfo.secure) {
            releasePlaceholderSurface();
        }
        if (this.placeholderSurface == null) {
            this.placeholderSurface = PlaceholderSurface.newInstance(this.context, mediaCodecInfo.secure);
        }
        return this.placeholderSurface;
    }

    public boolean shouldUseDetachedSurface(MediaCodecInfo mediaCodecInfo) {
        return Build.VERSION.SDK_INT >= 35 && mediaCodecInfo.detachedSurfaceSupported;
    }

    public boolean shouldUsePlaceholderSurface(MediaCodecInfo mediaCodecInfo) {
        if (this.tunneling || codecNeedsSetOutputSurfaceWorkaround(mediaCodecInfo.name)) {
            return false;
        }
        return !mediaCodecInfo.secure || PlaceholderSurface.isSecureSupported(this.context);
    }

    private void releasePlaceholderSurface() {
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null) {
            placeholderSurface.release();
            this.placeholderSurface = null;
        }
    }

    private void maybeSetupTunnelingForFirstFrame() {
        MediaCodecAdapter codec;
        if (!this.tunneling || (codec = getCodec()) == null) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23(codec);
        if (Build.VERSION.SDK_INT >= 33) {
            Bundle bundle = new Bundle();
            bundle.putInt("tunnel-peek", 1);
            codec.setParameters(bundle);
        }
    }

    private void updateCodecImportance() {
        MediaCodecAdapter codec = getCodec();
        if (codec != null && Build.VERSION.SDK_INT >= 35) {
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.rendererPriority));
            codec.setParameters(bundle);
        }
    }

    private void maybeNotifyRenderedFirstFrame() {
        if (!this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame() || this.displaySurface == null) {
            return;
        }
        notifyRenderedFirstFrame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresNonNull({"displaySurface"})
    public void notifyRenderedFirstFrame() {
        this.eventDispatcher.renderedFirstFrame(this.displaySurface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    private void maybeRenotifyRenderedFirstFrame() {
        Surface surface = this.displaySurface;
        if (surface == null || !this.haveReportedFirstFrameRenderedForCurrentSurface) {
            return;
        }
        this.eventDispatcher.renderedFirstFrame(surface);
    }

    private void maybeNotifyVideoSizeChanged(VideoSize videoSize) {
        if (videoSize.equals(VideoSize.UNKNOWN) || videoSize.equals(this.reportedVideoSize)) {
            return;
        }
        this.reportedVideoSize = videoSize;
        this.eventDispatcher.videoSizeChanged(videoSize);
    }

    private void maybeRenotifyVideoSizeChanged() {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.videoSizeChanged(videoSize);
        }
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long jElapsedRealtime = getClock().elapsedRealtime();
            this.eventDispatcher.droppedFrames(this.droppedFrames, jElapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = jElapsedRealtime;
        }
    }

    private void maybeNotifyVideoFrameProcessingOffset() {
        int i = this.videoFrameProcessingOffsetCount;
        if (i != 0) {
            this.eventDispatcher.reportVideoFrameProcessingOffset(this.totalVideoFrameProcessingOffsetUs, i);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    private static void setHdr10PlusInfoV29(MediaCodecAdapter mediaCodecAdapter, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodecAdapter.setParameters(bundle);
    }

    private void setOutputSurface(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        if (surface != null) {
            setOutputSurfaceV23(mediaCodecAdapter, surface);
        } else if (Build.VERSION.SDK_INT >= 35) {
            detachOutputSurfaceV35(mediaCodecAdapter);
        } else {
            MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        }
    }

    public void setOutputSurfaceV23(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        try {
            mediaCodecAdapter.setOutputSurface(surface);
        } catch (Throwable th) {
            th.printStackTrace();
            throw new SurfaceNotValidException(th);
        }
    }

    public void detachOutputSurfaceV35(MediaCodecAdapter mediaCodecAdapter) {
        mediaCodecAdapter.detachOutputSurface();
    }

    @SuppressLint({"InlinedApi"})
    public MediaFormat getMediaFormat(Format format, String str, CodecMaxValues codecMaxValues, float f, boolean z, int i) {
        Pair<Integer, Integer> codecProfileAndLevel;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        MediaFormatUtil.maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "rotation-degrees", format.rotationDegrees);
        MediaFormatUtil.maybeSetColorInfo(mediaFormat, format.colorInfo);
        if ("video/dolby-vision".equals(format.sampleMimeType) && (codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(format)) != null) {
            MediaFormatUtil.maybeSetInteger(mediaFormat, "profile", ((Integer) codecProfileAndLevel.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        mediaFormat.setInteger(PluginsConstants.MenuItemProperties.PRIORITY, 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.rendererPriority));
        }
        return mediaFormat;
    }

    public CodecMaxValues getCodecMaxValues(MediaCodecInfo mediaCodecInfo, Format format, Format[] formatArr) {
        int codecMaxInputSize;
        int iMax = format.width;
        int iMax2 = format.height;
        int maxInputSize = getMaxInputSize(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (maxInputSize != -1 && (codecMaxInputSize = getCodecMaxInputSize(mediaCodecInfo, format)) != -1) {
                maxInputSize = Math.min((int) (maxInputSize * 1.5f), codecMaxInputSize);
            }
            return new CodecMaxValues(iMax, iMax2, maxInputSize);
        }
        int length = formatArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            Format formatBuild = formatArr[i];
            if (format.colorInfo != null && formatBuild.colorInfo == null) {
                formatBuild = formatBuild.buildUpon().setColorInfo(format.colorInfo).build();
            }
            if (mediaCodecInfo.canReuseCodec(format, formatBuild).result != 0) {
                int i2 = formatBuild.width;
                z |= i2 == -1 || formatBuild.height == -1;
                iMax = Math.max(iMax, i2);
                iMax2 = Math.max(iMax2, formatBuild.height);
                maxInputSize = Math.max(maxInputSize, getMaxInputSize(mediaCodecInfo, formatBuild));
            }
        }
        if (z) {
            Log.m163w("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point codecMaxSize = getCodecMaxSize(mediaCodecInfo, format);
            if (codecMaxSize != null) {
                iMax = Math.max(iMax, codecMaxSize.x);
                iMax2 = Math.max(iMax2, codecMaxSize.y);
                maxInputSize = Math.max(maxInputSize, getCodecMaxInputSize(mediaCodecInfo, format.buildUpon().setWidth(iMax).setHeight(iMax2).build()));
                Log.m163w("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new CodecMaxValues(iMax, iMax2, maxInputSize);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public MediaCodecDecoderException createDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecVideoDecoderException(th, mediaCodecInfo, this.displaySurface);
    }

    private static Point getCodecMaxSize(MediaCodecInfo mediaCodecInfo, Format format) {
        int i = format.height;
        int i2 = format.width;
        boolean z = i > i2;
        int i3 = z ? i : i2;
        if (z) {
            i = i2;
        }
        float f = i / i3;
        for (int i4 : STANDARD_LONG_EDGE_VIDEO_PX) {
            int i5 = (int) (i4 * f);
            if (i4 <= i3 || i5 <= i) {
                break;
            }
            int i6 = z ? i5 : i4;
            if (!z) {
                i4 = i5;
            }
            Point pointAlignVideoSizeV21 = mediaCodecInfo.alignVideoSizeV21(i6, i4);
            float f2 = format.frameRate;
            if (pointAlignVideoSizeV21 != null && mediaCodecInfo.isVideoSizeAndRateSupportedV21(pointAlignVideoSizeV21.x, pointAlignVideoSizeV21.y, f2)) {
                return pointAlignVideoSizeV21;
            }
        }
        return null;
    }

    public static int getMaxInputSize(MediaCodecInfo mediaCodecInfo, Format format) {
        if (format.maxInputSize != -1) {
            int size = format.initializationData.size();
            int length = 0;
            for (int i = 0; i < size; i++) {
                length += format.initializationData.get(i).length;
            }
            return format.maxInputSize + length;
        }
        return getCodecMaxInputSize(mediaCodecInfo, format);
    }

    private static boolean deviceNeedsNoPostProcessWorkaround() {
        return "NVIDIA".equals(Build.MANUFACTURER);
    }

    public boolean codecNeedsSetOutputSurfaceWorkaround(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            try {
                if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                    deviceNeedsSetOutputSurfaceWorkaround = evaluateDeviceNeedsSetOutputSurfaceWorkaround();
                    evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    public static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int i, int i2, int i3) {
            this.width = i;
            this.height = i2;
            this.inputSize = i3;
        }
    }

    private static int getMaxSampleSize(int i, int i2) {
        return (i * 3) / (i2 * 2);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static boolean evaluateDeviceNeedsSetOutputSurfaceWorkaround() {
        String str;
        int i = Build.VERSION.SDK_INT;
        byte b2 = 7;
        if (i <= 28) {
            String str2 = Build.DEVICE;
            str2.getClass();
            switch (str2) {
            }
            return true;
        }
        if (i <= 27 && "HWEML".equals(Build.DEVICE)) {
            return true;
        }
        str = Build.MODEL;
        str.getClass();
        switch (str) {
            case "AFTJMST12":
            case "AFTKMST12":
            case "AFTA":
            case "AFTN":
            case "AFTR":
            case "AFTEU011":
            case "AFTEU014":
            case "AFTSO001":
            case "AFTEUFF014":
                break;
            default:
                if (i <= 26) {
                    String str3 = Build.DEVICE;
                    str3.getClass();
                    switch (str3.hashCode()) {
                        case -2144781245:
                            b2 = !str3.equals("GIONEE_SWW1609") ? (byte) -1 : (byte) 0;
                            break;
                        case -2144781185:
                            b2 = !str3.equals("GIONEE_SWW1627") ? (byte) -1 : (byte) 1;
                            break;
                        case -2144781160:
                            b2 = !str3.equals("GIONEE_SWW1631") ? (byte) -1 : (byte) 2;
                            break;
                        case -2097309513:
                            b2 = !str3.equals("K50a40") ? (byte) -1 : (byte) 3;
                            break;
                        case -2022874474:
                            b2 = !str3.equals("CP8676_I02") ? (byte) -1 : (byte) 4;
                            break;
                        case -1978993182:
                            b2 = !str3.equals("NX541J") ? (byte) -1 : (byte) 5;
                            break;
                        case -1978990237:
                            b2 = !str3.equals("NX573J") ? (byte) -1 : (byte) 6;
                            break;
                        case -1936688988:
                            if (!str3.equals("PGN528")) {
                                b2 = -1;
                            }
                            break;
                        case -1936688066:
                            b2 = !str3.equals("PGN610") ? (byte) -1 : (byte) 8;
                            break;
                        case -1936688065:
                            b2 = !str3.equals("PGN611") ? (byte) -1 : (byte) 9;
                            break;
                        case -1931988508:
                            b2 = !str3.equals("AquaPowerM") ? (byte) -1 : (byte) 10;
                            break;
                        case -1885099851:
                            b2 = !str3.equals("RAIJIN") ? (byte) -1 : (byte) 11;
                            break;
                        case -1696512866:
                            b2 = !str3.equals("XT1663") ? (byte) -1 : (byte) 12;
                            break;
                        case -1680025915:
                            b2 = !str3.equals("ComioS1") ? (byte) -1 : (byte) 13;
                            break;
                        case -1615810839:
                            b2 = !str3.equals("Phantom6") ? (byte) -1 : (byte) 14;
                            break;
                        case -1600724499:
                            b2 = !str3.equals("pacificrim") ? (byte) -1 : (byte) 15;
                            break;
                        case -1554255044:
                            b2 = !str3.equals("vernee_M5") ? (byte) -1 : (byte) 16;
                            break;
                        case -1481772737:
                            b2 = !str3.equals("panell_dl") ? (byte) -1 : (byte) 17;
                            break;
                        case -1481772730:
                            b2 = !str3.equals("panell_ds") ? (byte) -1 : (byte) 18;
                            break;
                        case -1481772729:
                            b2 = !str3.equals("panell_dt") ? (byte) -1 : (byte) 19;
                            break;
                        case -1320080169:
                            b2 = !str3.equals("GiONEE_GBL7319") ? (byte) -1 : (byte) 20;
                            break;
                        case -1217592143:
                            b2 = !str3.equals("BRAVIA_ATV2") ? (byte) -1 : (byte) 21;
                            break;
                        case -1180384755:
                            b2 = !str3.equals("iris60") ? (byte) -1 : (byte) 22;
                            break;
                        case -1139198265:
                            b2 = !str3.equals("Slate_Pro") ? (byte) -1 : (byte) 23;
                            break;
                        case -1052835013:
                            b2 = !str3.equals("namath") ? (byte) -1 : (byte) 24;
                            break;
                        case -993250464:
                            b2 = !str3.equals("A10-70F") ? (byte) -1 : (byte) 25;
                            break;
                        case -993250458:
                            b2 = !str3.equals("A10-70L") ? (byte) -1 : (byte) 26;
                            break;
                        case -965403638:
                            b2 = !str3.equals("s905x018") ? (byte) -1 : (byte) 27;
                            break;
                        case -958336948:
                            b2 = !str3.equals("ELUGA_Ray_X") ? (byte) -1 : (byte) 28;
                            break;
                        case -879245230:
                            b2 = !str3.equals("tcl_eu") ? (byte) -1 : (byte) 29;
                            break;
                        case -842500323:
                            b2 = !str3.equals("nicklaus_f") ? (byte) -1 : (byte) 30;
                            break;
                        case -821392978:
                            b2 = !str3.equals("A7000-a") ? (byte) -1 : (byte) 31;
                            break;
                        case -797483286:
                            b2 = !str3.equals("SVP-DTV15") ? (byte) -1 : (byte) 32;
                            break;
                        case -794946968:
                            b2 = !str3.equals("watson") ? (byte) -1 : (byte) 33;
                            break;
                        case -788334647:
                            b2 = !str3.equals("whyred") ? (byte) -1 : (byte) 34;
                            break;
                        case -782144577:
                            b2 = !str3.equals("OnePlus5T") ? (byte) -1 : (byte) 35;
                            break;
                        case -575125681:
                            b2 = !str3.equals("GiONEE_CBL7513") ? (byte) -1 : (byte) 36;
                            break;
                        case -521118391:
                            b2 = !str3.equals("GIONEE_GBL7360") ? (byte) -1 : (byte) 37;
                            break;
                        case -430914369:
                            b2 = !str3.equals("Pixi4-7_3G") ? (byte) -1 : (byte) 38;
                            break;
                        case -290434366:
                            b2 = !str3.equals("taido_row") ? (byte) -1 : (byte) 39;
                            break;
                        case -282781963:
                            b2 = !str3.equals("BLACK-1X") ? (byte) -1 : (byte) 40;
                            break;
                        case -277133239:
                            b2 = !str3.equals("Z12_PRO") ? (byte) -1 : (byte) 41;
                            break;
                        case -173639913:
                            b2 = !str3.equals("ELUGA_A3_Pro") ? (byte) -1 : (byte) 42;
                            break;
                        case -56598463:
                            b2 = !str3.equals("woods_fn") ? (byte) -1 : (byte) 43;
                            break;
                        case 2126:
                            b2 = !str3.equals("C1") ? (byte) -1 : (byte) 44;
                            break;
                        case 2564:
                            b2 = !str3.equals("Q5") ? (byte) -1 : (byte) 45;
                            break;
                        case 2715:
                            b2 = !str3.equals("V1") ? (byte) -1 : (byte) 46;
                            break;
                        case 2719:
                            b2 = !str3.equals("V5") ? (byte) -1 : (byte) 47;
                            break;
                        case 3091:
                            b2 = !str3.equals("b5") ? (byte) -1 : (byte) 48;
                            break;
                        case 3483:
                            b2 = !str3.equals("mh") ? (byte) -1 : (byte) 49;
                            break;
                        case 73405:
                            b2 = !str3.equals("JGZ") ? (byte) -1 : (byte) 50;
                            break;
                        case 75537:
                            b2 = !str3.equals("M04") ? (byte) -1 : (byte) 51;
                            break;
                        case 75739:
                            b2 = !str3.equals("M5c") ? (byte) -1 : (byte) 52;
                            break;
                        case 76779:
                            b2 = !str3.equals("MX6") ? (byte) -1 : (byte) 53;
                            break;
                        case 78669:
                            b2 = !str3.equals("P85") ? (byte) -1 : (byte) 54;
                            break;
                        case 79305:
                            b2 = !str3.equals("PLE") ? (byte) -1 : (byte) 55;
                            break;
                        case 80618:
                            b2 = !str3.equals("QX1") ? (byte) -1 : (byte) 56;
                            break;
                        case 88274:
                            b2 = !str3.equals("Z80") ? (byte) -1 : (byte) 57;
                            break;
                        case 98846:
                            b2 = !str3.equals("cv1") ? (byte) -1 : (byte) 58;
                            break;
                        case 98848:
                            b2 = !str3.equals("cv3") ? (byte) -1 : (byte) 59;
                            break;
                        case 99329:
                            b2 = !str3.equals("deb") ? (byte) -1 : (byte) 60;
                            break;
                        case 101481:
                            b2 = !str3.equals("flo") ? (byte) -1 : Base64.padSymbol;
                            break;
                        case 1513190:
                            b2 = !str3.equals("1601") ? (byte) -1 : (byte) 62;
                            break;
                        case 1514184:
                            b2 = !str3.equals("1713") ? (byte) -1 : (byte) 63;
                            break;
                        case 1514185:
                            b2 = !str3.equals("1714") ? (byte) -1 : (byte) 64;
                            break;
                        case 2133089:
                            b2 = !str3.equals("F01H") ? (byte) -1 : (byte) 65;
                            break;
                        case 2133091:
                            b2 = !str3.equals("F01J") ? (byte) -1 : (byte) 66;
                            break;
                        case 2133120:
                            b2 = !str3.equals("F02H") ? (byte) -1 : (byte) 67;
                            break;
                        case 2133151:
                            b2 = !str3.equals("F03H") ? (byte) -1 : (byte) 68;
                            break;
                        case 2133182:
                            b2 = !str3.equals("F04H") ? (byte) -1 : (byte) 69;
                            break;
                        case 2133184:
                            b2 = !str3.equals("F04J") ? (byte) -1 : (byte) 70;
                            break;
                        case 2436959:
                            b2 = !str3.equals("P681") ? (byte) -1 : (byte) 71;
                            break;
                        case 2463773:
                            b2 = !str3.equals("Q350") ? (byte) -1 : (byte) 72;
                            break;
                        case 2464648:
                            b2 = !str3.equals("Q427") ? (byte) -1 : (byte) 73;
                            break;
                        case 2689555:
                            b2 = !str3.equals("XE2X") ? (byte) -1 : (byte) 74;
                            break;
                        case 3154429:
                            b2 = !str3.equals("fugu") ? (byte) -1 : (byte) 75;
                            break;
                        case 3284551:
                            b2 = !str3.equals("kate") ? (byte) -1 : (byte) 76;
                            break;
                        case 3351335:
                            b2 = !str3.equals("mido") ? (byte) -1 : (byte) 77;
                            break;
                        case 3386211:
                            b2 = !str3.equals("p212") ? (byte) -1 : (byte) 78;
                            break;
                        case 41325051:
                            b2 = !str3.equals("MEIZU_M5") ? (byte) -1 : (byte) 79;
                            break;
                        case 51349633:
                            b2 = !str3.equals("601LV") ? (byte) -1 : (byte) 80;
                            break;
                        case 51350594:
                            b2 = !str3.equals("602LV") ? (byte) -1 : (byte) 81;
                            break;
                        case 55178625:
                            b2 = !str3.equals("Aura_Note_2") ? (byte) -1 : (byte) 82;
                            break;
                        case 61542055:
                            b2 = !str3.equals("A1601") ? (byte) -1 : (byte) 83;
                            break;
                        case 65355429:
                            b2 = !str3.equals("E5643") ? (byte) -1 : (byte) 84;
                            break;
                        case 66214468:
                            b2 = !str3.equals("F3111") ? (byte) -1 : (byte) 85;
                            break;
                        case 66214470:
                            b2 = !str3.equals("F3113") ? (byte) -1 : (byte) 86;
                            break;
                        case 66214473:
                            b2 = !str3.equals("F3116") ? (byte) -1 : (byte) 87;
                            break;
                        case 66215429:
                            b2 = !str3.equals("F3211") ? (byte) -1 : (byte) 88;
                            break;
                        case 66215431:
                            b2 = !str3.equals("F3213") ? (byte) -1 : (byte) 89;
                            break;
                        case 66215433:
                            b2 = !str3.equals("F3215") ? (byte) -1 : (byte) 90;
                            break;
                        case 66216390:
                            b2 = !str3.equals("F3311") ? (byte) -1 : (byte) 91;
                            break;
                        case 76402249:
                            b2 = !str3.equals("PRO7S") ? (byte) -1 : (byte) 92;
                            break;
                        case 76404105:
                            b2 = !str3.equals("Q4260") ? (byte) -1 : (byte) 93;
                            break;
                        case 76404911:
                            b2 = !str3.equals("Q4310") ? (byte) -1 : (byte) 94;
                            break;
                        case 80963634:
                            b2 = !str3.equals("V23GB") ? (byte) -1 : (byte) 95;
                            break;
                        case 82882791:
                            b2 = !str3.equals("X3_HK") ? (byte) -1 : (byte) 96;
                            break;
                        case 98715550:
                            b2 = !str3.equals("i9031") ? (byte) -1 : (byte) 97;
                            break;
                        case 101370885:
                            b2 = !str3.equals("l5460") ? (byte) -1 : (byte) 98;
                            break;
                        case 102844228:
                            b2 = !str3.equals("le_x6") ? (byte) -1 : (byte) 99;
                            break;
                        case 165221241:
                            b2 = !str3.equals("A2016a40") ? (byte) -1 : (byte) 100;
                            break;
                        case 182191441:
                            b2 = !str3.equals("CPY83_I00") ? (byte) -1 : (byte) 101;
                            break;
                        case 245388979:
                            b2 = !str3.equals("marino_f") ? (byte) -1 : (byte) 102;
                            break;
                        case 287431619:
                            b2 = !str3.equals("griffin") ? (byte) -1 : (byte) 103;
                            break;
                        case 307593612:
                            b2 = !str3.equals("A7010a48") ? (byte) -1 : (byte) 104;
                            break;
                        case 308517133:
                            b2 = !str3.equals("A7020a48") ? (byte) -1 : (byte) 105;
                            break;
                        case 316215098:
                            b2 = !str3.equals("TB3-730F") ? (byte) -1 : (byte) 106;
                            break;
                        case 316215116:
                            b2 = !str3.equals("TB3-730X") ? (byte) -1 : (byte) 107;
                            break;
                        case 316246811:
                            b2 = !str3.equals("TB3-850F") ? (byte) -1 : (byte) 108;
                            break;
                        case 316246818:
                            b2 = !str3.equals("TB3-850M") ? (byte) -1 : (byte) 109;
                            break;
                        case 407160593:
                            b2 = !str3.equals("Pixi5-10_4G") ? (byte) -1 : (byte) 110;
                            break;
                        case 507412548:
                            b2 = !str3.equals("QM16XE_U") ? (byte) -1 : (byte) 111;
                            break;
                        case 793982701:
                            b2 = !str3.equals("GIONEE_WBL5708") ? (byte) -1 : (byte) 112;
                            break;
                        case 794038622:
                            b2 = !str3.equals("GIONEE_WBL7365") ? (byte) -1 : (byte) 113;
                            break;
                        case 794040393:
                            b2 = !str3.equals("GIONEE_WBL7519") ? (byte) -1 : (byte) 114;
                            break;
                        case 835649806:
                            b2 = !str3.equals("manning") ? (byte) -1 : (byte) 115;
                            break;
                        case 917340916:
                            b2 = !str3.equals("A7000plus") ? (byte) -1 : (byte) 116;
                            break;
                        case 958008161:
                            b2 = !str3.equals("j2xlteins") ? (byte) -1 : (byte) 117;
                            break;
                        case 1060579533:
                            b2 = !str3.equals("panell_d") ? (byte) -1 : (byte) 118;
                            break;
                        case 1150207623:
                            b2 = !str3.equals("LS-5017") ? (byte) -1 : (byte) 119;
                            break;
                        case 1176899427:
                            b2 = !str3.equals("itel_S41") ? (byte) -1 : (byte) 120;
                            break;
                        case 1280332038:
                            b2 = !str3.equals("hwALE-H") ? (byte) -1 : (byte) 121;
                            break;
                        case 1306947716:
                            b2 = !str3.equals("EverStar_S") ? (byte) -1 : (byte) 122;
                            break;
                        case 1349174697:
                            b2 = !str3.equals("htc_e56ml_dtul") ? (byte) -1 : (byte) 123;
                            break;
                        case 1522194893:
                            b2 = !str3.equals("woods_f") ? (byte) -1 : (byte) 124;
                            break;
                        case 1691543273:
                            b2 = !str3.equals("CPH1609") ? (byte) -1 : (byte) 125;
                            break;
                        case 1691544261:
                            b2 = !str3.equals("CPH1715") ? (byte) -1 : (byte) 126;
                            break;
                        case 1709443163:
                            b2 = !str3.equals("iball8735_9806") ? (byte) -1 : ByteCompanionObject.MAX_VALUE;
                            break;
                        case 1865889110:
                            b2 = !str3.equals("santoni") ? (byte) -1 : ByteCompanionObject.MIN_VALUE;
                            break;
                        case 1906253259:
                            b2 = !str3.equals("PB2-670M") ? (byte) -1 : (byte) 129;
                            break;
                        case 1977196784:
                            b2 = !str3.equals("Infinix-X572") ? (byte) -1 : (byte) 130;
                            break;
                        case 2006372676:
                            b2 = !str3.equals("BRAVIA_ATV3_4K") ? (byte) -1 : (byte) 131;
                            break;
                        case 2019281702:
                            b2 = !str3.equals("DM-01K") ? (byte) -1 : (byte) 132;
                            break;
                        case 2029784656:
                            b2 = !str3.equals("HWBLN-H") ? (byte) -1 : (byte) 133;
                            break;
                        case 2030379515:
                            b2 = !str3.equals("HWCAM-H") ? (byte) -1 : (byte) 134;
                            break;
                        case 2033393791:
                            b2 = !str3.equals("ASUS_X00AD_2") ? (byte) -1 : (byte) 135;
                            break;
                        case 2047190025:
                            b2 = !str3.equals("ELUGA_Note") ? (byte) -1 : (byte) 136;
                            break;
                        case 2047252157:
                            b2 = !str3.equals("ELUGA_Prim") ? (byte) -1 : (byte) 137;
                            break;
                        case 2048319463:
                            b2 = !str3.equals("HWVNS-H") ? (byte) -1 : (byte) 138;
                            break;
                        case 2048855701:
                            b2 = !str3.equals("HWWAS-H") ? (byte) -1 : (byte) 139;
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    switch (b2) {
                        default:
                            str.getClass();
                            if (!str.equals("JSN-L21")) {
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                        case 60:
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                        case 80:
                        case 81:
                        case 82:
                        case 83:
                        case 84:
                        case 85:
                        case 86:
                        case 87:
                        case 88:
                        case 89:
                        case 90:
                        case 91:
                        case 92:
                        case 93:
                        case 94:
                        case 95:
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                        case 100:
                        case 101:
                        case 102:
                        case 103:
                        case 104:
                        case 105:
                        case 106:
                        case 107:
                        case 108:
                        case 109:
                        case 110:
                        case 111:
                        case 112:
                        case 113:
                        case 114:
                        case 115:
                        case 116:
                        case 117:
                        case 118:
                        case 119:
                        case 120:
                        case 121:
                        case 122:
                        case 123:
                        case 124:
                        case 125:
                        case 126:
                        case 127:
                        case 128:
                        case 129:
                        case 130:
                        case 131:
                        case 132:
                        case 133:
                        case 134:
                        case 135:
                        case 136:
                        case 137:
                        case 138:
                        case 139:
                            return true;
                    }
                }
                break;
        }
        return true;
    }

    public final class OnFrameRenderedListenerV23 implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        private final Handler handler;

        public OnFrameRenderedListenerV23(MediaCodecAdapter mediaCodecAdapter) {
            Handler handlerCreateHandlerForCurrentLooper = Util.createHandlerForCurrentLooper(this);
            this.handler = handlerCreateHandlerForCurrentLooper;
            mediaCodecAdapter.setOnFrameRenderedListener(this, handlerCreateHandlerForCurrentLooper);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(MediaCodecAdapter mediaCodecAdapter, long j, long j2) {
            if (Build.VERSION.SDK_INT < 30) {
                this.handler.sendMessageAtFrontOfQueue(Message.obtain(this.handler, 0, (int) (j >> 32), (int) j));
            } else {
                handleFrameRendered(j);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            handleFrameRendered(Util.toLong(message.arg1, message.arg2));
            return true;
        }

        private void handleFrameRendered(long j) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.tunnelingOnFrameRenderedListener || mediaCodecVideoRenderer.getCodec() == null) {
                return;
            }
            MediaCodecVideoRenderer mediaCodecVideoRenderer2 = MediaCodecVideoRenderer.this;
            if (j == LongCompanionObject.MAX_VALUE) {
                mediaCodecVideoRenderer2.onProcessedTunneledEndOfStream();
                return;
            }
            try {
                mediaCodecVideoRenderer2.onProcessedTunneledBuffer(j);
            } catch (ExoPlaybackException e) {
                MediaCodecVideoRenderer.this.setPendingPlaybackException(e);
            }
        }
    }
}
