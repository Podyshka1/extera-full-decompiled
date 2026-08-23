package com.google.android.exoplayer2.audio;

import android.media.AudioDeviceInfo;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.analytics.PlayerId;
import java.nio.ByteBuffer;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public interface AudioSink {

    public interface Listener {
        void onAudioSinkError(Exception exc);

        default void onOffloadBufferEmptying() {
        }

        default void onOffloadBufferFull() {
        }

        void onPositionAdvancing(long j);

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z);

        void onUnderrun(int i, long j, long j2);
    }

    void configure(Format format, int i, int[] iArr);

    void disableTunneling();

    void enableTunnelingV21();

    void experimentalFlushWithoutAudioTrackRelease();

    void flush();

    long getCurrentPositionUs(boolean z);

    int getFormatSupport(Format format);

    PlaybackParameters getPlaybackParameters();

    boolean handleBuffer(ByteBuffer byteBuffer, long j, int i);

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream();

    void reset();

    void setAudioAttributes(AudioAttributes audioAttributes);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setListener(Listener listener);

    default void setOutputStreamOffsetUs(long j) {
    }

    void setPlaybackParameters(PlaybackParameters playbackParameters);

    void setPlayerId(PlayerId playerId);

    void setPreferredDevice(AudioDeviceInfo audioDeviceInfo);

    void setSkipSilenceEnabled(boolean z);

    void setVolume(float f);

    boolean supportsFormat(Format format);

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

        public InitializationException(int i, int i2, int i3, int i4, Format format, boolean z, Exception exc) {
            StringBuilder sb = new StringBuilder("AudioTrack init failed ");
            sb.append(i);
            sb.append(" Config(");
            sb.append(i2);
            sb.append(", ");
            sb.append(i3);
            sb.append(", ");
            sb.append(i4);
            sb.append(")");
            sb.append(z ? " (recoverable)" : _UrlKt.FRAGMENT_ENCODE_SET);
            super(sb.toString(), exc);
            this.audioTrackState = i;
            this.isRecoverable = z;
            this.format = format;
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
