package org.webrtc.audio;

import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;
import android.media.audiofx.NoiseSuppressor;
import java.util.UUID;
import org.telegram.messenger.BuildConfig;
import org.webrtc.Logging;

/* JADX INFO: loaded from: classes7.dex */
class WebRtcAudioEffects {
    private static final UUID AOSP_ACOUSTIC_ECHO_CANCELER = UUID.fromString("bb392ec0-8d4d-11e0-a896-0002a5d5c51b");
    private static final UUID AOSP_NOISE_SUPPRESSOR = UUID.fromString("c06c8400-8e06-11e0-9cb6-0002a5d5c51b");
    private static final boolean DEBUG = false;
    private static final String TAG = "WebRtcAudioEffectsExternal";
    private static AudioEffect.Descriptor[] cachedEffects;
    private AcousticEchoCanceler aec;

    /* JADX INFO: renamed from: ns */
    private NoiseSuppressor f2268ns;
    private boolean shouldEnableAec;
    private boolean shouldEnableNs;

    public static boolean isAcousticEchoCancelerSupported() {
        return isEffectTypeAvailable(AudioEffect.EFFECT_TYPE_AEC, AOSP_ACOUSTIC_ECHO_CANCELER);
    }

    public static boolean isNoiseSuppressorSupported() {
        return isEffectTypeAvailable(AudioEffect.EFFECT_TYPE_NS, AOSP_NOISE_SUPPRESSOR);
    }

    public WebRtcAudioEffects() {
        Logging.m1354d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
    }

    public boolean setAEC(boolean z) {
        Logging.m1354d(TAG, "setAEC(" + z + ")");
        if (!isAcousticEchoCancelerSupported()) {
            Logging.m1358w(TAG, "Platform AEC is not supported");
            this.shouldEnableAec = false;
            return false;
        }
        if (this.aec != null && z != this.shouldEnableAec) {
            Logging.m1355e(TAG, "Platform AEC state can't be modified while recording");
            return false;
        }
        this.shouldEnableAec = z;
        return true;
    }

    public boolean setNS(boolean z) {
        Logging.m1354d(TAG, "setNS(" + z + ")");
        if (!isNoiseSuppressorSupported()) {
            Logging.m1358w(TAG, "Platform NS is not supported");
            this.shouldEnableNs = false;
            return false;
        }
        if (this.f2268ns != null && z != this.shouldEnableNs) {
            Logging.m1355e(TAG, "Platform NS state can't be modified while recording");
            return false;
        }
        this.shouldEnableNs = z;
        return true;
    }

    public boolean toggleNS(boolean z) {
        if (this.f2268ns == null) {
            Logging.m1355e(TAG, "Attempting to enable or disable nonexistent NoiseSuppressor.");
            return false;
        }
        Logging.m1354d(TAG, "toggleNS(" + z + ")");
        return this.f2268ns.setEnabled(z) == 0;
    }

    public void enable(int i) {
        Logging.m1354d(TAG, "enable(audioSession=" + i + ")");
        boolean z = false;
        assertTrue(this.aec == null);
        assertTrue(this.f2268ns == null);
        if (isAcousticEchoCancelerSupported()) {
            AcousticEchoCanceler acousticEchoCancelerCreate = AcousticEchoCanceler.create(i);
            this.aec = acousticEchoCancelerCreate;
            if (acousticEchoCancelerCreate != null) {
                boolean enabled = acousticEchoCancelerCreate.getEnabled();
                boolean z2 = this.shouldEnableAec && isAcousticEchoCancelerSupported();
                if (this.aec.setEnabled(z2) != 0) {
                    Logging.m1355e(TAG, "Failed to set the AcousticEchoCanceler state");
                }
                StringBuilder sb = new StringBuilder();
                sb.append("AcousticEchoCanceler: was ");
                sb.append(enabled ? "enabled" : "disabled");
                sb.append(", enable: ");
                sb.append(z2);
                sb.append(", is now: ");
                sb.append(this.aec.getEnabled() ? "enabled" : "disabled");
                Logging.m1354d(TAG, sb.toString());
            } else {
                Logging.m1355e(TAG, "Failed to create the AcousticEchoCanceler instance");
            }
        }
        if (isNoiseSuppressorSupported()) {
            NoiseSuppressor noiseSuppressorCreate = NoiseSuppressor.create(i);
            this.f2268ns = noiseSuppressorCreate;
            if (noiseSuppressorCreate != null) {
                boolean enabled2 = noiseSuppressorCreate.getEnabled();
                if (this.shouldEnableNs && isNoiseSuppressorSupported()) {
                    z = true;
                }
                if (this.f2268ns.setEnabled(z) != 0) {
                    Logging.m1355e(TAG, "Failed to set the NoiseSuppressor state");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("NoiseSuppressor: was ");
                sb2.append(enabled2 ? "enabled" : "disabled");
                sb2.append(", enable: ");
                sb2.append(z);
                sb2.append(", is now: ");
                sb2.append(this.f2268ns.getEnabled() ? "enabled" : "disabled");
                Logging.m1354d(TAG, sb2.toString());
                return;
            }
            Logging.m1355e(TAG, "Failed to create the NoiseSuppressor instance");
        }
    }

    public void release() {
        Logging.m1354d(TAG, BuildConfig.BUILD_TYPE);
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.aec = null;
        }
        NoiseSuppressor noiseSuppressor = this.f2268ns;
        if (noiseSuppressor != null) {
            noiseSuppressor.release();
            this.f2268ns = null;
        }
    }

    private boolean effectTypeIsVoIP(UUID uuid) {
        if (AudioEffect.EFFECT_TYPE_AEC.equals(uuid) && isAcousticEchoCancelerSupported()) {
            return true;
        }
        return AudioEffect.EFFECT_TYPE_NS.equals(uuid) && isNoiseSuppressorSupported();
    }

    private static void assertTrue(boolean z) {
        if (!z) {
            throw new AssertionError("Expected condition to be true");
        }
    }

    private static AudioEffect.Descriptor[] getAvailableEffects() {
        AudioEffect.Descriptor[] descriptorArr = cachedEffects;
        if (descriptorArr != null) {
            return descriptorArr;
        }
        AudioEffect.Descriptor[] descriptorArrQueryEffects = AudioEffect.queryEffects();
        cachedEffects = descriptorArrQueryEffects;
        return descriptorArrQueryEffects;
    }

    private static boolean isEffectTypeAvailable(UUID uuid, UUID uuid2) {
        AudioEffect.Descriptor[] availableEffects = getAvailableEffects();
        if (availableEffects == null) {
            return false;
        }
        for (AudioEffect.Descriptor descriptor : availableEffects) {
            if (descriptor.type.equals(uuid)) {
                return !r4.uuid.equals(uuid2);
            }
        }
        return false;
    }
}
