package org.webrtc;

/* JADX INFO: loaded from: classes4.dex */
public interface RefCounted {
    @CalledByNative
    void release();

    @CalledByNative
    void retain();
}
