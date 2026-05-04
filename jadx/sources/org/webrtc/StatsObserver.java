package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface StatsObserver {
    @CalledByNative
    void onComplete(StatsReport[] statsReportArr);
}
