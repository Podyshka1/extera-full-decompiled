package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessingPipeline;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.AudioProcessorChain;
import androidx.media3.common.audio.SonicAudioProcessor;
import androidx.media3.common.audio.ToInt16PcmAudioProcessor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOffloadSupport;
import androidx.media3.exoplayer.audio.AudioOutput;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutputProvider;
import androidx.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.MpegAudioUtil;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.gson.JsonArray$$ExternalSyntheticBUOutline0;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultAudioSink implements AudioSink {
    private static final AtomicInteger pendingReleaseCount = new AtomicInteger();
    private long accumulatedSkippedSilenceDurationUs;
    private MediaPositionParameters afterDrainParameters;
    private AudioAttributes audioAttributes;
    private final ExoPlayer.AudioOffloadListener audioOffloadListener;
    private AudioOutput audioOutput;
    private AudioOutputListener audioOutputListener;
    private AudioOutputProvider audioOutputProvider;
    private AudioOutputProvider.Listener audioOutputProviderListener;
    private AudioProcessingPipeline audioProcessingPipeline;
    private final AudioProcessorChain audioProcessorChain;
    private int audioSessionId;
    private AuxEffectInfo auxEffectInfo;
    private final ImmutableList<AudioProcessor> availableAudioProcessors;
    private final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    private Configuration configuration;
    private final Context context;
    private final boolean enableFloatOutput;
    private boolean externalAudioSessionIdProvided;
    private int framesPerEncodedSample;
    private boolean handledEndOfStream;
    private boolean handledOffloadOnPresentationEnded;
    private final PendingExceptionHolder<AudioSink.InitializationException> initializationExceptionPendingExceptionHolder;
    private ByteBuffer inputBuffer;
    private int inputBufferAccessUnitCount;
    private boolean isWaitingForOffloadEndOfStreamHandled;
    private long lastFeedElapsedRealtimeMs;
    private AudioSink.Listener listener;
    private MediaPositionParameters mediaPositionParameters;
    private final ArrayDeque<MediaPositionParameters> mediaPositionParametersCheckpoints;
    private boolean offloadDisabledUntilNextConfiguration;
    private int offloadMode;
    private ByteBuffer outputBuffer;
    private boolean pendingAudioSessionIdChangeConfirmation;
    private Configuration pendingConfiguration;
    private PlaybackParameters playbackParameters;
    private PlayerId playerId;
    private boolean playing;
    private final boolean preferAudioOutputPlaybackParameters;
    private AudioDeviceInfo preferredDevice;
    private Handler reportSkippedSilenceHandler;
    private boolean skipSilenceEnabled;
    private long skippedOutputFrameCountAtLastPosition;
    private long startMediaTimeUs;
    private boolean startMediaTimeUsNeedsInit;
    private boolean startMediaTimeUsNeedsSync;
    private boolean stoppedAudioOutput;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private final ToFloatPcmAudioProcessor toFloatPcmAudioProcessor;
    private final ToInt16PcmAudioProcessor toInt16PcmAudioProcessor;
    private final TrimmingAudioProcessor trimmingAudioProcessor;
    private boolean tunneling;
    private int virtualDeviceId;
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

    @Deprecated
    public interface AudioTrackProvider {
    }

    private static int resolveDefaultVirtualDeviceIds(int i) {
        if (i == 0 || i == -1) {
            return -1;
        }
        return i;
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
        private AudioCapabilities audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
        private ExoPlayer.AudioOffloadListener audioOffloadListener;
        private AudioOffloadSupportProvider audioOffloadSupportProvider;
        private AudioOutputProvider audioOutputProvider;
        private AudioProcessorChain audioProcessorChain;
        private AudioTrackBufferSizeProvider audioTrackBufferSizeProvider;
        private boolean buildCalled;
        private final Context context;
        private boolean enableAudioOutputPlaybackParameters;
        private boolean enableFloatOutput;

        public Builder(Context context) {
            this.context = context;
        }

        public Builder setAudioProcessors(AudioProcessor[] audioProcessorArr) {
            Preconditions.checkNotNull(audioProcessorArr);
            return setAudioProcessorChain(new DefaultAudioProcessorChain(audioProcessorArr));
        }

        public Builder setAudioProcessorChain(AudioProcessorChain audioProcessorChain) {
            Preconditions.checkNotNull(audioProcessorChain);
            this.audioProcessorChain = audioProcessorChain;
            return this;
        }

        public Builder setEnableFloatOutput(boolean z) {
            this.enableFloatOutput = z;
            return this;
        }

        @Deprecated
        public Builder setEnableAudioTrackPlaybackParams(boolean z) {
            return setEnableAudioOutputPlaybackParameters(z);
        }

        public Builder setEnableAudioOutputPlaybackParameters(boolean z) {
            this.enableAudioOutputPlaybackParameters = z;
            return this;
        }

        public DefaultAudioSink build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.audioProcessorChain == null) {
                this.audioProcessorChain = new DefaultAudioProcessorChain(new AudioProcessor[0]);
            }
            AudioOutputProvider audioOutputProvider = this.audioOutputProvider;
            AudioOffloadSupportProvider audioOffloadSupportProvider = this.audioOffloadSupportProvider;
            if (audioOutputProvider == null) {
                if (audioOffloadSupportProvider == null) {
                    this.audioOffloadSupportProvider = new DefaultAudioOffloadSupportProvider(this.context);
                }
                if (this.audioTrackBufferSizeProvider == null) {
                    this.audioTrackBufferSizeProvider = AudioTrackBufferSizeProvider.DEFAULT;
                }
                this.audioOutputProvider = new AudioTrackAudioOutputProvider.Builder(this.context).setAudioCapabilities(this.context != null ? null : this.audioCapabilities).setAudioOffloadSupportProvider(this.audioOffloadSupportProvider).setAudioTrackBufferSizeProvider(this.audioTrackBufferSizeProvider).setAudioTrackProvider(null).build();
            } else {
                Preconditions.checkState(audioOffloadSupportProvider == null);
                Preconditions.checkState(this.audioTrackBufferSizeProvider == null);
                Preconditions.checkState(true);
            }
            return new DefaultAudioSink(this);
        }
    }

    @RequiresNonNull({"#1.audioProcessorChain"})
    private DefaultAudioSink(Builder builder) {
        this.context = builder.context == null ? null : builder.context.getApplicationContext();
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioProcessorChain = builder.audioProcessorChain;
        this.enableFloatOutput = builder.enableFloatOutput;
        this.preferAudioOutputPlaybackParameters = builder.enableAudioOutputPlaybackParameters;
        this.offloadMode = 0;
        this.audioOutputProvider = builder.audioOutputProvider;
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
        this.virtualDeviceId = (Build.VERSION.SDK_INT < 34 || builder.context == null) ? -1 : getDeviceIdFromContext(builder.context);
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
        this.audioOutputProvider.setClock(clock);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean supportsFormat(Format format) {
        return getFormatSupport(format) != 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public int getFormatSupport(Format format) {
        boolean z;
        if (Util.isEncodingLinearPcm(format.pcmEncoding)) {
            boolean zShouldUseFloatOutput = shouldUseFloatOutput(format.pcmEncoding);
            if (!zShouldUseFloatOutput || format.pcmEncoding == 4) {
                z = false;
            } else {
                format = format.buildUpon().setPcmEncoding(4).build();
                z = true;
            }
            if (!zShouldUseFloatOutput && format.pcmEncoding != 2) {
                format = format.buildUpon().setPcmEncoding(2).build();
                z = true;
            }
        } else {
            z = false;
        }
        int i = this.audioOutputProvider.getFormatSupport(getFormatConfig(format)).supportLevel;
        if (i == 1) {
            return 1;
        }
        if (i != 2) {
            return 0;
        }
        return z ? 1 : 2;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public AudioOffloadSupport getFormatOffloadSupport(Format format) {
        if (this.offloadDisabledUntilNextConfiguration) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        AudioOutputProvider.FormatSupport formatSupport = this.audioOutputProvider.getFormatSupport(getFormatConfig(format));
        return new AudioOffloadSupport.Builder().setIsFormatSupported(formatSupport.isFormatSupportedForOffload).setIsGaplessSupported(formatSupport.isGaplessSupportedForOffload).setIsSpeedChangeSupported(formatSupport.isSpeedChangeSupportedForOffload).build();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getCurrentPositionUs(boolean z) {
        if (!isAudioOutputInitialized() || this.startMediaTimeUsNeedsInit) {
            return Long.MIN_VALUE;
        }
        return applySkipping(applyMediaPositionParameters(Math.min(this.audioOutput.getPositionUs(), this.configuration.framesToDurationUs(getWrittenFrames()))));
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void configure(Format format, int i, int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessingPipeline audioProcessingPipeline;
        Format format2;
        int i2;
        int pcmFrameSize;
        maybeAddAudioOutputProviderListener();
        if ("audio/raw".equals(format.sampleMimeType)) {
            Preconditions.checkArgument(Util.isEncodingLinearPcm(format.pcmEncoding));
            int pcmFrameSize2 = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
            ImmutableList.Builder builder = new ImmutableList.Builder();
            builder.addAll((Iterable) this.availableAudioProcessors);
            if (shouldUseFloatOutput(format.pcmEncoding)) {
                builder.add(this.toFloatPcmAudioProcessor);
            } else {
                builder.add(this.toInt16PcmAudioProcessor);
                builder.add((Object[]) this.audioProcessorChain.getAudioProcessors());
            }
            audioProcessingPipeline = new AudioProcessingPipeline(builder.build());
            if (audioProcessingPipeline.equals(this.audioProcessingPipeline)) {
                audioProcessingPipeline = this.audioProcessingPipeline;
            }
            this.trimmingAudioProcessor.setTrimFrameCount(format.encoderDelay, format.encoderPadding);
            this.channelMappingAudioProcessor.setChannelMap(iArr);
            try {
                AudioProcessor.AudioFormat audioFormatConfigure = audioProcessingPipeline.configure(new AudioProcessor.AudioFormat(format));
                Format formatBuild = format.buildUpon().setPcmEncoding(audioFormatConfigure.encoding).setSampleRate(audioFormatConfigure.sampleRate).setChannelCount(audioFormatConfigure.channelCount).build();
                pcmFrameSize = Util.getPcmFrameSize(audioFormatConfigure.encoding, audioFormatConfigure.channelCount);
                i2 = pcmFrameSize2;
                format2 = formatBuild;
            } catch (AudioProcessor.UnhandledAudioFormatException e) {
                throw new AudioSink.ConfigurationException(e, format);
            }
        } else {
            audioProcessingPipeline = new AudioProcessingPipeline(ImmutableList.of());
            format2 = format;
            i2 = -1;
            pcmFrameSize = -1;
        }
        AudioProcessingPipeline audioProcessingPipeline2 = audioProcessingPipeline;
        if (i == 0) {
            i = -1;
        }
        AudioOutputProvider.FormatConfig formatConfig = getFormatConfig(format2, i);
        try {
            AudioOutputProvider.OutputConfig outputConfig = this.audioOutputProvider.getOutputConfig(formatConfig);
            if (outputConfig.encoding == 0) {
                throw new AudioSink.ConfigurationException("Invalid output encoding (isOffload=" + outputConfig.isOffload + ")", formatConfig.format);
            }
            if (outputConfig.channelMask == 0) {
                throw new AudioSink.ConfigurationException("Invalid output channel config (isOffload=" + outputConfig.isOffload + ")", formatConfig.format);
            }
            this.offloadDisabledUntilNextConfiguration = false;
            Configuration configuration = new Configuration(format, format2, i2, pcmFrameSize, outputConfig, audioProcessingPipeline2);
            if (isAudioOutputInitialized()) {
                this.pendingConfiguration = configuration;
            } else {
                this.configuration = configuration;
            }
        } catch (AudioOutputProvider.ConfigurationException e2) {
            throw new AudioSink.ConfigurationException(e2, format);
        }
    }

    private void setupAudioProcessors() {
        AudioProcessingPipeline audioProcessingPipeline = this.configuration.audioProcessingPipeline;
        this.audioProcessingPipeline = audioProcessingPipeline;
        audioProcessingPipeline.flush();
    }

    private boolean initializeAudioOutput() {
        if (this.initializationExceptionPendingExceptionHolder.shouldWaitBeforeRetry()) {
            return false;
        }
        this.audioOutput = buildAudioOutputWithRetry();
        AudioOutputListener audioOutputListener = new AudioOutputListener(this.configuration.outputConfig);
        this.audioOutputListener = audioOutputListener;
        this.audioOutput.addListener(audioOutputListener);
        ExoPlayer.AudioOffloadListener audioOffloadListener = this.audioOffloadListener;
        if (audioOffloadListener != null) {
            audioOffloadListener.onOffloadedPlayback(this.audioOutput.isOffloadedPlayback());
        }
        if (this.audioOutput.isOffloadedPlayback() && this.configuration.outputConfig.useOffloadGapless) {
            this.audioOutput.setOffloadDelayPadding(this.configuration.inputFormat.encoderDelay, this.configuration.inputFormat.encoderPadding);
        }
        PlayerId playerId = this.playerId;
        if (playerId != null) {
            this.audioOutput.setPlayerId(playerId);
        }
        setVolumeInternal();
        int i = this.auxEffectInfo.effectId;
        if (i != 0) {
            this.audioOutput.attachAuxEffect(i);
            this.audioOutput.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
        AudioDeviceInfo audioDeviceInfo = this.preferredDevice;
        if (audioDeviceInfo != null) {
            this.audioOutput.setPreferredDevice(audioDeviceInfo);
        }
        this.startMediaTimeUsNeedsInit = true;
        int audioSessionId = this.audioOutput.getAudioSessionId();
        boolean z = audioSessionId != this.audioSessionId;
        this.audioSessionId = audioSessionId;
        AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.onAudioTrackInitialized(this.configuration.buildAudioTrackConfig());
            if (z) {
                this.pendingAudioSessionIdChangeConfirmation = true;
                Configuration configuration = this.configuration;
                this.configuration = configuration.copyWithOutputConfig(configuration.outputConfig.buildUpon().setAudioSessionId(this.audioSessionId).build());
                Configuration configuration2 = this.pendingConfiguration;
                if (configuration2 != null) {
                    this.pendingConfiguration = configuration2.copyWithOutputConfig(configuration2.outputConfig.buildUpon().setAudioSessionId(this.audioSessionId).build());
                }
                this.listener.onAudioSessionIdChanged(this.audioSessionId);
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void play() {
        this.playing = true;
        if (isAudioOutputInitialized()) {
            this.audioOutput.play();
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
        Preconditions.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.pendingConfiguration != null) {
            if (!drainToEndOfStream()) {
                return false;
            }
            AudioOutput audioOutput = this.audioOutput;
            if (audioOutput != null && !audioOutput.canReuseAudioOutput(this.configuration.outputConfig, getFormatConfig(this.pendingConfiguration.afterProcessingInputFormat), this.pendingConfiguration.outputConfig)) {
                playPendingData();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            } else {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
                AudioOutput audioOutput2 = this.audioOutput;
                if (audioOutput2 != null && audioOutput2.isOffloadedPlayback() && this.configuration.outputConfig.useOffloadGapless) {
                    this.audioOutput.setOffloadEndOfStream();
                    this.audioOutput.setOffloadDelayPadding(this.configuration.inputFormat.encoderDelay, this.configuration.inputFormat.encoderPadding);
                    this.isWaitingForOffloadEndOfStreamHandled = true;
                }
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
        }
        if (!isAudioOutputInitialized()) {
            try {
                if (!initializeAudioOutput()) {
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
            if (useAudioOutputPlaybackParams()) {
                setAudioOutputPlaybackParameters();
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
            if (this.playing) {
                play();
            }
        }
        if (this.inputBuffer == null) {
            Preconditions.checkArgument(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (!this.configuration.isPcm() && this.framesPerEncodedSample == 0) {
                int framesPerEncodedSample = getFramesPerEncodedSample(this.configuration.outputConfig.encoding, byteBuffer);
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
            if (this.configuration.isPcm()) {
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
        if (!this.audioOutput.isStalled()) {
            return false;
        }
        Log.m164w("DefaultAudioSink", "Resetting stalled audio output");
        flush();
        return true;
    }

    private AudioOutput buildAudioOutputWithRetry() throws AudioSink.InitializationException {
        try {
            return buildAudioOutput(this.configuration.outputConfig);
        } catch (AudioSink.InitializationException e) {
            int i = this.configuration.outputConfig.bufferSize;
            while (i > 1000000) {
                i /= 2;
                int i2 = this.configuration.outputPcmFrameSize != -1 ? this.configuration.outputPcmFrameSize : 1;
                int i3 = i % i2;
                if (i3 != 0) {
                    i += i2 - i3;
                }
                AudioOutputProvider.OutputConfig outputConfigBuild = this.configuration.outputConfig.buildUpon().setBufferSize(i).build();
                try {
                    AudioOutput audioOutputBuildAudioOutput = this.buildAudioOutput(outputConfigBuild);
                    this.configuration = this.configuration.copyWithOutputConfig(outputConfigBuild);
                    return audioOutputBuildAudioOutput;
                } catch (AudioSink.InitializationException e2) {
                    e.addSuppressed(e2);
                }
            }
            this.maybeDisableOffload();
            throw e;
        }
    }

    private AudioOutput buildAudioOutput(AudioOutputProvider.OutputConfig outputConfig) throws AudioSink.InitializationException {
        try {
            return this.audioOutputProvider.getAudioOutput(outputConfig);
        } catch (AudioOutputProvider.InitializationException e) {
            AudioSink.InitializationException initializationException = new AudioSink.InitializationException(0, outputConfig.sampleRate, outputConfig.channelMask, outputConfig.encoding, outputConfig.bufferSize, this.configuration.inputFormat, outputConfig.isOffload, e);
            AudioSink.Listener listener = this.listener;
            if (listener != null) {
                listener.onAudioSinkError(initializationException);
                throw initializationException;
            }
            throw initializationException;
        }
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
        Preconditions.checkState(this.outputBuffer == null);
        if (byteBuffer.hasRemaining()) {
            this.outputBuffer = maybeRampUpVolume(byteBuffer);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: T */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drainOutputBuffer(long j) throws T, AudioSink.WriteException {
        AudioSink.Listener listener;
        if (this.outputBuffer == null || this.writeExceptionPendingExceptionHolder.shouldWaitBeforeRetry()) {
            return;
        }
        int iRemaining = this.outputBuffer.remaining();
        try {
            boolean zWrite = this.audioOutput.write(this.outputBuffer, this.inputBufferAccessUnitCount, j);
            this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
            this.writeExceptionPendingExceptionHolder.clear();
            if (this.audioOutput.isOffloadedPlayback()) {
                if (this.writtenEncodedFrames > 0) {
                    this.isWaitingForOffloadEndOfStreamHandled = false;
                }
                if (this.playing && (listener = this.listener) != null && !zWrite && !this.isWaitingForOffloadEndOfStreamHandled) {
                    listener.onOffloadBufferFull();
                }
            }
            if (this.configuration.isPcm()) {
                this.writtenPcmBytes += (long) (iRemaining - this.outputBuffer.remaining());
            }
            if (zWrite) {
                if (!this.configuration.isPcm()) {
                    Preconditions.checkState(this.outputBuffer == this.inputBuffer);
                    this.writtenEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) this.inputBufferAccessUnitCount);
                }
                this.outputBuffer = null;
            }
        } catch (AudioOutput.WriteException e) {
            if (!e.isRecoverable) {
                z = false;
            } else if (getWrittenFrames() <= 0) {
                if (this.audioOutput.isOffloadedPlayback()) {
                    maybeDisableOffload();
                }
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(e.errorCode, this.configuration.inputFormat, z);
            AudioSink.Listener listener2 = this.listener;
            if (listener2 != null) {
                listener2.onAudioSinkError(writeException);
            }
            if (e.isRecoverable) {
                throw writeException;
            }
            this.writeExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(writeException);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void playToEndOfStream() {
        if (!this.handledEndOfStream && isAudioOutputInitialized() && drainToEndOfStream()) {
            playPendingData();
            this.handledEndOfStream = true;
        }
    }

    private void maybeDisableOffload() {
        if (this.configuration.outputConfig.isOffload) {
            this.offloadDisabledUntilNextConfiguration = true;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean isEnded() {
        if (isAudioOutputInitialized()) {
            return this.handledEndOfStream && !hasPendingData();
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean hasPendingData() {
        if (isAudioOutputInitialized()) {
            return !(Build.VERSION.SDK_INT >= 29 && this.audioOutput.isOffloadedPlayback() && this.handledOffloadOnPresentationEnded) && hasAudioOutputPendingData(getWrittenFrames());
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        if (useAudioOutputPlaybackParams()) {
            this.playbackParameters = playbackParameters;
            setAudioOutputPlaybackParameters();
        } else {
            PlaybackParameters playbackParameters2 = new PlaybackParameters(Util.constrainValue(playbackParameters.speed, 0.1f, 8.0f), Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f));
            this.playbackParameters = playbackParameters2;
            setAudioProcessorPlaybackParameters(playbackParameters2);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setSkipSilenceEnabled(boolean z) {
        this.skipSilenceEnabled = z;
        setAudioProcessorPlaybackParameters(useAudioOutputPlaybackParams() ? PlaybackParameters.DEFAULT : this.playbackParameters);
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
        reconfigureAndFlush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public AudioCapabilities getAudioCapabilities() {
        AudioOutputProvider audioOutputProvider = this.audioOutputProvider;
        if (audioOutputProvider instanceof AudioTrackAudioOutputProvider) {
            return ((AudioTrackAudioOutputProvider) audioOutputProvider).getAudioCapabilities();
        }
        return null;
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
            reconfigureAndFlush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        if (this.auxEffectInfo.equals(auxEffectInfo)) {
            return;
        }
        int i = auxEffectInfo.effectId;
        float f = auxEffectInfo.sendLevel;
        AudioOutput audioOutput = this.audioOutput;
        if (audioOutput != null) {
            if (this.auxEffectInfo.effectId != i) {
                audioOutput.attachAuxEffect(i);
            }
            if (i != 0) {
                this.audioOutput.setAuxEffectSendLevel(f);
            }
        }
        this.auxEffectInfo = auxEffectInfo;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.preferredDevice = audioDeviceInfo;
        AudioOutput audioOutput = this.audioOutput;
        if (audioOutput != null) {
            audioOutput.setPreferredDevice(audioDeviceInfo);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVirtualDeviceId(int i) {
        int iResolveDefaultVirtualDeviceIds = resolveDefaultVirtualDeviceIds(i);
        if (this.virtualDeviceId == iResolveDefaultVirtualDeviceIds) {
            return;
        }
        this.virtualDeviceId = iResolveDefaultVirtualDeviceIds;
        reconfigureAndFlush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getAudioTrackBufferSizeUs() {
        if (!isAudioOutputInitialized()) {
            return -9223372036854775807L;
        }
        if (!this.configuration.isPcm()) {
            return Util.scaleLargeValue(this.audioOutput.getBufferSizeInFrames(), 1000000L, getNonPcmMaximumEncodedRateBytesPerSecond(this.configuration.outputConfig.encoding), RoundingMode.DOWN);
        }
        return this.configuration.framesToDurationUs(this.audioOutput.getBufferSizeInFrames());
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void enableTunnelingV21() {
        Preconditions.checkState(this.externalAudioSessionIdProvided);
        if (this.tunneling) {
            return;
        }
        this.tunneling = true;
        reconfigureAndFlush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            reconfigureAndFlush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setOffloadMode(int i) {
        Preconditions.checkState(Build.VERSION.SDK_INT >= 29);
        this.offloadMode = i;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setOffloadDelayPadding(int i, int i2) {
        Configuration configuration;
        AudioOutput audioOutput = this.audioOutput;
        if (audioOutput == null || !audioOutput.isOffloadedPlayback() || (configuration = this.configuration) == null || !configuration.outputConfig.useOffloadGapless) {
            return;
        }
        this.audioOutput.setOffloadDelayPadding(i, i2);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioOutputProvider(AudioOutputProvider audioOutputProvider) {
        if (audioOutputProvider.equals(this.audioOutputProvider)) {
            return;
        }
        this.audioOutputProvider.release();
        this.audioOutputProvider = audioOutputProvider;
        AudioOutputProvider.Listener listener = this.audioOutputProviderListener;
        if (listener != null) {
            audioOutputProvider.addListener(listener);
        }
        reconfigureAndFlush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVolume(float f) {
        if (this.volume != f) {
            this.volume = f;
            setVolumeInternal();
        }
    }

    private void setVolumeInternal() {
        if (isAudioOutputInitialized()) {
            this.audioOutput.setVolume(this.volume);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void pause() {
        this.playing = false;
        if (isAudioOutputInitialized()) {
            this.audioOutput.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void flush() {
        if (isAudioOutputInitialized()) {
            resetSinkStateForFlush();
            this.audioOutputListener = null;
            Configuration configuration = this.pendingConfiguration;
            if (configuration != null) {
                this.configuration = configuration;
                this.pendingConfiguration = null;
            }
            pendingReleaseCount.incrementAndGet();
            this.audioOutput.release();
            this.audioOutput = null;
        }
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
        this.skippedOutputFrameCountAtLastPosition = 0L;
        this.accumulatedSkippedSilenceDurationUs = 0L;
        Handler handler = this.reportSkippedSilenceHandler;
        if (handler != null) {
            ((Handler) Preconditions.checkNotNull(handler)).removeCallbacksAndMessages(null);
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
        this.audioOutputProvider.release();
    }

    private void reconfigureAndFlush() {
        if (this.configuration != null) {
            Configuration configuration = this.pendingConfiguration;
            if (configuration != null) {
                this.configuration = configuration;
                this.pendingConfiguration = null;
            }
            try {
                this.configuration = new Configuration(this.configuration.inputFormat, this.configuration.afterProcessingInputFormat, this.configuration.inputPcmFrameSize, this.configuration.outputPcmFrameSize, this.audioOutputProvider.getOutputConfig(getFormatConfig(this.configuration.afterProcessingInputFormat)), this.configuration.audioProcessingPipeline);
            } catch (AudioOutputProvider.ConfigurationException e) {
                UnsafeUtil$$ExternalSyntheticBUOutline0.m507m(new AudioSink.ConfigurationException(e, this.configuration.inputFormat));
                return;
            }
        }
        flush();
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
        this.stoppedAudioOutput = false;
        this.handledEndOfStream = false;
        this.handledOffloadOnPresentationEnded = false;
        this.trimmingAudioProcessor.resetTrimmedFrameCount();
        setupAudioProcessors();
    }

    private void setAudioOutputPlaybackParameters() {
        if (isAudioOutputInitialized()) {
            this.audioOutput.setPlaybackParameters(this.playbackParameters);
            this.playbackParameters = this.audioOutput.getPlaybackParameters();
        }
    }

    private void setAudioProcessorPlaybackParameters(PlaybackParameters playbackParameters) {
        MediaPositionParameters mediaPositionParameters = new MediaPositionParameters(playbackParameters, -9223372036854775807L, -9223372036854775807L);
        if (isAudioOutputInitialized()) {
            this.afterDrainParameters = mediaPositionParameters;
        } else {
            this.mediaPositionParameters = mediaPositionParameters;
        }
    }

    private void applyAudioProcessorPlaybackParametersAndSkipSilence(long j) {
        PlaybackParameters playbackParametersApplyPlaybackParameters;
        if (!useAudioOutputPlaybackParams()) {
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
        return (this.tunneling || !this.configuration.isPcm() || shouldUseFloatOutput(this.configuration.inputFormat.pcmEncoding)) ? false : true;
    }

    private boolean useAudioOutputPlaybackParams() {
        Configuration configuration = this.configuration;
        return configuration != null && configuration.outputConfig.usePlaybackParameters;
    }

    private boolean shouldUseFloatOutput(int i) {
        return this.enableFloatOutput && Util.isEncodingHighResolutionPcm(i);
    }

    private long applyMediaPositionParameters(long j) {
        while (!this.mediaPositionParametersCheckpoints.isEmpty() && j >= this.mediaPositionParametersCheckpoints.getFirst().audioOutputPositionUs) {
            this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
        }
        MediaPositionParameters mediaPositionParameters = this.mediaPositionParameters;
        long j2 = j - mediaPositionParameters.audioOutputPositionUs;
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
        this.reportSkippedSilenceHandler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.maybeReportSkippedSilence();
            }
        }, 100L);
    }

    private boolean isAudioOutputInitialized() {
        return this.audioOutput != null;
    }

    private long getSubmittedFrames() {
        if (!this.configuration.isPcm()) {
            return this.submittedEncodedFrames;
        }
        return this.submittedPcmBytes / ((long) this.configuration.inputPcmFrameSize);
    }

    private long getWrittenFrames() {
        if (!this.configuration.isPcm()) {
            return this.writtenEncodedFrames;
        }
        return Util.ceilDivide(this.writtenPcmBytes, this.configuration.outputPcmFrameSize);
    }

    private void maybeAddAudioOutputProviderListener() {
        if (this.audioOutputProviderListener != null || this.context == null) {
            return;
        }
        AudioOutputProvider.Listener listener = new AudioOutputProvider.Listener() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda0
            @Override // androidx.media3.exoplayer.audio.AudioOutputProvider.Listener
            public final void onFormatSupportChanged() {
                DefaultAudioSink.$r8$lambda$P3hKh9Iel6KmwPO6PkzGuOHO0NY(this.f$0);
            }
        };
        this.audioOutputProviderListener = listener;
        this.audioOutputProvider.addListener(listener);
    }

    public static /* synthetic */ void $r8$lambda$P3hKh9Iel6KmwPO6PkzGuOHO0NY(DefaultAudioSink defaultAudioSink) {
        AudioSink.Listener listener = defaultAudioSink.listener;
        if (listener != null) {
            listener.onAudioCapabilitiesChanged();
        }
    }

    private AudioOutputProvider.FormatConfig getFormatConfig(Format format) {
        return getFormatConfig(format, -1);
    }

    private AudioOutputProvider.FormatConfig getFormatConfig(Format format, int i) {
        return new AudioOutputProvider.FormatConfig.Builder(format).setAudioAttributes(this.audioAttributes).setEnableHighResolutionPcmOutput(this.enableFloatOutput).setEnablePlaybackParameters(this.preferAudioOutputPlaybackParameters).setEnableOffload(this.offloadMode != 0).setPreferredDevice(this.preferredDevice).setAudioSessionId(this.audioSessionId).setEnableTunneling(this.tunneling).setPreferredBufferSize(i).setVirtualDeviceId(this.virtualDeviceId).build();
    }

    public static int getFramesPerEncodedSample(int i, ByteBuffer byteBuffer) {
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
                        Segment$$ExternalSyntheticBUOutline0.m972m();
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
                                JsonArray$$ExternalSyntheticBUOutline0.m498m("Unexpected audio encoding: ", i);
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

    private void playPendingData() {
        if (this.stoppedAudioOutput) {
            return;
        }
        this.stoppedAudioOutput = true;
        if (this.audioOutput.isOffloadedPlayback()) {
            this.handledOffloadOnPresentationEnded = false;
        }
        this.audioOutput.stop();
    }

    private ByteBuffer maybeRampUpVolume(ByteBuffer byteBuffer) {
        if (this.configuration.isPcm()) {
            int iDurationUsToSampleCount = (int) Util.durationUsToSampleCount(Util.msToUs(20L), this.configuration.outputConfig.sampleRate);
            long writtenFrames = getWrittenFrames();
            if (writtenFrames < iDurationUsToSampleCount) {
                return PcmAudioUtil.rampUpVolume(byteBuffer, this.configuration.outputConfig.encoding, this.configuration.outputPcmFrameSize, (int) writtenFrames, iDurationUsToSampleCount);
            }
        }
        return byteBuffer;
    }

    private boolean hasAudioOutputPendingData(long j) {
        return j > Util.durationUsToSampleCount(this.audioOutput.getPositionUs(), ((AudioOutput) Preconditions.checkNotNull(this.audioOutput)).getSampleRate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasPendingAudioOutputReleases() {
        return pendingReleaseCount.get() > 0;
    }

    private static int getDeviceIdFromContext(Context context) {
        return resolveDefaultVirtualDeviceIds(context.getDeviceId());
    }

    public final class AudioOutputListener implements AudioOutput.Listener {
        private final AudioOutputProvider.OutputConfig outputConfig;

        private AudioOutputListener(AudioOutputProvider.OutputConfig outputConfig) {
            this.outputConfig = outputConfig;
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onPositionAdvancing(long j) {
            if (this == DefaultAudioSink.this.audioOutputListener && DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onPositionAdvancing(j);
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onOffloadDataRequest() {
            if (this == DefaultAudioSink.this.audioOutputListener && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                DefaultAudioSink.this.listener.onOffloadBufferEmptying();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onOffloadPresentationEnded() {
            if (this == DefaultAudioSink.this.audioOutputListener && DefaultAudioSink.this.stoppedAudioOutput) {
                DefaultAudioSink.this.handledOffloadOnPresentationEnded = true;
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onUnderrun() {
            if (this == DefaultAudioSink.this.audioOutputListener && DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onUnderrun(DefaultAudioSink.this.configuration.outputConfig.bufferSize, Util.usToMs(DefaultAudioSink.this.configuration.outputPcmFrameSize != -1 ? Util.sampleCountToDurationUs(DefaultAudioSink.this.configuration.outputConfig.bufferSize / DefaultAudioSink.this.configuration.outputPcmFrameSize, ((AudioOutput) Preconditions.checkNotNull(DefaultAudioSink.this.audioOutput)).getSampleRate()) : -9223372036854775807L), SystemClock.elapsedRealtime() - DefaultAudioSink.this.lastFeedElapsedRealtimeMs);
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onReleased() {
            DefaultAudioSink.pendingReleaseCount.getAndDecrement();
            if (DefaultAudioSink.this.listener != null) {
                AudioSink.Listener listener = DefaultAudioSink.this.listener;
                AudioOutputProvider.OutputConfig outputConfig = this.outputConfig;
                listener.onAudioTrackReleased(new AudioSink.AudioTrackConfig(outputConfig.encoding, outputConfig.sampleRate, outputConfig.channelMask, outputConfig.isTunneling, outputConfig.isOffload, outputConfig.bufferSize));
            }
        }
    }

    public static final class MediaPositionParameters {
        public final long audioOutputPositionUs;
        public long mediaPositionDriftUs;
        public final long mediaTimeUs;
        public final PlaybackParameters playbackParameters;

        private MediaPositionParameters(PlaybackParameters playbackParameters, long j, long j2) {
            this.playbackParameters = playbackParameters;
            this.mediaTimeUs = j;
            this.audioOutputPositionUs = j2;
        }
    }

    public static final class Configuration {
        private final Format afterProcessingInputFormat;
        private final AudioProcessingPipeline audioProcessingPipeline;
        private final Format inputFormat;
        private final int inputPcmFrameSize;
        private final AudioOutputProvider.OutputConfig outputConfig;
        private final int outputPcmFrameSize;

        private Configuration(Format format, Format format2, int i, int i2, AudioOutputProvider.OutputConfig outputConfig, AudioProcessingPipeline audioProcessingPipeline) {
            this.inputFormat = format;
            this.afterProcessingInputFormat = format2;
            this.inputPcmFrameSize = i;
            this.outputPcmFrameSize = i2;
            this.outputConfig = outputConfig;
            this.audioProcessingPipeline = audioProcessingPipeline;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Configuration copyWithOutputConfig(AudioOutputProvider.OutputConfig outputConfig) {
            return new Configuration(this.inputFormat, this.afterProcessingInputFormat, this.inputPcmFrameSize, this.outputPcmFrameSize, outputConfig, this.audioProcessingPipeline);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long inputFramesToDurationUs(long j) {
            return Util.sampleCountToDurationUs(j, this.inputFormat.sampleRate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long framesToDurationUs(long j) {
            return Util.sampleCountToDurationUs(j, this.outputConfig.sampleRate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AudioSink.AudioTrackConfig buildAudioTrackConfig() {
            AudioOutputProvider.OutputConfig outputConfig = this.outputConfig;
            return new AudioSink.AudioTrackConfig(outputConfig.encoding, outputConfig.sampleRate, outputConfig.channelMask, outputConfig.isTunneling, outputConfig.isOffload, outputConfig.bufferSize);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPcm() {
            return Objects.equals(this.inputFormat.sampleMimeType, "audio/raw");
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
            if (this.throwDeadlineMs == -9223372036854775807L && !DefaultAudioSink.hasPendingAudioOutputReleases()) {
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
            return DefaultAudioSink.hasPendingAudioOutputReleases() || SystemClock.elapsedRealtime() < this.earliestNextRetryTimeMs;
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

    private static int getNonPcmMaximumEncodedRateBytesPerSecond(int i) {
        int maximumEncodedRateBytesPerSecond = ExtractorUtil.getMaximumEncodedRateBytesPerSecond(i);
        Preconditions.checkState(maximumEncodedRateBytesPerSecond != -2147483647);
        return maximumEncodedRateBytesPerSecond;
    }
}
