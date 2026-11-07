package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
public class AudioTrack extends MediaStreamTrack {
    private static native void nativeSetVolume(long j, double d);

    public AudioTrack(long j) {
        super(j);
    }

    public void setVolume(double d) {
        nativeSetVolume(getNativeAudioTrack(), d);
    }

    public long getNativeAudioTrack() {
        return getNativeMediaStreamTrack();
    }
}
