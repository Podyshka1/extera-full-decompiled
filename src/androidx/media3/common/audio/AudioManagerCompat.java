package androidx.media3.common.audio;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Looper;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AudioManagerCompat {
    private static Context applicationContext;
    private static AudioManager audioManager;

    public static synchronized AudioManager getAudioManager(Context context) {
        try {
            final Context applicationContext2 = context.getApplicationContext();
            if (applicationContext != applicationContext2) {
                audioManager = null;
            }
            AudioManager audioManager2 = audioManager;
            if (audioManager2 != null) {
                return audioManager2;
            }
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null && looperMyLooper != Looper.getMainLooper()) {
                final ConditionVariable conditionVariable = new ConditionVariable();
                BackgroundExecutor.get().execute(new Runnable() { // from class: androidx.media3.common.audio.AudioManagerCompat$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioManagerCompat.$r8$lambda$1DKwaorNyy5mIYtOpjykiqi6f7A(applicationContext2, conditionVariable);
                    }
                });
                conditionVariable.blockUninterruptible();
                return (AudioManager) Assertions.checkNotNull(audioManager);
            }
            AudioManager audioManager3 = (AudioManager) applicationContext2.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            audioManager = audioManager3;
            return (AudioManager) Assertions.checkNotNull(audioManager3);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static /* synthetic */ void $r8$lambda$1DKwaorNyy5mIYtOpjykiqi6f7A(Context context, ConditionVariable conditionVariable) {
        audioManager = (AudioManager) context.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        conditionVariable.open();
    }

    public static int requestAudioFocus(AudioManager audioManager2, AudioFocusRequestCompat audioFocusRequestCompat) {
        if (Build.VERSION.SDK_INT >= 26) {
            return audioManager2.requestAudioFocus(audioFocusRequestCompat.getAudioFocusRequest());
        }
        return audioManager2.requestAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener(), audioFocusRequestCompat.getAudioAttributes().getStreamType(), audioFocusRequestCompat.getFocusGain());
    }

    public static int abandonAudioFocusRequest(AudioManager audioManager2, AudioFocusRequestCompat audioFocusRequestCompat) {
        if (Build.VERSION.SDK_INT >= 26) {
            return audioManager2.abandonAudioFocusRequest(audioFocusRequestCompat.getAudioFocusRequest());
        }
        return audioManager2.abandonAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener());
    }

    public static int getStreamMaxVolume(AudioManager audioManager2, int i) {
        return audioManager2.getStreamMaxVolume(i);
    }

    public static int getStreamMinVolume(AudioManager audioManager2, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return audioManager2.getStreamMinVolume(i);
        }
        return 0;
    }

    public static int getStreamVolume(AudioManager audioManager2, int i) {
        try {
            return audioManager2.getStreamVolume(i);
        } catch (RuntimeException e) {
            Log.m164w("AudioManagerCompat", "Could not retrieve stream volume for stream type " + i, e);
            return audioManager2.getStreamMaxVolume(i);
        }
    }

    public static boolean isStreamMute(AudioManager audioManager2, int i) {
        return audioManager2.isStreamMute(i);
    }
}
