package androidx.media3.common.audio;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class AudioFocusRequestCompat {
    private final AudioAttributes audioAttributes;
    private final Handler focusChangeHandler;
    private final int focusGain;
    private final Object frameworkAudioFocusRequest;
    private final AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
    private final boolean pauseOnDuck;

    public AudioFocusRequestCompat(int i, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, AudioAttributes audioAttributes, boolean z) {
        this.focusGain = i;
        this.focusChangeHandler = handler;
        this.audioAttributes = audioAttributes;
        this.pauseOnDuck = z;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            this.onAudioFocusChangeListener = new OnAudioFocusChangeListenerHandlerCompat(onAudioFocusChangeListener, handler);
        } else {
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
        }
        if (i2 >= 26) {
            this.frameworkAudioFocusRequest = AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0.m156m(i).setAudioAttributes(audioAttributes.getAudioAttributesV21().audioAttributes).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        } else {
            this.frameworkAudioFocusRequest = null;
        }
    }

    public int getFocusGain() {
        return this.focusGain;
    }

    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    public boolean willPauseWhenDucked() {
        return this.pauseOnDuck;
    }

    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.onAudioFocusChangeListener;
    }

    public Handler getFocusChangeHandler() {
        return this.focusChangeHandler;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
        return this.focusGain == audioFocusRequestCompat.focusGain && this.pauseOnDuck == audioFocusRequestCompat.pauseOnDuck && Objects.equals(this.onAudioFocusChangeListener, audioFocusRequestCompat.onAudioFocusChangeListener) && Objects.equals(this.focusChangeHandler, audioFocusRequestCompat.focusChangeHandler) && Objects.equals(this.audioAttributes, audioFocusRequestCompat.audioAttributes);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.focusGain), this.onAudioFocusChangeListener, this.focusChangeHandler, this.audioAttributes, Boolean.valueOf(this.pauseOnDuck));
    }

    public AudioFocusRequest getAudioFocusRequest() {
        return AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline1.m157m(Assertions.checkNotNull(this.frameworkAudioFocusRequest));
    }

    public static final class Builder {
        private AudioAttributes audioAttributes;
        private Handler focusChangeHandler;
        private int focusGain;
        private AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        private boolean pauseOnDuck;

        public Builder(int i) {
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.focusGain = i;
        }

        private Builder(AudioFocusRequestCompat audioFocusRequestCompat) {
            this.focusGain = audioFocusRequestCompat.getFocusGain();
            this.onAudioFocusChangeListener = audioFocusRequestCompat.getOnAudioFocusChangeListener();
            this.focusChangeHandler = audioFocusRequestCompat.getFocusChangeHandler();
            this.audioAttributes = audioFocusRequestCompat.getAudioAttributes();
            this.pauseOnDuck = audioFocusRequestCompat.willPauseWhenDucked();
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            Assertions.checkNotNull(onAudioFocusChangeListener);
            Assertions.checkNotNull(handler);
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
            this.focusChangeHandler = handler;
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            Assertions.checkNotNull(audioAttributes);
            this.audioAttributes = audioAttributes;
            return this;
        }

        public Builder setWillPauseWhenDucked(boolean z) {
            this.pauseOnDuck = z;
            return this;
        }

        public AudioFocusRequestCompat build() {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.onAudioFocusChangeListener;
            if (onAudioFocusChangeListener == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Can't build an AudioFocusRequestCompat instance without a listener");
                return null;
            }
            return new AudioFocusRequestCompat(this.focusGain, onAudioFocusChangeListener, (Handler) Assertions.checkNotNull(this.focusChangeHandler), this.audioAttributes, this.pauseOnDuck);
        }
    }

    public static class OnAudioFocusChangeListenerHandlerCompat implements AudioManager.OnAudioFocusChangeListener {
        private final Handler handler;
        private final AudioManager.OnAudioFocusChangeListener listener;

        public OnAudioFocusChangeListenerHandlerCompat(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.listener = onAudioFocusChangeListener;
            this.handler = Util.createHandler(handler.getLooper(), null);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            Util.postOrRun(this.handler, new Runnable() { // from class: androidx.media3.common.audio.AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.listener.onAudioFocusChange(i);
                }
            });
        }
    }
}
