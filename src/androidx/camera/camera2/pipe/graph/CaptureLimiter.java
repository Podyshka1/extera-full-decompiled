package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.graph.GraphLoop;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public final class CaptureLimiter implements Request.Listener, GraphLoop.Listener {
    private GraphLoop _graphLoop;
    private final AtomicLong frameCount;
    private final long requestsUntilActive;

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

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public /* synthetic */ void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        Request.Listener.CC.m1746$default$onTotalCaptureResultCcXjc1I(this, requestMetadata, j, frameInfo);
    }

    public CaptureLimiter(long j) {
        this.requestsUntilActive = j;
        if (j <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this.frameCount = AtomicFU.atomic(0L);
    }

    public final GraphLoop getGraphLoop() {
        GraphLoop graphLoop = this._graphLoop;
        Intrinsics.checkNotNull(graphLoop);
        return graphLoop;
    }

    public final void setGraphLoop(GraphLoop value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this._graphLoop != null) {
            throw new IllegalStateException("GraphLoop has already been set!");
        }
        this._graphLoop = value;
        value.setCaptureProcessingEnabled(false);
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Capture processing has been disabled for " + value + " until " + this.requestsUntilActive + " frames have been completed.");
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo result) {
        long value;
        long j2;
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(result, "result");
        AtomicLong atomicLong = this.frameCount;
        do {
            value = atomicLong.getValue();
            j2 = value != -1 ? 1 + value : -1L;
        } while (!atomicLong.compareAndSet(value, j2));
        if (j2 == this.requestsUntilActive) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Capture processing is now enabled for " + this._graphLoop + " after " + j2 + " frames.");
            }
            getGraphLoop().setCaptureProcessingEnabled(true);
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        long value;
        AtomicLong atomicLong = this.frameCount;
        do {
            value = atomicLong.getValue();
        } while (!atomicLong.compareAndSet(value, value != -1 ? 0L : -1L));
        getGraphLoop().setCaptureProcessingEnabled(false);
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Capture processing has been disabled for " + getGraphLoop() + " until " + this.requestsUntilActive + " frames have been completed.");
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        this.frameCount.setValue(-1L);
        getGraphLoop().setCaptureProcessingEnabled(false);
    }
}
