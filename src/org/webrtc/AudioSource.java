package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public class AudioSource extends MediaSource {
    public AudioSource(long j) {
        super(j);
    }

    long getNativeAudioSource() {
        return getNativeMediaSource();
    }
}
