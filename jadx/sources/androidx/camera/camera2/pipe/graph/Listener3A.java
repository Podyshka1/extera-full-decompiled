package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.graph.GraphLoop;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Listener3A implements Request.Listener, GraphLoop.Listener {
    private final CopyOnWriteArrayList listeners = new CopyOnWriteArrayList();

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
    public /* synthetic */ void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public /* synthetic */ void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Iterator it = this.listeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            ((Result3AStateListener) it.next()).mo1914onRequestSequenceCreatedDThHKJ0(requestMetadata.mo1442getRequestNumbermy6kx4g());
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata captureResult) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(captureResult, "captureResult");
        m1911updateListenersvoPkFw(requestMetadata.mo1442getRequestNumbermy6kx4g(), captureResult);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo totalCaptureResult) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
        m1911updateListenersvoPkFw(requestMetadata.mo1442getRequestNumbermy6kx4g(), totalCaptureResult.getMetadata());
    }

    public final void addListener(Result3AStateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    public final void removeListener(Result3AStateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }

    /* JADX INFO: renamed from: updateListeners-voP-kFw, reason: not valid java name */
    private final void m1911updateListenersvoPkFw(long j, FrameMetadata frameMetadata) {
        Iterator it = this.listeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Result3AStateListener result3AStateListener = (Result3AStateListener) it.next();
            if (result3AStateListener.mo1915updatevoPkFw(j, frameMetadata)) {
                this.listeners.remove(result3AStateListener);
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
        Iterator it = this.listeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            ((Result3AStateListener) it.next()).onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        Iterator it = this.listeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            ((Result3AStateListener) it.next()).onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        Iterator it = this.listeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            ((Result3AStateListener) it.next()).onStopRepeating();
        }
    }
}
