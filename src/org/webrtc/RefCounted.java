package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
public interface RefCounted {
    @CalledByNative
    void release();

    @CalledByNative
    void retain();
}
