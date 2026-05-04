package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.Logger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class ResultListener implements Request.Listener {
    private final Function1 checker;
    private final CompletableDeferred completeSignal;
    private final long timeLimitNs;
    private volatile Long timestampOfFirstUpdateNs;

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onAborted(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
    public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public /* synthetic */ void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public /* synthetic */ void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        Request.Listener.CC.m1740$default$onCompleteCcXjc1I(this, requestMetadata, j, frameInfo);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public /* synthetic */ void mo1390onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        Request.Listener.CC.m1741$default$onFailedCcXjc1I(this, requestMetadata, j, requestFailure);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public /* synthetic */ void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
        Request.Listener.CC.m1742$default$onPartialCaptureResultCcXjc1I(this, requestMetadata, j, frameMetadata);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
    public /* synthetic */ void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
    public /* synthetic */ void mo1393onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public /* synthetic */ void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    public ResultListener(long j, Function1 checker) {
        Intrinsics.checkNotNullParameter(checker, "checker");
        this.timeLimitNs = j;
        this.checker = checker;
        this.completeSignal = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    public final Deferred getResult() {
        return this.completeSignal;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo totalCaptureResult) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
        if (this.completeSignal.isCompleted() || this.completeSignal.isCancelled()) {
            return;
        }
        FrameMetadata metadata = totalCaptureResult.getMetadata();
        CaptureResult.Key SENSOR_TIMESTAMP = CaptureResult.SENSOR_TIMESTAMP;
        Intrinsics.checkNotNullExpressionValue(SENSOR_TIMESTAMP, "SENSOR_TIMESTAMP");
        Long l = (Long) metadata.get(SENSOR_TIMESTAMP);
        if (l != null && this.timestampOfFirstUpdateNs == null) {
            this.timestampOfFirstUpdateNs = l;
        }
        Long l2 = this.timestampOfFirstUpdateNs;
        if (this.timeLimitNs != 0 && l2 != null && l != null && l.longValue() - l2.longValue() > this.timeLimitNs) {
            this.completeSignal.complete(null);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Wait for capture result timeout, current: " + l.longValue() + " first: " + l2.longValue());
                return;
            }
            return;
        }
        if (((Boolean) this.checker.invoke(totalCaptureResult)).booleanValue()) {
            this.completeSignal.complete(totalCaptureResult);
        }
    }
}
