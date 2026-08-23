package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface AddIceObserver {
    @CalledByNative
    void onAddFailure(String str);

    @CalledByNative
    void onAddSuccess();
}
