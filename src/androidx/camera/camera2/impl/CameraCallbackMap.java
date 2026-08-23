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
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraCallbackMap implements Request.Listener {
    public static final Companion Companion = new Companion(null);
    private final Map callbackMap = new LinkedHashMap();
    private final Lazy rejectOperationCameraCaptureSession$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CameraCallbackMap.rejectOperationCameraCaptureSession_delegate$lambda$0();
        }
    });
    private volatile Map callbacks = MapsKt.emptyMap();

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
    public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
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
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public /* synthetic */ void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        Request.Listener.CC.m1746$default$onTotalCaptureResultCcXjc1I(this, requestMetadata, j, frameInfo);
    }

    private final CameraCaptureSession getRejectOperationCameraCaptureSession() {
        return (CameraCaptureSession) this.rejectOperationCameraCaptureSession$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RejectOperationCameraCaptureSession rejectOperationCameraCaptureSession_delegate$lambda$0() {
        return new RejectOperationCameraCaptureSession();
    }

    public final void addCaptureCallback(CameraCaptureCallback callback, Executor executor) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        if (this.callbacks.containsKey(callback)) {
            throw new IllegalStateException((callback + " was already registered!").toString());
        }
        synchronized (this.callbackMap) {
            this.callbackMap.put(callback, executor);
            this.callbacks = MapsKt.toMap(this.callbackMap);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, final long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (Build.VERSION.SDK_INT >= 24 && (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer)) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final Surface surface = (Surface) requestMetadata.getStreams().get(StreamId.m1786boximpl(i));
                if (cameraCaptureSession != null && captureRequest != null && surface != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onBufferLost_iiEMlm4$lambda$0(cameraCaptureCallback, cameraCaptureSession, captureRequest, surface, j);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBufferLost_iiEMlm4$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
        Api24Compat.onCaptureBufferLost(((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback(), cameraCaptureSession, captureRequest, surface, j);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo1389onCompleteCcXjc1I(final RequestMetadata requestMetadata, long j, FrameInfo result) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(result, "result");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final TotalCaptureResult totalCaptureResult = (TotalCaptureResult) result.unwrapAs(Reflection.getOrCreateKotlinClass(TotalCaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && totalCaptureResult != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onComplete_CcXjc1I$lambda$0(cameraCaptureCallback, cameraCaptureSession, captureRequest, totalCaptureResult);
                        }
                    });
                }
            } else {
                final CaptureResultAdapter captureResultAdapter = new CaptureResultAdapter(requestMetadata, j, result, null);
                executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onComplete_CcXjc1I$lambda$1(cameraCaptureCallback, this, requestMetadata, captureResultAdapter);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onComplete_CcXjc1I$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onComplete_CcXjc1I$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, CaptureResultAdapter captureResultAdapter) {
        cameraCaptureCallback.onCaptureCompleted(cameraCallbackMap.getCaptureConfigId(requestMetadata), captureResultAdapter);
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
    public void mo1390onFailedCcXjc1I(final RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(requestFailure, "requestFailure");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final CaptureFailure captureFailure = (CaptureFailure) requestFailure.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureFailure.class));
                if (cameraCaptureSession != null && captureRequest != null && captureFailure != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onFailed_CcXjc1I$lambda$0(cameraCaptureCallback, cameraCaptureSession, captureRequest, captureFailure);
                        }
                    });
                }
            } else {
                final CameraCaptureFailure cameraCaptureFailure = new CameraCaptureFailure(CameraCaptureFailure.Reason.ERROR);
                executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onFailed_CcXjc1I$lambda$1(cameraCaptureCallback, this, requestMetadata, cameraCaptureFailure);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFailed_CcXjc1I$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFailed_CcXjc1I$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, CameraCaptureFailure cameraCaptureFailure) {
        cameraCaptureCallback.onCaptureFailed(cameraCallbackMap.getCaptureConfigId(requestMetadata), cameraCaptureFailure);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            Object obj = request.getExtras().get(TagsKt.getCAMERAX_TAG_BUNDLE());
            TagBundle tagBundle = obj instanceof TagBundle ? (TagBundle) obj : null;
            Object tag = tagBundle != null ? tagBundle.getTag("CAPTURE_CONFIG_ID_KEY") : null;
            Integer num = tag instanceof Integer ? (Integer) tag : null;
            final int iIntValue = num != null ? num.intValue() : -1;
            executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    cameraCaptureCallback.onCaptureCancelled(iIntValue);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata captureResult) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(captureResult, "captureResult");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final CaptureResult captureResult2 = (CaptureResult) captureResult.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult2 != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onPartialCaptureResult_CcXjc1I$lambda$0(cameraCaptureCallback, cameraCaptureSession, captureRequest, captureResult2);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPartialCaptureResult_CcXjc1I$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceAborted(final RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onRequestSequenceAborted$lambda$0(cameraCaptureCallback, cameraCaptureSession);
                        }
                    });
                }
            } else {
                executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onRequestSequenceAborted$lambda$1(cameraCaptureCallback, this, requestMetadata);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRequestSequenceAborted$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureSequenceAborted(cameraCaptureSession, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRequestSequenceAborted$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata) {
        cameraCaptureCallback.onCaptureCancelled(cameraCallbackMap.getCaptureConfigId(requestMetadata));
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
    public void mo1393onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, final long j) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onRequestSequenceCompleted_RuT0dZU$lambda$0(cameraCaptureCallback, cameraCaptureSession, j);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRequestSequenceCompleted_RuT0dZU$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, long j) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureSequenceCompleted(cameraCaptureSession, -1, j);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo1394onStarteduGKBvU4(final RequestMetadata requestMetadata, final long j, final long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onStarted_uGKBvU4$lambda$0(cameraCaptureCallback, cameraCaptureSession, captureRequest, j2, j);
                        }
                    });
                }
            } else {
                executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onStarted_uGKBvU4$lambda$1(cameraCaptureCallback, this, requestMetadata);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStarted_uGKBvU4$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureStarted(cameraCaptureSession, captureRequest, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStarted_uGKBvU4$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata) {
        cameraCaptureCallback.onCaptureStarted(cameraCallbackMap.getCaptureConfigId(requestMetadata));
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onCaptureProgress(final RequestMetadata requestMetadata, final int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                final CaptureResult captureResult = (CaptureResult) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onCaptureProgress$lambda$0(cameraCaptureCallback, cameraCaptureSession, captureRequest, captureResult);
                        }
                    });
                }
            } else {
                executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onCaptureProgress$lambda$1(cameraCaptureCallback, this, requestMetadata, i);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCaptureProgress$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCaptureProgress$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, int i) {
        cameraCaptureCallback.onCaptureProcessProgressed(cameraCallbackMap.getCaptureConfigId(requestMetadata), i);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
    public void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, final long j, final long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        for (Map.Entry entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onReadoutStarted_mP9r_9w$lambda$0(cameraCaptureCallback, cameraCaptureSession, captureRequest, j2, j);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReadoutStarted_mP9r_9w$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        Api34Compat.onReadoutStarted(((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback(), cameraCaptureSession, captureRequest, j, j2);
    }

    private final CameraCaptureSession getCameraCaptureSession(RequestMetadata requestMetadata) {
        CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
        if (cameraCaptureSession != null) {
            return cameraCaptureSession;
        }
        if (Build.VERSION.SDK_INT < 31 || CameraCallbackMap$$ExternalSyntheticApiModelOutline1.m26m(requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m25m()))) == null) {
            return null;
        }
        return getRejectOperationCameraCaptureSession();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CameraCallbackMap createFor(Collection callbacks, Executor executor) {
            Intrinsics.checkNotNullParameter(callbacks, "callbacks");
            Intrinsics.checkNotNullParameter(executor, "executor");
            CameraCallbackMap cameraCallbackMap = new CameraCallbackMap();
            Iterator it = callbacks.iterator();
            while (it.hasNext()) {
                cameraCallbackMap.addCaptureCallback((CameraCaptureCallback) it.next(), executor);
            }
            return cameraCallbackMap;
        }
    }
}
