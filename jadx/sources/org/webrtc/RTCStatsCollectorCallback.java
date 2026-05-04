package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface RTCStatsCollectorCallback {
    @CalledByNative
    void onStatsDelivered(RTCStatsReport rTCStatsReport);
}
