package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
public interface RTCStatsCollectorCallback {
    @CalledByNative
    void onStatsDelivered(RTCStatsReport rTCStatsReport);
}
