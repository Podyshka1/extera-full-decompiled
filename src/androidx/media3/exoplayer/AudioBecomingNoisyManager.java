package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;

/* JADX INFO: loaded from: classes4.dex */
final class AudioBecomingNoisyManager {
    private final HandlerWrapper backgroundHandler;
    private final Context context;
    private boolean isEnabled;
    private final AudioBecomingNoisyReceiver receiver;

    public interface EventListener {
        void onAudioBecomingNoisy();
    }

    public AudioBecomingNoisyManager(Context context, Looper looper, Looper looper2, EventListener eventListener, Clock clock) {
        this.context = context.getApplicationContext();
        this.backgroundHandler = clock.createHandler(looper, null);
        this.receiver = new AudioBecomingNoisyReceiver(clock.createHandler(looper2, null), eventListener);
    }

    @SuppressLint({"UnprotectedReceiver"})
    public void setEnabled(boolean z) {
        if (z == this.isEnabled) {
            return;
        }
        HandlerWrapper handlerWrapper = this.backgroundHandler;
        if (z) {
            handlerWrapper.post(new Runnable() { // from class: androidx.media3.exoplayer.AudioBecomingNoisyManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AudioBecomingNoisyManager audioBecomingNoisyManager = this.f$0;
                    audioBecomingNoisyManager.context.registerReceiver(audioBecomingNoisyManager.receiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
                }
            });
            this.isEnabled = true;
        } else {
            handlerWrapper.post(new Runnable() { // from class: androidx.media3.exoplayer.AudioBecomingNoisyManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AudioBecomingNoisyManager audioBecomingNoisyManager = this.f$0;
                    audioBecomingNoisyManager.context.unregisterReceiver(audioBecomingNoisyManager.receiver);
                }
            });
            this.isEnabled = false;
        }
    }

    public final class AudioBecomingNoisyReceiver extends BroadcastReceiver {
        private final HandlerWrapper eventHandler;
        private final EventListener listener;

        public AudioBecomingNoisyReceiver(HandlerWrapper handlerWrapper, EventListener eventListener) {
            this.eventHandler = handlerWrapper;
            this.listener = eventListener;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.callListenerIfEnabled();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void callListenerIfEnabled() {
            if (AudioBecomingNoisyManager.this.isEnabled) {
                this.listener.onAudioBecomingNoisy();
            }
        }
    }
}
