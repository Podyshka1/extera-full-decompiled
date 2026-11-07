package org.webrtc;

/* JADX INFO: loaded from: classes8.dex */
public interface StatsObserver {
    @CalledByNative
    void onComplete(StatsReport[] statsReportArr);
}
