package org.telegram.messenger.voip;

import android.media.AudioManager;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Utilities;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes5.dex */
public class VoipAudioManager {
    private Boolean isSpeakerphoneOn;

    private VoipAudioManager() {
    }

    private static final class InstanceHolder {
        static final VoipAudioManager instance = new VoipAudioManager();

        private InstanceHolder() {
        }
    }

    public static VoipAudioManager get() {
        return InstanceHolder.instance;
    }

    public void setSpeakerphoneOn(final boolean z) {
        this.isSpeakerphoneOn = Boolean.valueOf(z);
        final AudioManager audioManager = getAudioManager();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoipAudioManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                audioManager.setSpeakerphoneOn(z);
            }
        });
    }

    public boolean isSpeakerphoneOn() {
        Boolean bool = this.isSpeakerphoneOn;
        if (bool == null) {
            return getAudioManager().isSpeakerphoneOn();
        }
        return bool.booleanValue();
    }

    public void isBluetoothAndSpeakerOnAsync(final Utilities.Callback2<Boolean, Boolean> callback2) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoipAudioManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$isBluetoothAndSpeakerOnAsync$2(callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isBluetoothAndSpeakerOnAsync$2(final Utilities.Callback2 callback2) {
        AudioManager audioManager = getAudioManager();
        final boolean zIsBluetoothScoOn = audioManager.isBluetoothScoOn();
        final boolean zIsSpeakerphoneOn = audioManager.isSpeakerphoneOn();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoipAudioManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                callback2.run(Boolean.valueOf(zIsBluetoothScoOn), Boolean.valueOf(zIsSpeakerphoneOn));
            }
        });
    }

    private AudioManager getAudioManager() {
        return (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
    }
}
