package org.webrtc;

/* JADX INFO: loaded from: classes8.dex */
public interface RefCounted {
    @CalledByNative
    void release();

    @CalledByNative
    void retain();
}
