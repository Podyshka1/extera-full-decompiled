package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
public interface StatsObserver {
    @CalledByNative
    void onComplete(StatsReport[] statsReportArr);
}
