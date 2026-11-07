package org.webrtc;

/* JADX INFO: loaded from: classes8.dex */
public interface RTCStatsCollectorCallback {
    @CalledByNative
    void onStatsDelivered(RTCStatsReport rTCStatsReport);
}
