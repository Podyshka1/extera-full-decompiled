package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ/\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ'\u0010$\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J'\u0010)\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b/\u0010+J\u0017\u00100\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b0\u0010+J'\u00105\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J'\u00108\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u00106\u001a\u00020\u001bH\u0016¢\u0006\u0004\b7\u0010\u001eR \u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0005098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R<\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050<2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050<8\u0007@BX\u0086\u000e¢\u0006\f\n\u0004\b>\u0010;\u001a\u0004\b?\u0010@¨\u0006A"}, d2 = {"Landroidx/camera/camera2/impl/ComboRequestListener;", "Landroidx/camera/camera2/pipe/Request$Listener;", "<init>", "()V", "listener", "Ljava/util/concurrent/Executor;", "executor", _UrlKt.FRAGMENT_ENCODE_SET, "addListener", "(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V", "removeListener", "(Landroidx/camera/camera2/pipe/Request$Listener;)V", "Landroidx/camera/camera2/pipe/Request;", "request", "onAborted", "(Landroidx/camera/camera2/pipe/Request;)V", "Landroidx/camera/camera2/pipe/RequestMetadata;", "requestMetadata", "Landroidx/camera/camera2/pipe/FrameNumber;", "frameNumber", "Landroidx/camera/camera2/pipe/StreamId;", "streamId", "Landroidx/camera/camera2/pipe/OutputId;", "outputId", "onBufferLost-iiEMlm4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V", "onBufferLost", "Landroidx/camera/camera2/pipe/FrameInfo;", "result", "onComplete-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V", "onComplete", "Landroidx/camera/camera2/pipe/RequestFailure;", "requestFailure", "onFailed-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V", "onFailed", "Landroidx/camera/camera2/pipe/FrameMetadata;", "captureResult", "onPartialCaptureResult-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V", "onPartialCaptureResult", "onRequestSequenceAborted", "(Landroidx/camera/camera2/pipe/RequestMetadata;)V", "onRequestSequenceCompleted-RuT0dZU", "(Landroidx/camera/camera2/pipe/RequestMetadata;J)V", "onRequestSequenceCompleted", "onRequestSequenceCreated", "onRequestSequenceSubmitted", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "timestamp", "onStarted-uGKBvU4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V", "onStarted", "totalCaptureResult", "onTotalCaptureResult-CcXjc1I", "onTotalCaptureResult", _UrlKt.FRAGMENT_ENCODE_SET, "requestListeners", "Ljava/util/Map;", _UrlKt.FRAGMENT_ENCODE_SET, "value", "listeners", "getListeners", "()Ljava/util/Map;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nComboRequestListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComboRequestListener.kt\nandroidx/camera/camera2/impl/ComboRequestListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,168:1\n1#2:169\n216#3,2:170\n216#3,2:172\n216#3,2:174\n216#3,2:176\n216#3,2:178\n216#3,2:180\n216#3,2:182\n216#3,2:184\n216#3,2:186\n216#3,2:188\n216#3,2:190\n*S KotlinDebug\n*F\n+ 1 ComboRequestListener.kt\nandroidx/camera/camera2/impl/ComboRequestListener\n*L\n64#1:170,2\n75#1:172,2\n87#1:174,2\n97#1:176,2\n107#1:178,2\n115#1:180,2\n124#1:182,2\n130#1:184,2\n136#1:186,2\n146#1:188,2\n156#1:190,2\n*E\n"})
public final class ComboRequestListener implements Request.Listener {
    private final Map<Request.Listener, Executor> requestListeners = new LinkedHashMap();
    private volatile Map<Request.Listener, ? extends Executor> listeners = MapsKt.emptyMap();

    public final void addListener(Request.Listener listener, Executor executor) {
        if (this.listeners.containsKey(listener)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline0.m826m(listener, " was already registered!");
            return;
        }
        synchronized (this.requestListeners) {
            this.requestListeners.put(listener, executor);
            this.listeners = MapsKt.toMap(this.requestListeners);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void removeListener(Request.Listener listener) {
        synchronized (this.requestListeners) {
            this.requestListeners.remove(listener);
            this.listeners = MapsKt.toMap(this.requestListeners);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(final Request request) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    key.onAborted(request);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public void mo1029onBufferLostiiEMlm4(final RequestMetadata requestMetadata, final long frameNumber, final int streamId, final int outputId) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo1029onBufferLostiiEMlm4(requestMetadata, frameNumber, streamId, outputId);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo994onCompleteCcXjc1I(final RequestMetadata requestMetadata, final long frameNumber, final FrameInfo result) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo994onCompleteCcXjc1I(requestMetadata, frameNumber, result);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo995onFailedCcXjc1I(final RequestMetadata requestMetadata, final long frameNumber, final RequestFailure requestFailure) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo995onFailedCcXjc1I(requestMetadata, frameNumber, requestFailure);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public void mo1030onPartialCaptureResultCcXjc1I(final RequestMetadata requestMetadata, final long frameNumber, final FrameMetadata captureResult) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo1030onPartialCaptureResultCcXjc1I(requestMetadata, frameNumber, captureResult);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceAborted(final RequestMetadata requestMetadata) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    key.onRequestSequenceAborted(requestMetadata);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
    public void mo1032onRequestSequenceCompletedRuT0dZU(final RequestMetadata requestMetadata, final long frameNumber) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo1032onRequestSequenceCompletedRuT0dZU(requestMetadata, frameNumber);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceCreated(final RequestMetadata requestMetadata) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    key.onRequestSequenceCreated(requestMetadata);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceSubmitted(final RequestMetadata requestMetadata) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    key.onRequestSequenceSubmitted(requestMetadata);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo1033onStarteduGKBvU4(final RequestMetadata requestMetadata, final long frameNumber, final long timestamp) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo1033onStarteduGKBvU4(requestMetadata, frameNumber, timestamp);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo996onTotalCaptureResultCcXjc1I(final RequestMetadata requestMetadata, final long frameNumber, final FrameInfo totalCaptureResult) {
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo996onTotalCaptureResultCcXjc1I(requestMetadata, frameNumber, totalCaptureResult);
                }
            });
        }
    }
}
