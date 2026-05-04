package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface RefCounted {
    @CalledByNative
    void release();

    @CalledByNative
    void retain();
}
