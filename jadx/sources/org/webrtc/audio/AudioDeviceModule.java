package org.webrtc.audio;

/* JADX INFO: loaded from: classes7.dex */
public interface AudioDeviceModule {
    long getNativeAudioDeviceModulePointer();

    void release();

    void setMicrophoneMute(boolean z);

    boolean setNoiseSuppressorEnabled(boolean z);

    boolean setPreferredMicrophoneFieldDimension(float f);

    void setSpeakerMute(boolean z);

    /* JADX INFO: renamed from: org.webrtc.audio.AudioDeviceModule$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static boolean $default$setNoiseSuppressorEnabled(AudioDeviceModule audioDeviceModule, boolean z) {
            return false;
        }

        public static boolean $default$setPreferredMicrophoneFieldDimension(AudioDeviceModule audioDeviceModule, float f) {
            return false;
        }
    }
}
