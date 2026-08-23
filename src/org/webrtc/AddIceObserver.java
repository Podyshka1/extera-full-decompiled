package org.webrtc;

/* JADX INFO: loaded from: classes4.dex */
public interface AddIceObserver {
    @CalledByNative
    void onAddFailure(String str);

    @CalledByNative
    void onAddSuccess();
}
