package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface VideoSink {
    @CalledByNative
    void onFrame(VideoFrame videoFrame);

    void setParentSink(VideoSink videoSink);

    /* JADX INFO: renamed from: org.webrtc.VideoSink$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$setParentSink(VideoSink videoSink, VideoSink videoSink2) {
        }
    }
}
