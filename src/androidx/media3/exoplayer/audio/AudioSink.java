package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.nio.ByteBuffer;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public interface AudioSink {

    public interface Listener {
        void onAudioCapabilitiesChanged();

        void onAudioSessionIdChanged(int i);

        void onAudioSinkError(Exception exc);

        void onAudioTrackInitialized(AudioTrackConfig audioTrackConfig);

        void onAudioTrackReleased(AudioTrackConfig audioTrackConfig);

        default void onOffloadBufferEmptying() {
        }

        default void onOffloadBufferFull() {
        }

        void onPositionAdvancing(long j);

        void onPositionDiscontinuity();

        void onSilenceSkipped();

        void onSkipSilenceEnabledChanged(boolean z);

        void onUnderrun(int i, long j, long j2);
    }

    void configure(Format format, int i, int[] iArr);

    void disableTunneling();

    void enableTunnelingV21();

    void flush();

    long getAudioTrackBufferSizeUs();

    long getCurrentPositionUs(boolean z);

    AudioOffloadSupport getFormatOffloadSupport(Format format);

    int getFormatSupport(Format format);

    PlaybackParameters getPlaybackParameters();

    boolean handleBuffer(ByteBuffer byteBuffer, long j, int i);

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream();

    void release();

    void reset();

    void setAudioAttributes(AudioAttributes audioAttributes);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setClock(Clock clock);

    void setListener(Listener listener);

    void setOffloadDelayPadding(int i, int i2);

    void setOffloadMode(int i);

    default void setOutputStreamOffsetUs(long j) {
    }

    void setPlaybackParameters(PlaybackParameters playbackParameters);

    void setPlayerId(PlayerId playerId);

    void setPreferredDevice(AudioDeviceInfo audioDeviceInfo);

    void setSkipSilenceEnabled(boolean z);

    void setVolume(float f);

    boolean supportsFormat(Format format);

    public static final class AudioTrackConfig {
        public final int bufferSize;
        public final int channelConfig;
        public final int encoding;
        public final boolean offload;
        public final int sampleRate;
        public final boolean tunneling;

        public AudioTrackConfig(int i, int i2, int i3, boolean z, boolean z2, int i4) {
            this.encoding = i;
            this.sampleRate = i2;
            this.channelConfig = i3;
            this.tunneling = z;
            this.offload = z2;
            this.bufferSize = i4;
        }
    }

    public static final class ConfigurationException extends Exception {
        public final Format format;

        public ConfigurationException(Throwable th, Format format) {
            super(th);
            this.format = format;
        }

        public ConfigurationException(String str, Format format) {
            super(str);
            this.format = format;
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final Format format;
        public final boolean isRecoverable;

        public InitializationException(String str, int i, Format format, boolean z, Throwable th) {
            super(str, th);
            this.audioTrackState = i;
            this.isRecoverable = z;
            this.format = format;
        }

        public InitializationException(int i, int i2, int i3, int i4, int i5, Format format, boolean z, Exception exc) {
            StringBuilder sb = new StringBuilder("AudioTrack init failed ");
            sb.append(i);
            sb.append(" Config(");
            sb.append(i2);
            sb.append(", ");
            sb.append(i3);
            sb.append(", ");
            sb.append(i4);
            sb.append(", ");
            sb.append(i5);
            sb.append(") ");
            sb.append(format);
            sb.append(z ? " (recoverable)" : _UrlKt.FRAGMENT_ENCODE_SET);
            this(sb.toString(), i, format, z, exc);
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final Format format;
        public final boolean isRecoverable;

        public WriteException(int i, Format format, boolean z) {
            super("AudioTrack write failed: " + i);
            this.isRecoverable = z;
            this.errorCode = i;
            this.format = format;
        }
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j, long j2) {
            super("Unexpected audio track timestamp discontinuity: expected " + j2 + ", got " + j);
            this.actualPresentationTimeUs = j;
            this.expectedPresentationTimeUs = j2;
        }
    }
}
