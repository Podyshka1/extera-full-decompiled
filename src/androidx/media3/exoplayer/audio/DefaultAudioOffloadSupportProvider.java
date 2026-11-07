package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioOffloadSupport;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultAudioOffloadSupportProvider implements DefaultAudioSink.AudioOffloadSupportProvider {
    private final Context context;
    private Boolean isOffloadVariableRateSupported;

    public DefaultAudioOffloadSupportProvider(Context context) {
        this.context = context == null ? null : context.getApplicationContext();
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioOffloadSupportProvider
    public AudioOffloadSupport getAudioOffloadSupport(Format format, AudioAttributes audioAttributes) {
        Preconditions.checkNotNull(format);
        Preconditions.checkNotNull(audioAttributes);
        int i = Build.VERSION.SDK_INT;
        if (i < 29 || format.sampleRate == -1) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        boolean zIsOffloadVariableRateSupported = isOffloadVariableRateSupported(this.context);
        int encoding = MimeTypes.getEncoding((String) Preconditions.checkNotNull(format.sampleMimeType), format.codecs);
        if (encoding == 0 || i < Util.getApiLevelThatAudioFormatIntroducedAudioEncoding(encoding)) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(format.channelCount);
        if (audioTrackChannelConfig == 0) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        try {
            AudioFormat audioFormat = Util.getAudioFormat(format.sampleRate, audioTrackChannelConfig, encoding);
            if (i >= 33) {
                return getOffloadedPlaybackSupportV33(audioFormat, audioAttributes.getPlatformAudioAttributes(), zIsOffloadVariableRateSupported);
            }
            if (i >= 31) {
                return getOffloadedPlaybackSupportV31(audioFormat, audioAttributes.getPlatformAudioAttributes(), zIsOffloadVariableRateSupported);
            }
            return getOffloadedPlaybackSupportV29(audioFormat, audioAttributes.getPlatformAudioAttributes(), zIsOffloadVariableRateSupported);
        } catch (IllegalArgumentException unused) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
    }

    private boolean isOffloadVariableRateSupported(Context context) {
        Boolean bool = this.isOffloadVariableRateSupported;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context != null) {
            String parameters = AudioManagerCompat.getAudioManager(context).getParameters("offloadVariableRateSupported");
            this.isOffloadVariableRateSupported = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
        } else {
            this.isOffloadVariableRateSupported = Boolean.FALSE;
        }
        return this.isOffloadVariableRateSupported.booleanValue();
    }

    private static AudioOffloadSupport getOffloadedPlaybackSupportV29(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes, boolean z) {
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        return new AudioOffloadSupport.Builder().setIsFormatSupported(true).setIsSpeedChangeSupported(z).build();
    }

    private static AudioOffloadSupport getOffloadedPlaybackSupportV31(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes, boolean z) {
        int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        if (playbackOffloadSupport == 0) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        return new AudioOffloadSupport.Builder().setIsFormatSupported(true).setIsGaplessSupported(Build.VERSION.SDK_INT > 32 && playbackOffloadSupport == 2).setIsSpeedChangeSupported(z).build();
    }

    private static AudioOffloadSupport getOffloadedPlaybackSupportV33(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes, boolean z) {
        int directPlaybackSupport = AudioManager.getDirectPlaybackSupport(audioFormat, audioAttributes);
        if ((directPlaybackSupport & 1) == 0) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        return new AudioOffloadSupport.Builder().setIsFormatSupported(true).setIsGaplessSupported((directPlaybackSupport & 3) == 3).setIsSpeedChangeSupported(z).build();
    }
}
