package org.webrtc.audio;

/* JADX INFO: loaded from: classes4.dex */
public interface AudioDeviceModule {
    long getNativeAudioDeviceModulePointer();

    void release();

    void setMicrophoneMute(boolean z);

    default boolean setNoiseSuppressorEnabled(boolean z) {
        return false;
    }

    default boolean setPreferredMicrophoneFieldDimension(float f) {
        return false;
    }

    void setSpeakerMute(boolean z);
}
