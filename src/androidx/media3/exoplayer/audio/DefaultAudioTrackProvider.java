package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioTrack;
import android.os.Build;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultAudioTrackProvider implements DefaultAudioSink.AudioTrackProvider {
    public AudioTrack.Builder customizeAudioTrackBuilder(AudioTrack.Builder builder) {
        return builder;
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioTrackProvider
    public final AudioTrack getAudioTrack(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i, Context context) {
        return createAudioTrackV23(audioTrackConfig, audioAttributes, i, context);
    }

    private AudioTrack createAudioTrackV23(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i, Context context) {
        AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(getAudioTrackAttributesV21(audioAttributes, audioTrackConfig.tunneling)).setAudioFormat(Util.getAudioFormat(audioTrackConfig.sampleRate, audioTrackConfig.channelConfig, audioTrackConfig.encoding)).setTransferMode(1).setBufferSizeInBytes(audioTrackConfig.bufferSize).setSessionId(i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            setOffloadedPlaybackV29(sessionId, audioTrackConfig.offload);
        }
        if (i2 >= 34 && context != null) {
            sessionId.setContext(context);
        }
        return customizeAudioTrackBuilder(sessionId).build();
    }

    private void setOffloadedPlaybackV29(AudioTrack.Builder builder, boolean z) {
        builder.setOffloadedPlayback(z);
    }

    private android.media.AudioAttributes getAudioTrackAttributesV21(AudioAttributes audioAttributes, boolean z) {
        if (z) {
            return getAudioTrackTunnelingAttributesV21();
        }
        return audioAttributes.getAudioAttributesV21().audioAttributes;
    }

    private android.media.AudioAttributes getAudioTrackTunnelingAttributesV21() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }
}
