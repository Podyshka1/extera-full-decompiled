package org.webrtc.audio;

import org.webrtc.audio.AudioDeviceModule;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public class LegacyAudioDeviceModule implements AudioDeviceModule {
    @Override // org.webrtc.audio.AudioDeviceModule
    public long getNativeAudioDeviceModulePointer() {
        return 0L;
    }

    @Override // org.webrtc.audio.AudioDeviceModule
    public void release() {
    }

    @Override // org.webrtc.audio.AudioDeviceModule
    public /* synthetic */ boolean setNoiseSuppressorEnabled(boolean z) {
        return AudioDeviceModule.CC.$default$setNoiseSuppressorEnabled(this, z);
    }

    @Override // org.webrtc.audio.AudioDeviceModule
    public /* synthetic */ boolean setPreferredMicrophoneFieldDimension(float f) {
        return AudioDeviceModule.CC.$default$setPreferredMicrophoneFieldDimension(this, f);
    }

    @Override // org.webrtc.audio.AudioDeviceModule
    public void setSpeakerMute(boolean z) {
        org.webrtc.voiceengine.WebRtcAudioTrack.setSpeakerMute(z);
    }

    @Override // org.webrtc.audio.AudioDeviceModule
    public void setMicrophoneMute(boolean z) {
        org.webrtc.voiceengine.WebRtcAudioRecord.setMicrophoneMute(z);
    }
}
