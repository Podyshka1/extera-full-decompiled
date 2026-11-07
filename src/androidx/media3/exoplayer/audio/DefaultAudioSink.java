package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessingPipeline;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.AudioProcessorChain;
import androidx.media3.common.audio.SonicAudioProcessor;
import androidx.media3.common.audio.ToInt16PcmAudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;
import androidx.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.gson.JsonArray$$ExternalSyntheticBUOutline0;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.time.DurationKt;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultAudioSink implements AudioSink {
    public static boolean failOnSpuriousAudioTimestamp = false;
    private static int pendingReleaseCount;
    private static ScheduledExecutorService releaseExecutor;
    private static final Object releaseExecutorLock = new Object();
    private long accumulatedSkippedSilenceDurationUs;
    private MediaPositionParameters afterDrainParameters;
    private AudioAttributes audioAttributes;
    private AudioCapabilities audioCapabilities;
    private AudioCapabilitiesReceiver audioCapabilitiesReceiver;
    private final ExoPlayer.AudioOffloadListener audioOffloadListener;
    private final AudioOffloadSupportProvider audioOffloadSupportProvider;
    private AudioProcessingPipeline audioProcessingPipeline;
    private final AudioProcessorChain audioProcessorChain;
    private int audioSessionId;
    private AudioTrack audioTrack;
    private final AudioTrackBufferSizeProvider audioTrackBufferSizeProvider;
    private final AudioTrackPositionTracker audioTrackPositionTracker;
    private final AudioTrackProvider audioTrackProvider;
    private AuxEffectInfo auxEffectInfo;
    private ByteBuffer avSyncHeader;
    private final ImmutableList<AudioProcessor> availableAudioProcessors;
    private int bytesUntilNextAvSync;
    private final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    private Configuration configuration;
    private final Context context;
    private final int contextDeviceId;
    private Context contextWithDeviceId;
    private final boolean enableFloatOutput;
    private boolean enableOnAudioPositionAdvancingFix;
    private boolean externalAudioSessionIdProvided;
    private int framesPerEncodedSample;
    private boolean handledEndOfStream;
    private boolean handledOffloadOnPresentationEnded;
    private final PendingExceptionHolder<AudioSink.InitializationException> initializationExceptionPendingExceptionHolder;
    private ByteBuffer inputBuffer;
    private int inputBufferAccessUnitCount;
    private boolean isWaitingForOffloadEndOfStreamHandled;
    private long lastFeedElapsedRealtimeMs;
    private long lastTunnelingAvSyncPresentationTimeUs;
    private AudioSink.Listener listener;
    private MediaPositionParameters mediaPositionParameters;
    private final ArrayDeque<MediaPositionParameters> mediaPositionParametersCheckpoints;
    private boolean offloadDisabledUntilNextConfiguration;
    private int offloadMode;
    private StreamEventCallbackV29 offloadStreamEventCallbackV29;
    private OnRoutingChangedListenerApi24 onRoutingChangedListener;
    private ByteBuffer outputBuffer;
    private boolean pendingAudioSessionIdChangeConfirmation;
    private Configuration pendingConfiguration;
    private Looper playbackLooper;
    private PlaybackParameters playbackParameters;
    private PlayerId playerId;
    private boolean playing;
    private final boolean preferAudioTrackPlaybackParams;
    private AudioDeviceInfoApi23 preferredDevice;
    private Handler reportSkippedSilenceHandler;
    private boolean skipSilenceEnabled;
    private long skippedOutputFrameCountAtLastPosition;
    private long startMediaTimeUs;
    private boolean startMediaTimeUsNeedsInit;
    private boolean startMediaTimeUsNeedsSync;
    private boolean stoppedAudioTrack;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private final ToFloatPcmAudioProcessor toFloatPcmAudioProcessor;
    private final ToInt16PcmAudioProcessor toInt16PcmAudioProcessor;
    private final TrimmingAudioProcessor trimmingAudioProcessor;
    private boolean tunneling;
    private float volume;
    private final PendingExceptionHolder<AudioSink.WriteException> writeExceptionPendingExceptionHolder;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    public interface AudioOffloadSupportProvider {
        AudioOffloadSupport getAudioOffloadSupport(Format format, AudioAttributes audioAttributes);
    }

    public interface AudioTrackBufferSizeProvider {
        public static final AudioTrackBufferSizeProvider DEFAULT = new DefaultAudioTrackBufferSizeProvider.Builder().build();

        int getBufferSizeInBytes(int i, int i2, int i3, int i4, int i5, int i6, double d);
    }

    private static boolean isAudioTrackDeadObject(int i) {
        return i == -6 || i == -32;
    }

    public interface AudioTrackProvider {
        public static final AudioTrackProvider DEFAULT = new DefaultAudioTrackProvider();

        AudioTrack getAudioTrack(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i, Context context);

        default int getAudioTrackChannelConfig(int i) {
            return Util.getAudioTrackChannelConfig(i);
        }
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    public static class DefaultAudioProcessorChain implements AudioProcessorChain {
        private final AudioProcessor[] audioProcessors;
        private final SilenceSkippingAudioProcessor silenceSkippingAudioProcessor;
        private final SonicAudioProcessor sonicAudioProcessor;

        public DefaultAudioProcessorChain(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new SilenceSkippingAudioProcessor(), new SonicAudioProcessor());
        }

        public DefaultAudioProcessorChain(AudioProcessor[] audioProcessorArr, SilenceSkippingAudioProcessor silenceSkippingAudioProcessor, SonicAudioProcessor sonicAudioProcessor) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.audioProcessors = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.silenceSkippingAudioProcessor = silenceSkippingAudioProcessor;
            this.sonicAudioProcessor = sonicAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length] = silenceSkippingAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length + 1] = sonicAudioProcessor;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public AudioProcessor[] getAudioProcessors() {
            return this.audioProcessors;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters) {
            this.sonicAudioProcessor.setSpeed(playbackParameters.speed);
            this.sonicAudioProcessor.setPitch(playbackParameters.pitch);
            return playbackParameters;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public boolean applySkipSilenceEnabled(boolean z) {
            this.silenceSkippingAudioProcessor.setEnabled(z);
            return z;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public long getMediaDuration(long j) {
            return this.sonicAudioProcessor.isActive() ? this.sonicAudioProcessor.getMediaDuration(j) : j;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.getSkippedFrames();
        }
    }

    public static final class Builder {
        private ExoPlayer.AudioOffloadListener audioOffloadListener;
        private AudioOffloadSupportProvider audioOffloadSupportProvider;
        private AudioProcessorChain audioProcessorChain;
        private boolean buildCalled;
        private final Context context;
        private boolean enableAudioTrackPlaybackParams;
        private boolean enableFloatOutput;
        private boolean enableOnAudioPositionAdvancingFix = true;
        private AudioCapabilities audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
        private AudioTrackBufferSizeProvider audioTrackBufferSizeProvider = AudioTrackBufferSizeProvider.DEFAULT;
        private AudioTrackProvider audioTrackProvider = AudioTrackProvider.DEFAULT;

        public Builder(Context context) {
            this.context = context;
        }

        public Builder setAudioProcessors(AudioProcessor[] audioProcessorArr) {
            Assertions.checkNotNull(audioProcessorArr);
            return setAudioProcessorChain(new DefaultAudioProcessorChain(audioProcessorArr));
        }

        public Builder setAudioProcessorChain(AudioProcessorChain audioProcessorChain) {
            Assertions.checkNotNull(audioProcessorChain);
            this.audioProcessorChain = audioProcessorChain;
            return this;
        }

        public Builder setEnableFloatOutput(boolean z) {
            this.enableFloatOutput = z;
            return this;
        }

        public Builder setEnableAudioTrackPlaybackParams(boolean z) {
            this.enableAudioTrackPlaybackParams = z;
            return this;
        }

        public DefaultAudioSink build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.audioProcessorChain == null) {
                this.audioProcessorChain = new DefaultAudioProcessorChain(new AudioProcessor[0]);
            }
            if (this.audioOffloadSupportProvider == null) {
                this.audioOffloadSupportProvider = new DefaultAudioOffloadSupportProvider(this.context);
            }
            return new DefaultAudioSink(this);
        }
    }

    @RequiresNonNull({"#1.audioProcessorChain"})
    private DefaultAudioSink(Builder builder) {
        Context applicationContext = builder.context == null ? null : builder.context.getApplicationContext();
        this.context = applicationContext;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioCapabilities = applicationContext != null ? null : builder.audioCapabilities;
        this.audioProcessorChain = builder.audioProcessorChain;
        this.enableFloatOutput = builder.enableFloatOutput;
        this.preferAudioTrackPlaybackParams = builder.enableAudioTrackPlaybackParams;
        this.offloadMode = 0;
        this.audioTrackBufferSizeProvider = builder.audioTrackBufferSizeProvider;
        this.audioOffloadSupportProvider = (AudioOffloadSupportProvider) Assertions.checkNotNull(builder.audioOffloadSupportProvider);
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener());
        ChannelMappingAudioProcessor channelMappingAudioProcessor = new ChannelMappingAudioProcessor();
        this.channelMappingAudioProcessor = channelMappingAudioProcessor;
        TrimmingAudioProcessor trimmingAudioProcessor = new TrimmingAudioProcessor();
        this.trimmingAudioProcessor = trimmingAudioProcessor;
        this.toInt16PcmAudioProcessor = new ToInt16PcmAudioProcessor();
        this.toFloatPcmAudioProcessor = new ToFloatPcmAudioProcessor();
        this.availableAudioProcessors = ImmutableList.of((ChannelMappingAudioProcessor) trimmingAudioProcessor, channelMappingAudioProcessor);
        this.volume = 1.0f;
        this.audioSessionId = 0;
        this.auxEffectInfo = new AuxEffectInfo(0, 0.0f);
        PlaybackParameters playbackParameters = PlaybackParameters.DEFAULT;
        this.mediaPositionParameters = new MediaPositionParameters(playbackParameters, 0L, 0L);
        this.playbackParameters = playbackParameters;
        this.skipSilenceEnabled = false;
        this.mediaPositionParametersCheckpoints = new ArrayDeque<>();
        this.initializationExceptionPendingExceptionHolder = new PendingExceptionHolder<>();
        this.writeExceptionPendingExceptionHolder = new PendingExceptionHolder<>();
        this.audioOffloadListener = builder.audioOffloadListener;
        this.audioTrackProvider = builder.audioTrackProvider;
        this.contextDeviceId = (Build.VERSION.SDK_INT < 34 || builder.context == null) ? -1 : getDeviceIdFromContext(builder.context);
        this.enableOnAudioPositionAdvancingFix = builder.enableOnAudioPositionAdvancingFix;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setListener(AudioSink.Listener listener) {
        this.listener = listener;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPlayerId(PlayerId playerId) {
        this.playerId = playerId;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setClock(Clock clock) {
        this.audioTrackPositionTracker.setClock(clock);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean supportsFormat(Format format) {
        return getFormatSupport(format) != 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public int getFormatSupport(Format format) {
        maybeStartAudioCapabilitiesReceiver();
        if (!"audio/raw".equals(format.sampleMimeType)) {
            return this.audioCapabilities.isPassthroughPlaybackSupported(format, this.audioAttributes) ? 2 : 0;
        }
        boolean zIsEncodingLinearPcm = Util.isEncodingLinearPcm(format.pcmEncoding);
        int i = format.pcmEncoding;
        if (zIsEncodingLinearPcm) {
            return (i == 2 || (this.enableFloatOutput && i == 4)) ? 2 : 1;
        }
        Log.m163w("DefaultAudioSink", "Invalid PCM encoding: " + i);
        return 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public AudioOffloadSupport getFormatOffloadSupport(Format format) {
        if (this.offloadDisabledUntilNextConfiguration) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        return this.audioOffloadSupportProvider.getAudioOffloadSupport(format, this.audioAttributes);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getCurrentPositionUs(boolean z) {
        if (!isAudioTrackInitialized() || this.startMediaTimeUsNeedsInit) {
            return Long.MIN_VALUE;
        }
        return applySkipping(applyMediaPositionParameters(Math.min(this.audioTrackPositionTracker.getCurrentPositionUs(), this.configuration.framesToDurationUs(getWrittenFrames()))));
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void configure(Format format, int i, int[] iArr) throws AudioSink.ConfigurationException {
        int i2;
        AudioOffloadSupport formatOffloadSupport;
        boolean z;
        int i3;
        int pcmFrameSize;
        boolean z2;
        int i4;
        int i5;
        AudioProcessingPipeline audioProcessingPipeline;
        int i6;
        int i7;
        int bufferSizeInBytes;
        maybeStartAudioCapabilitiesReceiver();
        if ("audio/raw".equals(format.sampleMimeType)) {
            Assertions.checkArgument(Util.isEncodingLinearPcm(format.pcmEncoding));
            pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
            ImmutableList.Builder builder = new ImmutableList.Builder();
            builder.addAll((Iterable) this.availableAudioProcessors);
            if (shouldUseFloatOutput(format.pcmEncoding)) {
                builder.add(this.toFloatPcmAudioProcessor);
            } else {
                builder.add(this.toInt16PcmAudioProcessor);
                builder.add((Object[]) this.audioProcessorChain.getAudioProcessors());
            }
            AudioProcessingPipeline audioProcessingPipeline2 = new AudioProcessingPipeline(builder.build());
            if (audioProcessingPipeline2.equals(this.audioProcessingPipeline)) {
                audioProcessingPipeline2 = this.audioProcessingPipeline;
            }
            this.trimmingAudioProcessor.setTrimFrameCount(format.encoderDelay, format.encoderPadding);
            this.channelMappingAudioProcessor.setChannelMap(iArr);
            try {
                AudioProcessor.AudioFormat audioFormatConfigure = audioProcessingPipeline2.configure(new AudioProcessor.AudioFormat(format));
                int i8 = audioFormatConfigure.encoding;
                i2 = audioFormatConfigure.sampleRate;
                int audioTrackChannelConfig = this.audioTrackProvider.getAudioTrackChannelConfig(audioFormatConfigure.channelCount);
                int pcmFrameSize2 = Util.getPcmFrameSize(i8, audioFormatConfigure.channelCount);
                z = this.preferAudioTrackPlaybackParams;
                i3 = 0;
                i4 = i8;
                i5 = audioTrackChannelConfig;
                audioProcessingPipeline = audioProcessingPipeline2;
                i6 = pcmFrameSize2;
                z2 = false;
            } catch (AudioProcessor.UnhandledAudioFormatException e) {
                throw new AudioSink.ConfigurationException(e, format);
            }
        } else {
            AudioProcessingPipeline audioProcessingPipeline3 = new AudioProcessingPipeline(ImmutableList.of());
            i2 = format.sampleRate;
            if (this.offloadMode != 0) {
                formatOffloadSupport = getFormatOffloadSupport(format);
            } else {
                formatOffloadSupport = AudioOffloadSupport.DEFAULT_UNSUPPORTED;
            }
            if (this.offloadMode != 0 && formatOffloadSupport.isFormatSupported) {
                int encoding = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs);
                int audioTrackChannelConfig2 = this.audioTrackProvider.getAudioTrackChannelConfig(format.channelCount);
                z2 = formatOffloadSupport.isGaplessSupported;
                pcmFrameSize = -1;
                i4 = encoding;
                i5 = audioTrackChannelConfig2;
                z = true;
                i3 = 1;
            } else {
                Pair<Integer, Integer> encodingAndChannelConfigForPassthrough = this.audioCapabilities.getEncodingAndChannelConfigForPassthrough(format, this.audioAttributes);
                if (encodingAndChannelConfigForPassthrough == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + format, format);
                }
                int iIntValue = ((Integer) encodingAndChannelConfigForPassthrough.first).intValue();
                int iIntValue2 = ((Integer) encodingAndChannelConfigForPassthrough.second).intValue();
                z = this.preferAudioTrackPlaybackParams;
                i3 = 2;
                pcmFrameSize = -1;
                z2 = false;
                i4 = iIntValue;
                i5 = iIntValue2;
            }
            audioProcessingPipeline = audioProcessingPipeline3;
            i6 = pcmFrameSize;
        }
        if (i4 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i3 + ") for: " + format, format);
        }
        if (i5 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i3 + ") for: " + format, format);
        }
        int i9 = format.bitrate;
        if ("audio/vnd.dts.hd;profile=lbr".equals(format.sampleMimeType) && i9 == -1) {
            i9 = 768000;
        }
        int i10 = i9;
        if (i != 0) {
            i7 = i2;
            bufferSizeInBytes = i;
        } else {
            i7 = i2;
            bufferSizeInBytes = this.audioTrackBufferSizeProvider.getBufferSizeInBytes(getAudioTrackMinBufferSize(i2, i5, i4), i4, i3, i6 != -1 ? i6 : 1, i7, i10, z ? 8.0d : 1.0d);
        }
        this.offloadDisabledUntilNextConfiguration = false;
        Configuration configuration = new Configuration(format, pcmFrameSize, i3, i6, i7, i5, i4, bufferSizeInBytes, audioProcessingPipeline, z, z2, this.tunneling);
        if (isAudioTrackInitialized()) {
            this.pendingConfiguration = configuration;
        } else {
            this.configuration = configuration;
        }
    }

    private void setupAudioProcessors() {
        AudioProcessingPipeline audioProcessingPipeline = this.configuration.audioProcessingPipeline;
        this.audioProcessingPipeline = audioProcessingPipeline;
        audioProcessingPipeline.flush();
    }

    private boolean initializeAudioTrack() throws AudioSink.InitializationException {
        PlayerId playerId;
        if (this.initializationExceptionPendingExceptionHolder.shouldWaitBeforeRetry()) {
            return false;
        }
        AudioTrack audioTrackBuildAudioTrackWithRetry = buildAudioTrackWithRetry();
        this.audioTrack = audioTrackBuildAudioTrackWithRetry;
        if (isOffloadedPlayback(audioTrackBuildAudioTrackWithRetry)) {
            registerStreamEventCallbackV29(this.audioTrack);
            Configuration configuration = this.configuration;
            if (configuration.enableOffloadGapless) {
                AudioTrack audioTrack = this.audioTrack;
                Format format = configuration.inputFormat;
                audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
            }
        }
        if (Build.VERSION.SDK_INT >= 31 && (playerId = this.playerId) != null) {
            Api31.setLogSessionIdOnAudioTrack(this.audioTrack, playerId);
        }
        AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
        AudioTrack audioTrack2 = this.audioTrack;
        Configuration configuration2 = this.configuration;
        audioTrackPositionTracker.setAudioTrack(audioTrack2, configuration2.outputMode == 2, configuration2.outputEncoding, configuration2.outputPcmFrameSize, configuration2.bufferSize, this.enableOnAudioPositionAdvancingFix);
        setVolumeInternal();
        int i = this.auxEffectInfo.effectId;
        if (i != 0) {
            this.audioTrack.attachAuxEffect(i);
            this.audioTrack.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
        AudioDeviceInfoApi23 audioDeviceInfoApi23 = this.preferredDevice;
        if (audioDeviceInfoApi23 != null) {
            Api23.setPreferredDeviceOnAudioTrack(this.audioTrack, audioDeviceInfoApi23);
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.audioCapabilitiesReceiver;
            if (audioCapabilitiesReceiver != null) {
                audioCapabilitiesReceiver.setRoutedDevice(this.preferredDevice.audioDeviceInfo);
            }
        }
        AudioCapabilitiesReceiver audioCapabilitiesReceiver2 = this.audioCapabilitiesReceiver;
        if (audioCapabilitiesReceiver2 != null) {
            this.onRoutingChangedListener = new OnRoutingChangedListenerApi24(this.audioTrack, audioCapabilitiesReceiver2);
        }
        this.startMediaTimeUsNeedsInit = true;
        int audioSessionId = this.audioTrack.getAudioSessionId();
        boolean z = audioSessionId != this.audioSessionId;
        this.audioSessionId = audioSessionId;
        AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.onAudioTrackInitialized(this.configuration.buildAudioTrackConfig());
            if (z) {
                this.pendingAudioSessionIdChangeConfirmation = true;
                this.listener.onAudioSessionIdChanged(this.audioSessionId);
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void play() {
        this.playing = true;
        if (isAudioTrackInitialized()) {
            this.audioTrackPositionTracker.start();
            if (!this.stoppedAudioTrack || isOffloadedPlayback(this.audioTrack)) {
                this.audioTrack.play();
            }
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void handleDiscontinuity() {
        this.startMediaTimeUsNeedsSync = true;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: T */
    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean handleBuffer(ByteBuffer byteBuffer, long j, int i) throws T, AudioSink.WriteException, AudioSink.InitializationException {
        ByteBuffer byteBuffer2 = this.inputBuffer;
        Assertions.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.pendingConfiguration != null) {
            if (!drainToEndOfStream()) {
                return false;
            }
            if (!this.pendingConfiguration.canReuseAudioTrack(this.configuration)) {
                playPendingData();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            } else {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
                AudioTrack audioTrack = this.audioTrack;
                if (audioTrack != null && isOffloadedPlayback(audioTrack) && this.configuration.enableOffloadGapless) {
                    if (this.audioTrack.getPlayState() == 3) {
                        this.audioTrack.setOffloadEndOfStream();
                        this.audioTrackPositionTracker.expectRawPlaybackHeadReset();
                    }
                    AudioTrack audioTrack2 = this.audioTrack;
                    Format format = this.configuration.inputFormat;
                    audioTrack2.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
                    this.isWaitingForOffloadEndOfStreamHandled = true;
                }
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
        }
        if (!isAudioTrackInitialized()) {
            try {
                if (!initializeAudioTrack()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e) {
                if (e.isRecoverable) {
                    throw e;
                }
                this.initializationExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(e);
                return false;
            }
        }
        this.initializationExceptionPendingExceptionHolder.clear();
        if (this.startMediaTimeUsNeedsInit) {
            this.startMediaTimeUs = Math.max(0L, j);
            this.startMediaTimeUsNeedsSync = false;
            this.startMediaTimeUsNeedsInit = false;
            if (useAudioTrackPlaybackParams()) {
                setAudioTrackPlaybackParametersV23();
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
            if (this.playing) {
                play();
            }
        }
        if (!this.audioTrackPositionTracker.mayHandleBuffer(getWrittenFrames())) {
            return false;
        }
        if (this.inputBuffer == null) {
            Assertions.checkArgument(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            Configuration configuration = this.configuration;
            if (configuration.outputMode != 0 && this.framesPerEncodedSample == 0) {
                int framesPerEncodedSample = getFramesPerEncodedSample(configuration.outputEncoding, byteBuffer);
                this.framesPerEncodedSample = framesPerEncodedSample;
                if (framesPerEncodedSample == 0) {
                    return true;
                }
            }
            if (this.afterDrainParameters != null) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                applyAudioProcessorPlaybackParametersAndSkipSilence(j);
                this.afterDrainParameters = null;
            }
            long jInputFramesToDurationUs = this.startMediaTimeUs + this.configuration.inputFramesToDurationUs(getSubmittedFrames() - this.trimmingAudioProcessor.getTrimmedFrameCount());
            if (!this.startMediaTimeUsNeedsSync && Math.abs(jInputFramesToDurationUs - j) > 200000) {
                AudioSink.Listener listener = this.listener;
                if (listener != null) {
                    listener.onAudioSinkError(new AudioSink.UnexpectedDiscontinuityException(j, jInputFramesToDurationUs));
                }
                this.startMediaTimeUsNeedsSync = true;
            }
            if (this.startMediaTimeUsNeedsSync) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                long j2 = j - jInputFramesToDurationUs;
                this.startMediaTimeUs += j2;
                this.startMediaTimeUsNeedsSync = false;
                applyAudioProcessorPlaybackParametersAndSkipSilence(j);
                AudioSink.Listener listener2 = this.listener;
                if (listener2 != null && j2 != 0) {
                    listener2.onPositionDiscontinuity();
                }
            }
            if (this.configuration.outputMode == 0) {
                this.submittedPcmBytes += (long) byteBuffer.remaining();
            } else {
                this.submittedEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) i);
            }
            this.inputBuffer = byteBuffer;
            this.inputBufferAccessUnitCount = i;
        }
        processBuffers(j);
        if (!this.inputBuffer.hasRemaining()) {
            this.inputBuffer = null;
            this.inputBufferAccessUnitCount = 0;
            return true;
        }
        if (!this.audioTrackPositionTracker.isStalled(getWrittenFrames())) {
            return false;
        }
        Log.m163w("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    private AudioTrack buildAudioTrackWithRetry() throws AudioSink.InitializationException {
        try {
            return buildAudioTrack((Configuration) Assertions.checkNotNull(this.configuration));
        } catch (AudioSink.InitializationException e) {
            Configuration configuration = this.configuration;
            if (configuration.bufferSize > 1000000) {
                Configuration configurationCopyWithBufferSize = configuration.copyWithBufferSize(DurationKt.NANOS_IN_MILLIS);
                try {
                    AudioTrack audioTrackBuildAudioTrack = this.buildAudioTrack(configurationCopyWithBufferSize);
                    this.configuration = configurationCopyWithBufferSize;
                    return audioTrackBuildAudioTrack;
                } catch (AudioSink.InitializationException e2) {
                    e.addSuppressed(e2);
                    this.maybeDisableOffload();
                    throw e;
                }
            }
            this.maybeDisableOffload();
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private AudioTrack buildAudioTrack(Configuration configuration) throws AudioSink.InitializationException {
        DefaultAudioSink defaultAudioSink;
        AudioSink.InitializationException initializationException;
        AudioSink.Listener listener;
        Context context;
        int i;
        try {
            int i2 = this.audioSessionId;
            int i3 = this.contextDeviceId;
            if (i3 != -1) {
                try {
                    Context context2 = this.context;
                    if (context2 == null || Build.VERSION.SDK_INT < 34) {
                        i = i2;
                        context = null;
                    } else {
                        if (this.contextWithDeviceId == null) {
                            this.contextWithDeviceId = context2.createDeviceContext(i3);
                        }
                        context = this.contextWithDeviceId;
                        i = 0;
                    }
                    defaultAudioSink = this;
                    try {
                        AudioTrack audioTrackBuildAudioTrack = defaultAudioSink.buildAudioTrack(configuration.buildAudioTrackConfig(), this.audioAttributes, i, configuration.inputFormat, context);
                        ExoPlayer.AudioOffloadListener audioOffloadListener = defaultAudioSink.audioOffloadListener;
                        if (audioOffloadListener == null) {
                            return audioTrackBuildAudioTrack;
                        }
                        audioOffloadListener.onOffloadedPlayback(isOffloadedPlayback(audioTrackBuildAudioTrack));
                        return audioTrackBuildAudioTrack;
                    } catch (AudioSink.InitializationException e) {
                        e = e;
                        initializationException = e;
                        listener = defaultAudioSink.listener;
                        if (listener == null) {
                        }
                    }
                } catch (AudioSink.InitializationException e2) {
                    initializationException = e2;
                    defaultAudioSink = this;
                }
            }
        } catch (AudioSink.InitializationException e3) {
            e = e3;
            defaultAudioSink = this;
        }
        listener = defaultAudioSink.listener;
        if (listener == null) {
            listener.onAudioSinkError(initializationException);
            throw initializationException;
        }
        throw initializationException;
    }

    private AudioTrack buildAudioTrack(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i, Format format, Context context) throws AudioSink.InitializationException {
        try {
            AudioTrack audioTrack = this.audioTrackProvider.getAudioTrack(audioTrackConfig, audioAttributes, i, context);
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception unused) {
            }
            throw new AudioSink.InitializationException(state, audioTrackConfig.sampleRate, audioTrackConfig.channelConfig, audioTrackConfig.encoding, audioTrackConfig.bufferSize, format, audioTrackConfig.offload, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e) {
            throw new AudioSink.InitializationException(0, audioTrackConfig.sampleRate, audioTrackConfig.channelConfig, audioTrackConfig.encoding, audioTrackConfig.bufferSize, format, audioTrackConfig.offload, e);
        }
    }

    private void registerStreamEventCallbackV29(AudioTrack audioTrack) {
        if (this.offloadStreamEventCallbackV29 == null) {
            this.offloadStreamEventCallbackV29 = new StreamEventCallbackV29();
        }
        this.offloadStreamEventCallbackV29.register(audioTrack);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: T */
    private void processBuffers(long j) throws T, AudioSink.WriteException {
        drainOutputBuffer(j);
        if (this.outputBuffer != null) {
            return;
        }
        if (!this.audioProcessingPipeline.isOperational()) {
            ByteBuffer byteBuffer = this.inputBuffer;
            if (byteBuffer != null) {
                setOutputBuffer(byteBuffer);
                drainOutputBuffer(j);
                return;
            }
            return;
        }
        while (!this.audioProcessingPipeline.isEnded()) {
            do {
                ByteBuffer output = this.audioProcessingPipeline.getOutput();
                if (output.hasRemaining()) {
                    setOutputBuffer(output);
                    drainOutputBuffer(j);
                } else {
                    ByteBuffer byteBuffer2 = this.inputBuffer;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.audioProcessingPipeline.queueInput(this.inputBuffer);
                    }
                }
            } while (this.outputBuffer == null);
            return;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: T */
    private boolean drainToEndOfStream() throws T, AudioSink.WriteException {
        ByteBuffer byteBuffer;
        if (!this.audioProcessingPipeline.isOperational()) {
            drainOutputBuffer(Long.MIN_VALUE);
            return this.outputBuffer == null;
        }
        this.audioProcessingPipeline.queueEndOfStream();
        processBuffers(Long.MIN_VALUE);
        return this.audioProcessingPipeline.isEnded() && ((byteBuffer = this.outputBuffer) == null || !byteBuffer.hasRemaining());
    }

    private void setOutputBuffer(ByteBuffer byteBuffer) {
        Assertions.checkState(this.outputBuffer == null);
        if (byteBuffer.hasRemaining()) {
            this.outputBuffer = maybeRampUpVolume(byteBuffer);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: T */
    private void drainOutputBuffer(long j) throws T, AudioSink.WriteException {
        DefaultAudioSink defaultAudioSink;
        int iWriteNonBlocking;
        AudioSink.Listener listener;
        if (this.outputBuffer == null || this.writeExceptionPendingExceptionHolder.shouldWaitBeforeRetry()) {
            return;
        }
        int iRemaining = this.outputBuffer.remaining();
        if (this.tunneling) {
            Assertions.checkState(j != -9223372036854775807L);
            if (j == Long.MIN_VALUE) {
                j = this.lastTunnelingAvSyncPresentationTimeUs;
            } else {
                this.lastTunnelingAvSyncPresentationTimeUs = j;
            }
            defaultAudioSink = this;
            iWriteNonBlocking = defaultAudioSink.writeNonBlockingWithAvSync(this.audioTrack, this.outputBuffer, iRemaining, j);
        } else {
            defaultAudioSink = this;
            iWriteNonBlocking = writeNonBlocking(defaultAudioSink.audioTrack, defaultAudioSink.outputBuffer, iRemaining);
        }
        defaultAudioSink.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
        if (iWriteNonBlocking < 0) {
            if (isAudioTrackDeadObject(iWriteNonBlocking)) {
                if (defaultAudioSink.getWrittenFrames() > 0) {
                    z = true;
                } else if (isOffloadedPlayback(defaultAudioSink.audioTrack)) {
                    defaultAudioSink.maybeDisableOffload();
                    z = true;
                }
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(iWriteNonBlocking, defaultAudioSink.configuration.inputFormat, z);
            AudioSink.Listener listener2 = defaultAudioSink.listener;
            if (listener2 != null) {
                listener2.onAudioSinkError(writeException);
            }
            if (writeException.isRecoverable && defaultAudioSink.context != null) {
                AudioCapabilities audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
                defaultAudioSink.audioCapabilities = audioCapabilities;
                defaultAudioSink.audioCapabilitiesReceiver.overrideCapabilities(audioCapabilities);
                throw writeException;
            }
            defaultAudioSink.writeExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(writeException);
            return;
        }
        defaultAudioSink.writeExceptionPendingExceptionHolder.clear();
        if (isOffloadedPlayback(defaultAudioSink.audioTrack)) {
            if (defaultAudioSink.writtenEncodedFrames > 0) {
                defaultAudioSink.isWaitingForOffloadEndOfStreamHandled = false;
            }
            if (defaultAudioSink.playing && (listener = defaultAudioSink.listener) != null && iWriteNonBlocking < iRemaining && !defaultAudioSink.isWaitingForOffloadEndOfStreamHandled) {
                listener.onOffloadBufferFull();
            }
        }
        int i = defaultAudioSink.configuration.outputMode;
        if (i == 0) {
            defaultAudioSink.writtenPcmBytes += (long) iWriteNonBlocking;
        }
        if (iWriteNonBlocking == iRemaining) {
            if (i != 0) {
                Assertions.checkState(defaultAudioSink.outputBuffer == defaultAudioSink.inputBuffer);
                defaultAudioSink.writtenEncodedFrames += ((long) defaultAudioSink.framesPerEncodedSample) * ((long) defaultAudioSink.inputBufferAccessUnitCount);
            }
            defaultAudioSink.outputBuffer = null;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void playToEndOfStream() {
        if (!this.handledEndOfStream && isAudioTrackInitialized() && drainToEndOfStream()) {
            playPendingData();
            this.handledEndOfStream = true;
        }
    }

    private void maybeDisableOffload() {
        if (this.configuration.outputModeIsOffload()) {
            this.offloadDisabledUntilNextConfiguration = true;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean isEnded() {
        if (isAudioTrackInitialized()) {
            return this.handledEndOfStream && !hasPendingData();
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean hasPendingData() {
        if (isAudioTrackInitialized()) {
            return !(Build.VERSION.SDK_INT >= 29 && this.audioTrack.isOffloadedPlayback() && this.handledOffloadOnPresentationEnded) && this.audioTrackPositionTracker.hasPendingData(getWrittenFrames());
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.playbackParameters = new PlaybackParameters(Util.constrainValue(playbackParameters.speed, 0.1f, 8.0f), Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f));
        if (useAudioTrackPlaybackParams()) {
            setAudioTrackPlaybackParametersV23();
        } else {
            setAudioProcessorPlaybackParameters(playbackParameters);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setSkipSilenceEnabled(boolean z) {
        this.skipSilenceEnabled = z;
        setAudioProcessorPlaybackParameters(useAudioTrackPlaybackParams() ? PlaybackParameters.DEFAULT : this.playbackParameters);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (this.audioAttributes.equals(audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        if (this.tunneling) {
            return;
        }
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.audioCapabilitiesReceiver;
        if (audioCapabilitiesReceiver != null) {
            audioCapabilitiesReceiver.setAudioAttributes(audioAttributes);
        }
        flush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioSessionId(int i) {
        if (this.pendingAudioSessionIdChangeConfirmation) {
            if (this.audioSessionId != i) {
                return;
            } else {
                this.pendingAudioSessionIdChangeConfirmation = false;
            }
        }
        if (this.audioSessionId != i) {
            this.audioSessionId = i;
            this.externalAudioSessionIdProvided = i != 0;
            flush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        if (this.auxEffectInfo.equals(auxEffectInfo)) {
            return;
        }
        int i = auxEffectInfo.effectId;
        float f = auxEffectInfo.sendLevel;
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            if (this.auxEffectInfo.effectId != i) {
                audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.audioTrack.setAuxEffectSendLevel(f);
            }
        }
        this.auxEffectInfo = auxEffectInfo;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.preferredDevice = audioDeviceInfo == null ? null : new AudioDeviceInfoApi23(audioDeviceInfo);
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.audioCapabilitiesReceiver;
        if (audioCapabilitiesReceiver != null) {
            audioCapabilitiesReceiver.setRoutedDevice(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            Api23.setPreferredDeviceOnAudioTrack(audioTrack, this.preferredDevice);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getAudioTrackBufferSizeUs() {
        if (isAudioTrackInitialized()) {
            return Api23.getAudioTrackBufferSizeUs(this.audioTrack, this.configuration);
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void enableTunnelingV21() {
        Assertions.checkState(this.externalAudioSessionIdProvided);
        if (this.tunneling) {
            return;
        }
        this.tunneling = true;
        flush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            flush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setOffloadMode(int i) {
        Assertions.checkState(Build.VERSION.SDK_INT >= 29);
        this.offloadMode = i;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setOffloadDelayPadding(int i, int i2) {
        Configuration configuration;
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack == null || !isOffloadedPlayback(audioTrack) || (configuration = this.configuration) == null || !configuration.enableOffloadGapless) {
            return;
        }
        this.audioTrack.setOffloadDelayPadding(i, i2);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVolume(float f) {
        if (this.volume != f) {
            this.volume = f;
            setVolumeInternal();
        }
    }

    private void setVolumeInternal() {
        if (isAudioTrackInitialized()) {
            this.audioTrack.setVolume(this.volume);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void pause() {
        this.playing = false;
        if (isAudioTrackInitialized()) {
            this.audioTrackPositionTracker.pause();
            if (!this.stoppedAudioTrack || isOffloadedPlayback(this.audioTrack)) {
                this.audioTrack.pause();
            }
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void flush() {
        if (isAudioTrackInitialized()) {
            resetSinkStateForFlush();
            if (this.audioTrackPositionTracker.isPlaying()) {
                this.audioTrack.pause();
            }
            if (isOffloadedPlayback(this.audioTrack)) {
                ((StreamEventCallbackV29) Assertions.checkNotNull(this.offloadStreamEventCallbackV29)).unregister(this.audioTrack);
            }
            AudioSink.AudioTrackConfig audioTrackConfigBuildAudioTrackConfig = this.configuration.buildAudioTrackConfig();
            Configuration configuration = this.pendingConfiguration;
            if (configuration != null) {
                this.configuration = configuration;
                this.pendingConfiguration = null;
            }
            this.audioTrackPositionTracker.reset();
            OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = this.onRoutingChangedListener;
            if (onRoutingChangedListenerApi24 != null) {
                onRoutingChangedListenerApi24.release();
                this.onRoutingChangedListener = null;
            }
            releaseAudioTrackAsync(this.audioTrack, this.listener, audioTrackConfigBuildAudioTrackConfig);
            this.audioTrack = null;
        }
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
        this.skippedOutputFrameCountAtLastPosition = 0L;
        this.accumulatedSkippedSilenceDurationUs = 0L;
        Handler handler = this.reportSkippedSilenceHandler;
        if (handler != null) {
            ((Handler) Assertions.checkNotNull(handler)).removeCallbacksAndMessages(null);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void reset() {
        flush();
        UnmodifiableIterator<AudioProcessor> it = this.availableAudioProcessors.iterator();
        while (it.hasNext()) {
            it.next().reset();
        }
        this.toInt16PcmAudioProcessor.reset();
        this.toFloatPcmAudioProcessor.reset();
        AudioProcessingPipeline audioProcessingPipeline = this.audioProcessingPipeline;
        if (audioProcessingPipeline != null) {
            audioProcessingPipeline.reset();
        }
        this.playing = false;
        this.offloadDisabledUntilNextConfiguration = false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void release() {
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.audioCapabilitiesReceiver;
        if (audioCapabilitiesReceiver != null) {
            audioCapabilitiesReceiver.unregister();
        }
    }

    public void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities) {
        Looper looperMyLooper = Looper.myLooper();
        Assertions.checkState(this.playbackLooper == looperMyLooper, "Current looper (" + getLooperThreadName(looperMyLooper) + ") is not the playback looper (" + getLooperThreadName(this.playbackLooper) + ")");
        AudioCapabilities audioCapabilities2 = this.audioCapabilities;
        if (audioCapabilities2 == null || audioCapabilities.equals(audioCapabilities2)) {
            return;
        }
        this.audioCapabilities = audioCapabilities;
        AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.onAudioCapabilitiesChanged();
        }
    }

    private void resetSinkStateForFlush() {
        this.submittedPcmBytes = 0L;
        this.submittedEncodedFrames = 0L;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.isWaitingForOffloadEndOfStreamHandled = false;
        this.framesPerEncodedSample = 0;
        this.mediaPositionParameters = new MediaPositionParameters(this.playbackParameters, 0L, 0L);
        this.startMediaTimeUs = 0L;
        this.afterDrainParameters = null;
        this.mediaPositionParametersCheckpoints.clear();
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        this.outputBuffer = null;
        this.stoppedAudioTrack = false;
        this.handledEndOfStream = false;
        this.handledOffloadOnPresentationEnded = false;
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.trimmingAudioProcessor.resetTrimmedFrameCount();
        setupAudioProcessors();
    }

    private void setAudioTrackPlaybackParametersV23() {
        if (isAudioTrackInitialized()) {
            try {
                this.audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(this.playbackParameters.speed).setPitch(this.playbackParameters.pitch).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                Log.m164w("DefaultAudioSink", "Failed to set playback params", e);
            }
            PlaybackParameters playbackParameters = new PlaybackParameters(this.audioTrack.getPlaybackParams().getSpeed(), this.audioTrack.getPlaybackParams().getPitch());
            this.playbackParameters = playbackParameters;
            this.audioTrackPositionTracker.setAudioTrackPlaybackSpeed(playbackParameters.speed);
        }
    }

    private void setAudioProcessorPlaybackParameters(PlaybackParameters playbackParameters) {
        MediaPositionParameters mediaPositionParameters = new MediaPositionParameters(playbackParameters, -9223372036854775807L, -9223372036854775807L);
        if (isAudioTrackInitialized()) {
            this.afterDrainParameters = mediaPositionParameters;
        } else {
            this.mediaPositionParameters = mediaPositionParameters;
        }
    }

    private void applyAudioProcessorPlaybackParametersAndSkipSilence(long j) {
        PlaybackParameters playbackParametersApplyPlaybackParameters;
        if (!useAudioTrackPlaybackParams()) {
            if (shouldApplyAudioProcessorPlaybackParameters()) {
                playbackParametersApplyPlaybackParameters = this.audioProcessorChain.applyPlaybackParameters(this.playbackParameters);
            } else {
                playbackParametersApplyPlaybackParameters = PlaybackParameters.DEFAULT;
            }
            this.playbackParameters = playbackParametersApplyPlaybackParameters;
        } else {
            playbackParametersApplyPlaybackParameters = PlaybackParameters.DEFAULT;
        }
        PlaybackParameters playbackParameters = playbackParametersApplyPlaybackParameters;
        this.skipSilenceEnabled = shouldApplyAudioProcessorPlaybackParameters() ? this.audioProcessorChain.applySkipSilenceEnabled(this.skipSilenceEnabled) : false;
        this.mediaPositionParametersCheckpoints.add(new MediaPositionParameters(playbackParameters, Math.max(0L, j), this.configuration.framesToDurationUs(getWrittenFrames())));
        setupAudioProcessors();
        AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.onSkipSilenceEnabledChanged(this.skipSilenceEnabled);
        }
    }

    private boolean shouldApplyAudioProcessorPlaybackParameters() {
        if (this.tunneling) {
            return false;
        }
        Configuration configuration = this.configuration;
        return configuration.outputMode == 0 && !shouldUseFloatOutput(configuration.inputFormat.pcmEncoding);
    }

    private boolean useAudioTrackPlaybackParams() {
        Configuration configuration = this.configuration;
        return configuration != null && configuration.enableAudioTrackPlaybackParams;
    }

    private boolean shouldUseFloatOutput(int i) {
        return this.enableFloatOutput && Util.isEncodingHighResolutionPcm(i);
    }

    private long applyMediaPositionParameters(long j) {
        while (!this.mediaPositionParametersCheckpoints.isEmpty() && j >= this.mediaPositionParametersCheckpoints.getFirst().audioTrackPositionUs) {
            this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
        }
        MediaPositionParameters mediaPositionParameters = this.mediaPositionParameters;
        long j2 = j - mediaPositionParameters.audioTrackPositionUs;
        long mediaDurationForPlayoutDuration = Util.getMediaDurationForPlayoutDuration(j2, mediaPositionParameters.playbackParameters.speed);
        if (this.mediaPositionParametersCheckpoints.isEmpty()) {
            long mediaDuration = this.audioProcessorChain.getMediaDuration(j2);
            MediaPositionParameters mediaPositionParameters2 = this.mediaPositionParameters;
            long j3 = mediaPositionParameters2.mediaTimeUs + mediaDuration;
            mediaPositionParameters2.mediaPositionDriftUs = mediaDuration - mediaDurationForPlayoutDuration;
            return j3;
        }
        MediaPositionParameters mediaPositionParameters3 = this.mediaPositionParameters;
        return mediaPositionParameters3.mediaTimeUs + mediaDurationForPlayoutDuration + mediaPositionParameters3.mediaPositionDriftUs;
    }

    private long applySkipping(long j) {
        long skippedOutputFrameCount = this.audioProcessorChain.getSkippedOutputFrameCount();
        long jFramesToDurationUs = j + this.configuration.framesToDurationUs(skippedOutputFrameCount);
        long j2 = this.skippedOutputFrameCountAtLastPosition;
        if (skippedOutputFrameCount > j2) {
            long jFramesToDurationUs2 = this.configuration.framesToDurationUs(skippedOutputFrameCount - j2);
            this.skippedOutputFrameCountAtLastPosition = skippedOutputFrameCount;
            handleSkippedSilence(jFramesToDurationUs2);
        }
        return jFramesToDurationUs;
    }

    private void handleSkippedSilence(long j) {
        this.accumulatedSkippedSilenceDurationUs += j;
        if (this.reportSkippedSilenceHandler == null) {
            this.reportSkippedSilenceHandler = new Handler(Looper.myLooper());
        }
        this.reportSkippedSilenceHandler.removeCallbacksAndMessages(null);
        this.reportSkippedSilenceHandler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.maybeReportSkippedSilence();
            }
        }, 100L);
    }

    private boolean isAudioTrackInitialized() {
        return this.audioTrack != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getSubmittedFrames() {
        Configuration configuration = this.configuration;
        if (configuration.outputMode == 0) {
            return this.submittedPcmBytes / ((long) configuration.inputPcmFrameSize);
        }
        return this.submittedEncodedFrames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getWrittenFrames() {
        if (this.configuration.outputMode == 0) {
            return Util.ceilDivide(this.writtenPcmBytes, r0.outputPcmFrameSize);
        }
        return this.writtenEncodedFrames;
    }

    @EnsuresNonNull({"audioCapabilities"})
    private void maybeStartAudioCapabilitiesReceiver() {
        Context context;
        Looper looperMyLooper = Looper.myLooper();
        Assertions.checkState(this.audioCapabilitiesReceiver == null || this.playbackLooper == looperMyLooper, "DefaultAudioSink accessed on multiple threads: " + getLooperThreadName(this.playbackLooper) + " and " + getLooperThreadName(looperMyLooper));
        if (this.audioCapabilitiesReceiver == null && (context = this.context) != null) {
            this.playbackLooper = looperMyLooper;
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = new AudioCapabilitiesReceiver(context, new AudioCapabilitiesReceiver.Listener() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda1
                @Override // androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver.Listener
                public final void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities) {
                    this.f$0.onAudioCapabilitiesChanged(audioCapabilities);
                }
            }, this.audioAttributes, this.preferredDevice);
            this.audioCapabilitiesReceiver = audioCapabilitiesReceiver;
            this.audioCapabilities = audioCapabilitiesReceiver.register();
        }
        Assertions.checkNotNull(this.audioCapabilities);
    }

    private static boolean isOffloadedPlayback(AudioTrack audioTrack) {
        return Build.VERSION.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    private static int getFramesPerEncodedSample(int i, ByteBuffer byteBuffer) {
        if (i != 20) {
            if (i != 30) {
                switch (i) {
                    case 5:
                    case 6:
                        break;
                    case 7:
                    case 8:
                        break;
                    case 9:
                        int mpegAudioFrameSampleCount = MpegAudioUtil.parseMpegAudioFrameSampleCount(Util.getBigEndianInt(byteBuffer, byteBuffer.position()));
                        if (mpegAudioFrameSampleCount != -1) {
                            return mpegAudioFrameSampleCount;
                        }
                        Segment$$ExternalSyntheticBUOutline0.m924m();
                        return 0;
                    case 10:
                        return 1024;
                    case 11:
                    case 12:
                        return 2048;
                    default:
                        switch (i) {
                            case 14:
                                int iFindTrueHdSyncframeOffset = Ac3Util.findTrueHdSyncframeOffset(byteBuffer);
                                if (iFindTrueHdSyncframeOffset == -1) {
                                    return 0;
                                }
                                return Ac3Util.parseTrueHdSyncframeAudioSampleCount(byteBuffer, iFindTrueHdSyncframeOffset) * 16;
                            case 15:
                                return 512;
                            case 16:
                                return 1024;
                            case 17:
                                return Ac4Util.parseAc4SyncframeAudioSampleCount(byteBuffer);
                            case 18:
                                break;
                            default:
                                JsonArray$$ExternalSyntheticBUOutline0.m474m("Unexpected audio encoding: ", i);
                                return 0;
                        }
                        break;
                }
                return Ac3Util.parseAc3SyncframeAudioSampleCount(byteBuffer);
            }
            return DtsUtil.parseDtsAudioSampleCount(byteBuffer);
        }
        return OpusUtil.parseOggPacketAudioSampleCount(byteBuffer);
    }

    private static int writeNonBlocking(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int writeNonBlockingWithAvSync(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (Build.VERSION.SDK_INT >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.avSyncHeader == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.avSyncHeader = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, i);
            this.avSyncHeader.putLong(8, j * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = i;
        }
        int iRemaining = this.avSyncHeader.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.avSyncHeader, iRemaining, 1);
            if (iWrite < 0) {
                this.bytesUntilNextAvSync = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iWriteNonBlocking = writeNonBlocking(audioTrack, byteBuffer, i);
        if (iWriteNonBlocking < 0) {
            this.bytesUntilNextAvSync = 0;
            return iWriteNonBlocking;
        }
        this.bytesUntilNextAvSync -= iWriteNonBlocking;
        return iWriteNonBlocking;
    }

    private void playPendingData() {
        if (this.stoppedAudioTrack) {
            return;
        }
        this.stoppedAudioTrack = true;
        this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
        if (isOffloadedPlayback(this.audioTrack)) {
            this.handledOffloadOnPresentationEnded = false;
        }
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    private ByteBuffer maybeRampUpVolume(ByteBuffer byteBuffer) {
        if (this.configuration.outputMode == 0) {
            int iDurationUsToSampleCount = (int) Util.durationUsToSampleCount(Util.msToUs(20L), this.configuration.outputSampleRate);
            long writtenFrames = getWrittenFrames();
            if (writtenFrames < iDurationUsToSampleCount) {
                Configuration configuration = this.configuration;
                return PcmAudioUtil.rampUpVolume(byteBuffer, configuration.outputEncoding, configuration.outputPcmFrameSize, (int) writtenFrames, iDurationUsToSampleCount);
            }
        }
        return byteBuffer;
    }

    private static void releaseAudioTrackAsync(final AudioTrack audioTrack, final AudioSink.Listener listener, final AudioSink.AudioTrackConfig audioTrackConfig) {
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (releaseExecutorLock) {
            try {
                if (releaseExecutor == null) {
                    releaseExecutor = Util.newSingleThreadScheduledExecutor("ExoPlayer:AudioTrackReleaseThread");
                }
                pendingReleaseCount++;
                releaseExecutor.schedule(new Runnable() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultAudioSink.m1894$r8$lambda$idAuhXPZKkc9ZJ9aYo_jnodQOk(audioTrack, listener, handler, audioTrackConfig);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$idAuhXPZKkc9ZJ9aYo_-jnodQOk, reason: not valid java name */
    public static /* synthetic */ void m1894$r8$lambda$idAuhXPZKkc9ZJ9aYo_jnodQOk(AudioTrack audioTrack, final AudioSink.Listener listener, Handler handler, final AudioSink.AudioTrackConfig audioTrackConfig) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (listener != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        listener.onAudioTrackReleased(audioTrackConfig);
                    }
                });
            }
            synchronized (releaseExecutorLock) {
                try {
                    int i = pendingReleaseCount - 1;
                    pendingReleaseCount = i;
                    if (i == 0) {
                        releaseExecutor.shutdown();
                        releaseExecutor = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            if (listener != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        listener.onAudioTrackReleased(audioTrackConfig);
                    }
                });
            }
            synchronized (releaseExecutorLock) {
                try {
                    int i2 = pendingReleaseCount - 1;
                    pendingReleaseCount = i2;
                    if (i2 == 0) {
                        releaseExecutor.shutdown();
                        releaseExecutor = null;
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasPendingAudioTrackReleases() {
        boolean z;
        synchronized (releaseExecutorLock) {
            z = pendingReleaseCount > 0;
        }
        return z;
    }

    private static int getDeviceIdFromContext(Context context) {
        int deviceId = context.getDeviceId();
        if (deviceId == 0 || deviceId == -1) {
            return -1;
        }
        return deviceId;
    }

    public static final class OnRoutingChangedListenerApi24 {
        private final AudioTrack audioTrack;
        private final AudioCapabilitiesReceiver capabilitiesReceiver;
        private AudioRouting.OnRoutingChangedListener listener = new AudioRouting.OnRoutingChangedListener() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0
            @Override // android.media.AudioRouting.OnRoutingChangedListener
            public final void onRoutingChanged(AudioRouting audioRouting) {
                this.f$0.onRoutingChanged(audioRouting);
            }
        };

        public OnRoutingChangedListenerApi24(AudioTrack audioTrack, AudioCapabilitiesReceiver audioCapabilitiesReceiver) {
            this.audioTrack = audioTrack;
            this.capabilitiesReceiver = audioCapabilitiesReceiver;
            audioTrack.addOnRoutingChangedListener(this.listener, new Handler(Looper.myLooper()));
        }

        public void release() {
            this.audioTrack.removeOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) Assertions.checkNotNull(this.listener));
            this.listener = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRoutingChanged(AudioRouting audioRouting) {
            AudioDeviceInfo routedDevice;
            if (this.listener == null || (routedDevice = audioRouting.getRoutedDevice()) == null) {
                return;
            }
            this.capabilitiesReceiver.setRoutedDevice(routedDevice);
        }
    }

    public final class StreamEventCallbackV29 {
        private final AudioTrack$StreamEventCallback callback;
        private final Handler handler = new Handler(Looper.myLooper());

        public StreamEventCallbackV29() {
            this.callback = new AudioTrack$StreamEventCallback() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink.StreamEventCallbackV29.1
                public void onDataRequest(AudioTrack audioTrack, int i) {
                    if (audioTrack.equals(DefaultAudioSink.this.audioTrack) && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                        DefaultAudioSink.this.listener.onOffloadBufferEmptying();
                    }
                }

                public void onPresentationEnded(AudioTrack audioTrack) {
                    if (audioTrack.equals(DefaultAudioSink.this.audioTrack)) {
                        DefaultAudioSink.this.handledOffloadOnPresentationEnded = true;
                    }
                }

                public void onTearDown(AudioTrack audioTrack) {
                    if (audioTrack.equals(DefaultAudioSink.this.audioTrack) && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                        DefaultAudioSink.this.listener.onOffloadBufferEmptying();
                    }
                }
            };
        }

        public void register(AudioTrack audioTrack) {
            Handler handler = this.handler;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new ExecutorC0722x59586989(handler), this.callback);
        }

        public void unregister(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }

    public static final class MediaPositionParameters {
        public final long audioTrackPositionUs;
        public long mediaPositionDriftUs;
        public final long mediaTimeUs;
        public final PlaybackParameters playbackParameters;

        private MediaPositionParameters(PlaybackParameters playbackParameters, long j, long j2) {
            this.playbackParameters = playbackParameters;
            this.mediaTimeUs = j;
            this.audioTrackPositionUs = j2;
        }
    }

    private static int getAudioTrackMinBufferSize(int i, int i2, int i3) {
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3);
        Assertions.checkState(minBufferSize != -2);
        return minBufferSize;
    }

    public final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        private PositionTrackerListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.getSubmittedFrames() + ", " + DefaultAudioSink.this.getWrittenFrames();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.m163w("DefaultAudioSink", str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.getSubmittedFrames() + ", " + DefaultAudioSink.this.getWrittenFrames();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.m163w("DefaultAudioSink", str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j) {
            Log.m163w("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(long j) {
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onPositionAdvancing(j);
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onUnderrun(int i, long j) {
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onUnderrun(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.lastFeedElapsedRealtimeMs);
            }
        }
    }

    public static final class Configuration {
        public final AudioProcessingPipeline audioProcessingPipeline;
        public final int bufferSize;
        public final boolean enableAudioTrackPlaybackParams;
        public final boolean enableOffloadGapless;
        public final Format inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;
        public final boolean tunneling;

        public Configuration(Format format, int i, int i2, int i3, int i4, int i5, int i6, int i7, AudioProcessingPipeline audioProcessingPipeline, boolean z, boolean z2, boolean z3) {
            this.inputFormat = format;
            this.inputPcmFrameSize = i;
            this.outputMode = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.bufferSize = i7;
            this.audioProcessingPipeline = audioProcessingPipeline;
            this.enableAudioTrackPlaybackParams = z;
            this.enableOffloadGapless = z2;
            this.tunneling = z3;
        }

        public Configuration copyWithBufferSize(int i) {
            return new Configuration(this.inputFormat, this.inputPcmFrameSize, this.outputMode, this.outputPcmFrameSize, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, i, this.audioProcessingPipeline, this.enableAudioTrackPlaybackParams, this.enableOffloadGapless, this.tunneling);
        }

        public boolean canReuseAudioTrack(Configuration configuration) {
            return configuration.outputMode == this.outputMode && configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig && configuration.outputPcmFrameSize == this.outputPcmFrameSize && configuration.enableAudioTrackPlaybackParams == this.enableAudioTrackPlaybackParams && configuration.enableOffloadGapless == this.enableOffloadGapless;
        }

        public long inputFramesToDurationUs(long j) {
            return Util.sampleCountToDurationUs(j, this.inputFormat.sampleRate);
        }

        public long framesToDurationUs(long j) {
            return Util.sampleCountToDurationUs(j, this.outputSampleRate);
        }

        public AudioSink.AudioTrackConfig buildAudioTrackConfig() {
            return new AudioSink.AudioTrackConfig(this.outputEncoding, this.outputSampleRate, this.outputChannelConfig, this.tunneling, this.outputMode == 1, this.bufferSize);
        }

        public boolean outputModeIsOffload() {
            return this.outputMode == 1;
        }
    }

    public static final class PendingExceptionHolder<T extends Exception> {
        private T pendingException;
        private long throwDeadlineMs = -9223372036854775807L;
        private long earliestNextRetryTimeMs = -9223372036854775807L;

        /* JADX INFO: Thrown type has an unknown type hierarchy: T extends java.lang.Exception */
        public void throwExceptionIfDeadlineIsReached(T t) throws T {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.pendingException == null) {
                this.pendingException = t;
            }
            if (this.throwDeadlineMs == -9223372036854775807L && !DefaultAudioSink.hasPendingAudioTrackReleases()) {
                this.throwDeadlineMs = 200 + jElapsedRealtime;
            }
            long j = this.throwDeadlineMs;
            if (j != -9223372036854775807L && jElapsedRealtime >= j) {
                T t2 = this.pendingException;
                if (t2 != t) {
                    t2.addSuppressed(t);
                }
                T t3 = this.pendingException;
                clear();
                throw t3;
            }
            this.earliestNextRetryTimeMs = jElapsedRealtime + 50;
        }

        public boolean shouldWaitBeforeRetry() {
            if (this.pendingException == null) {
                return false;
            }
            return DefaultAudioSink.hasPendingAudioTrackReleases() || SystemClock.elapsedRealtime() < this.earliestNextRetryTimeMs;
        }

        public void clear() {
            this.pendingException = null;
            this.throwDeadlineMs = -9223372036854775807L;
            this.earliestNextRetryTimeMs = -9223372036854775807L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeReportSkippedSilence() {
        if (this.accumulatedSkippedSilenceDurationUs >= 300000) {
            this.listener.onSilenceSkipped();
            this.accumulatedSkippedSilenceDurationUs = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getNonPcmMaximumEncodedRateBytesPerSecond(int i) {
        int maximumEncodedRateBytesPerSecond = ExtractorUtil.getMaximumEncodedRateBytesPerSecond(i);
        Assertions.checkState(maximumEncodedRateBytesPerSecond != -2147483647);
        return maximumEncodedRateBytesPerSecond;
    }

    private static String getLooperThreadName(Looper looper) {
        return looper == null ? "null" : looper.getThread().getName();
    }

    public static final class Api23 {
        public static void setPreferredDeviceOnAudioTrack(AudioTrack audioTrack, AudioDeviceInfoApi23 audioDeviceInfoApi23) {
            audioTrack.setPreferredDevice(audioDeviceInfoApi23 == null ? null : audioDeviceInfoApi23.audioDeviceInfo);
        }

        public static long getAudioTrackBufferSizeUs(AudioTrack audioTrack, Configuration configuration) {
            if (configuration.outputMode == 0) {
                return configuration.framesToDurationUs(audioTrack.getBufferSizeInFrames());
            }
            return Util.scaleLargeValue(audioTrack.getBufferSizeInFrames(), 1000000L, DefaultAudioSink.getNonPcmMaximumEncodedRateBytesPerSecond(configuration.outputEncoding), RoundingMode.DOWN);
        }
    }

    public static final class Api31 {
        public static void setLogSessionIdOnAudioTrack(AudioTrack audioTrack, PlayerId playerId) {
            LogSessionId logSessionId = playerId.getLogSessionId();
            if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionId);
        }
    }
}
