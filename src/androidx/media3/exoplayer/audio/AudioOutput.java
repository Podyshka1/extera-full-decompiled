package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public interface AudioOutput {

    public interface Listener {
        void onOffloadDataRequest();

        void onOffloadPresentationEnded();

        void onPositionAdvancing(long j);

        void onReleased();

        void onUnderrun();
    }

    void addListener(Listener listener);

    void attachAuxEffect(int i);

    int getAudioSessionId();

    long getBufferSizeInFrames();

    PlaybackParameters getPlaybackParameters();

    long getPositionUs();

    int getSampleRate();

    boolean isOffloadedPlayback();

    boolean isStalled();

    void pause();

    void play();

    void release();

    void setAuxEffectSendLevel(float f);

    void setOffloadDelayPadding(int i, int i2);

    void setOffloadEndOfStream();

    void setPlaybackParameters(PlaybackParameters playbackParameters);

    void setPlayerId(PlayerId playerId);

    void setPreferredDevice(AudioDeviceInfo audioDeviceInfo);

    void setVolume(float f);

    void stop();

    boolean write(ByteBuffer byteBuffer, int i, long j);

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final boolean isRecoverable;

        public WriteException(int i, boolean z) {
            super("AudioOutput write failed: " + i);
            this.isRecoverable = z;
            this.errorCode = i;
        }
    }

    default boolean canReuseAudioOutput(AudioOutputProvider.OutputConfig outputConfig, AudioOutputProvider.FormatConfig formatConfig, AudioOutputProvider.OutputConfig outputConfig2) {
        return outputConfig2.equals(outputConfig);
    }
}
