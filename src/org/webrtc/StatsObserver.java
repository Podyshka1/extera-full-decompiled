package org.webrtc;

/* JADX INFO: loaded from: classes4.dex */
public interface StatsObserver {
    @CalledByNative
    void onComplete(StatsReport[] statsReportArr);
}
