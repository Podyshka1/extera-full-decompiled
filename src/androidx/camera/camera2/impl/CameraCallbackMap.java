package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.adapter.CaptureResultAdapter;
import androidx.camera.camera2.compat.Api24Compat;
import androidx.camera.camera2.compat.Api34Compat;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.TagBundle;
import com.sun.jna.Callback;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0003\b\u0007\u0018\u0000 I2\u00020\u0001:\u0001IB\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u001b\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010 \u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010%\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010(\u001a\u00020\u00102\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J'\u0010.\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b/\u00100J\u001f\u00103\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b1\u00102J'\u00108\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J\u001f\u0010:\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u0005H\u0016¢\u0006\u0004\b:\u0010;J'\u0010>\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u00105\u001a\u00020<H\u0016¢\u0006\u0004\b=\u00107R \u0010@\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u000e0?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u001b\u0010F\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\"\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u000e0G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010A¨\u0006J"}, d2 = {"Landroidx/camera/camera2/impl/CameraCallbackMap;", "Landroidx/camera/camera2/pipe/Request$Listener;", "<init>", "()V", "Landroidx/camera/camera2/pipe/RequestMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "getCaptureConfigId", "(Landroidx/camera/camera2/pipe/RequestMetadata;)I", "requestMetadata", "Landroid/hardware/camera2/CameraCaptureSession;", "getCameraCaptureSession", "(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;", "Landroidx/camera/core/impl/CameraCaptureCallback;", Callback.METHOD_NAME, "Ljava/util/concurrent/Executor;", "executor", _UrlKt.FRAGMENT_ENCODE_SET, "addCaptureCallback", "(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;)V", "Landroidx/camera/camera2/pipe/FrameNumber;", "frameNumber", "Landroidx/camera/camera2/pipe/StreamId;", "streamId", "Landroidx/camera/camera2/pipe/OutputId;", "outputId", "onBufferLost-iiEMlm4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V", "onBufferLost", "Landroidx/camera/camera2/pipe/FrameInfo;", "result", "onComplete-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V", "onComplete", "Landroidx/camera/camera2/pipe/RequestFailure;", "requestFailure", "onFailed-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V", "onFailed", "Landroidx/camera/camera2/pipe/Request;", "request", "onAborted", "(Landroidx/camera/camera2/pipe/Request;)V", "Landroidx/camera/camera2/pipe/FrameMetadata;", "captureResult", "onPartialCaptureResult-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V", "onPartialCaptureResult", "onRequestSequenceAborted", "(Landroidx/camera/camera2/pipe/RequestMetadata;)V", "onRequestSequenceCompleted-RuT0dZU", "(Landroidx/camera/camera2/pipe/RequestMetadata;J)V", "onRequestSequenceCompleted", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "timestamp", "onStarted-uGKBvU4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V", "onStarted", "progress", "onCaptureProgress", "(Landroidx/camera/camera2/pipe/RequestMetadata;I)V", "Landroidx/camera/camera2/pipe/SensorTimestamp;", "onReadoutStarted-mP9r-9w", "onReadoutStarted", _UrlKt.FRAGMENT_ENCODE_SET, "callbackMap", "Ljava/util/Map;", "rejectOperationCameraCaptureSession$delegate", "Lkotlin/Lazy;", "getRejectOperationCameraCaptureSession", "()Landroid/hardware/camera2/CameraCaptureSession;", "rejectOperationCameraCaptureSession", _UrlKt.FRAGMENT_ENCODE_SET, "callbacks", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraCallbackMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraCallbackMap.kt\nandroidx/camera/camera2/impl/CameraCallbackMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n1#2:345\n*E\n"})
public final class CameraCallbackMap implements Request.Listener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Map<CameraCaptureCallback, Executor> callbackMap = new LinkedHashMap();

    /* JADX INFO: renamed from: rejectOperationCameraCaptureSession$delegate, reason: from kotlin metadata */
    private final Lazy rejectOperationCameraCaptureSession = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CameraCallbackMap.$r8$lambda$Wqwind4PXz1dS9HICx1XpdO2JjQ();
        }
    });
    private volatile Map<CameraCaptureCallback, ? extends Executor> callbacks = MapsKt.emptyMap();

    private final CameraCaptureSession getRejectOperationCameraCaptureSession() {
        return (CameraCaptureSession) this.rejectOperationCameraCaptureSession.getValue();
    }

    public static RejectOperationCameraCaptureSession $r8$lambda$Wqwind4PXz1dS9HICx1XpdO2JjQ() {
        return new RejectOperationCameraCaptureSession();
    }

    public final void addCaptureCallback(CameraCaptureCallback callback, Executor executor) {
        if (this.callbacks.containsKey(callback)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline0.m826m(callback, " was already registered!");
            return;
        }
        synchronized (this.callbackMap) {
            this.callbackMap.put(callback, executor);
            this.callbacks = MapsKt.toMap(this.callbackMap);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4, reason: not valid java name */
    public void mo1029onBufferLostiiEMlm4(RequestMetadata requestMetadata, final long frameNumber, int streamId, int outputId) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final Surface surface = requestMetadata.getStreams().get(StreamId.m1382boximpl(streamId));
                if (cameraCaptureSession != null && captureRequest != null && surface != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            Api24Compat.onCaptureBufferLost(((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback(), cameraCaptureSession, captureRequest, surface, frameNumber);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo994onCompleteCcXjc1I(final RequestMetadata requestMetadata, long frameNumber, FrameInfo result) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final TotalCaptureResult totalCaptureResult = (TotalCaptureResult) result.unwrapAs(Reflection.getOrCreateKotlinClass(TotalCaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && totalCaptureResult != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback().onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
                        }
                    });
                }
            } else {
                final CaptureResultAdapter captureResultAdapter = new CaptureResultAdapter(requestMetadata, frameNumber, result, null);
                value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        key.onCaptureCompleted(this.getCaptureConfigId(requestMetadata), captureResultAdapter);
                    }
                });
            }
        }
    }

    private final int getCaptureConfigId(RequestMetadata requestMetadata) {
        TagBundle tagBundle = (TagBundle) requestMetadata.get(TagsKt.getCAMERAX_TAG_BUNDLE());
        Object tag = tagBundle != null ? tagBundle.getTag("CAPTURE_CONFIG_ID_KEY") : null;
        Integer num = tag instanceof Integer ? (Integer) tag : null;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo995onFailedCcXjc1I(final RequestMetadata requestMetadata, long frameNumber, RequestFailure requestFailure) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final CaptureFailure captureFailure = (CaptureFailure) requestFailure.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureFailure.class));
                if (cameraCaptureSession != null && captureRequest != null && captureFailure != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback().onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
                        }
                    });
                }
            } else {
                final CameraCaptureFailure cameraCaptureFailure = new CameraCaptureFailure(CameraCaptureFailure.Reason.ERROR);
                value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        key.onCaptureFailed(this.getCaptureConfigId(requestMetadata), cameraCaptureFailure);
                    }
                });
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(Request request) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            Object obj = request.getExtras().get(TagsKt.getCAMERAX_TAG_BUNDLE());
            TagBundle tagBundle = obj instanceof TagBundle ? (TagBundle) obj : null;
            Object tag = tagBundle != null ? tagBundle.getTag("CAPTURE_CONFIG_ID_KEY") : null;
            Integer num = tag instanceof Integer ? (Integer) tag : null;
            final int iIntValue = num != null ? num.intValue() : -1;
            value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    key.onCaptureCancelled(iIntValue);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I, reason: not valid java name */
    public void mo1030onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameMetadata captureResult) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final CaptureResult captureResult2 = (CaptureResult) captureResult.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult2 != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback().onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult2);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceAborted(final RequestMetadata requestMetadata) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback().onCaptureSequenceAborted(cameraCaptureSession, -1);
                        }
                    });
                }
            } else {
                value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        key.onCaptureCancelled(this.getCaptureConfigId(requestMetadata));
                    }
                });
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU, reason: not valid java name */
    public void mo1032onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, final long frameNumber) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback().onCaptureSequenceCompleted(cameraCaptureSession, -1, frameNumber);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4, reason: not valid java name */
    public void mo1033onStarteduGKBvU4(final RequestMetadata requestMetadata, final long frameNumber, final long timestamp) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback().onCaptureStarted(cameraCaptureSession, captureRequest, timestamp, frameNumber);
                        }
                    });
                }
            } else {
                value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        key.onCaptureStarted(this.getCaptureConfigId(requestMetadata));
                    }
                });
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onCaptureProgress(final RequestMetadata requestMetadata, final int progress) {
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final CaptureResult captureResult = (CaptureResult) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback().onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
                        }
                    });
                }
            } else {
                value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        key.onCaptureProcessProgressed(this.getCaptureConfigId(requestMetadata), progress);
                    }
                });
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w, reason: not valid java name */
    public void mo1031onReadoutStartedmP9r9w(RequestMetadata requestMetadata, final long frameNumber, final long timestamp) {
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    value.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            Api34Compat.onReadoutStarted(((CameraUseCaseAdapter.CaptureCallbackContainer) key).getCaptureCallback(), cameraCaptureSession, captureRequest, timestamp, frameNumber);
                        }
                    });
                }
            }
        }
    }

    private final CameraCaptureSession getCameraCaptureSession(RequestMetadata requestMetadata) {
        CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
        if (cameraCaptureSession != null) {
            return cameraCaptureSession;
        }
        if (Build.VERSION.SDK_INT < 31 || CameraCallbackMap$$ExternalSyntheticApiModelOutline1.m28m(requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m27m()))) == null) {
            return null;
        }
        return getRejectOperationCameraCaptureSession();
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "createFor", "Landroidx/camera/camera2/impl/CameraCallbackMap;", "callbacks", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/CameraCaptureCallback;", "executor", "Ljava/util/concurrent/Executor;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraCallbackMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraCallbackMap.kt\nandroidx/camera/camera2/impl/CameraCallbackMap$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n1869#2,2:345\n*S KotlinDebug\n*F\n+ 1 CameraCallbackMap.kt\nandroidx/camera/camera2/impl/CameraCallbackMap$Companion\n*L\n339#1:345,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CameraCallbackMap createFor(Collection<? extends CameraCaptureCallback> callbacks, Executor executor) {
            CameraCallbackMap cameraCallbackMap = new CameraCallbackMap();
            Iterator<T> it = callbacks.iterator();
            while (it.hasNext()) {
                cameraCallbackMap.addCaptureCallback((CameraCaptureCallback) it.next(), executor);
            }
            return cameraCallbackMap;
        }
    }
}
