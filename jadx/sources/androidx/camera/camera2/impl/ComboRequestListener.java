package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ComboRequestListener implements Request.Listener {
    private final Map requestListeners = new LinkedHashMap();
    private volatile Map listeners = MapsKt.emptyMap();

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
    public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
    public /* synthetic */ void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    public final void addListener(Request.Listener listener, Executor executor) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(executor, "executor");
        if (this.listeners.containsKey(listener)) {
            throw new IllegalStateException((listener + " was already registered!").toString());
        }
        synchronized (this.requestListeners) {
            this.requestListeners.put(listener, executor);
            this.listeners = MapsKt.toMap(this.requestListeners);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void removeListener(Request.Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.requestListeners) {
            this.requestListeners.remove(listener);
            this.listeners = MapsKt.toMap(this.requestListeners);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(final Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onAborted(request);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public void mo1388onBufferLostiiEMlm4(final RequestMetadata requestMetadata, final long j, final int i, final int i2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    listener.mo1388onBufferLostiiEMlm4(requestMetadata, j, i, i2);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo1389onCompleteCcXjc1I(final RequestMetadata requestMetadata, final long j, final FrameInfo result) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(result, "result");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    listener.mo1389onCompleteCcXjc1I(requestMetadata, j, result);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo1390onFailedCcXjc1I(final RequestMetadata requestMetadata, final long j, final RequestFailure requestFailure) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(requestFailure, "requestFailure");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    listener.mo1390onFailedCcXjc1I(requestMetadata, j, requestFailure);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public void mo1391onPartialCaptureResultCcXjc1I(final RequestMetadata requestMetadata, final long j, final FrameMetadata captureResult) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(captureResult, "captureResult");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    listener.mo1391onPartialCaptureResultCcXjc1I(requestMetadata, j, captureResult);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceAborted(final RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onRequestSequenceAborted(requestMetadata);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
    public void mo1393onRequestSequenceCompletedRuT0dZU(final RequestMetadata requestMetadata, final long j) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    listener.mo1393onRequestSequenceCompletedRuT0dZU(requestMetadata, j);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceCreated(final RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onRequestSequenceCreated(requestMetadata);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceSubmitted(final RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onRequestSequenceSubmitted(requestMetadata);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo1394onStarteduGKBvU4(final RequestMetadata requestMetadata, final long j, final long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    listener.mo1394onStarteduGKBvU4(requestMetadata, j, j2);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo1395onTotalCaptureResultCcXjc1I(final RequestMetadata requestMetadata, final long j, final FrameInfo totalCaptureResult) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    listener.mo1395onTotalCaptureResultCcXjc1I(requestMetadata, j, totalCaptureResult);
                }
            });
        }
    }
}
