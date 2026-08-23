package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;

/* JADX INFO: loaded from: classes3.dex */
public interface Camera2CaptureCallback {
    /* JADX INFO: renamed from: onCaptureCompleted-rmrZIYk, reason: not valid java name */
    void mo1822onCaptureCompletedrmrZIYk(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult, long j);

    /* JADX INFO: renamed from: onCaptureFailed-RuT0dZU, reason: not valid java name */
    void mo1823onCaptureFailedRuT0dZU(CaptureRequest captureRequest, long j);

    void onCaptureProcessProgressed(CaptureRequest captureRequest, int i);

    void onCaptureSequenceAborted(int i);

    void onCaptureSequenceCompleted(int i, long j);

    void onCaptureStarted(CaptureRequest captureRequest, long j, long j2);
}
