package androidx.camera.camera2.pipe.compat;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraDevice;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import java.util.concurrent.CountDownLatch;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2DeviceCloserImpl implements Camera2DeviceCloser {
    public static final Companion Companion = new Companion(null);
    private final Camera2Quirks camera2Quirks;
    private final RetryingCameraStateOpener retryingCameraStateOpener;
    private final Threads threads;

    public Camera2DeviceCloserImpl(Threads threads, Camera2Quirks camera2Quirks, RetryingCameraStateOpener retryingCameraStateOpener) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(camera2Quirks, "camera2Quirks");
        Intrinsics.checkNotNullParameter(retryingCameraStateOpener, "retryingCameraStateOpener");
        this.threads = threads;
        this.camera2Quirks = camera2Quirks;
        this.retryingCameraStateOpener = retryingCameraStateOpener;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceCloser
    public void closeCamera(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionController audioRestrictionController, boolean z, boolean z2) throws Throwable {
        Intrinsics.checkNotNullParameter(androidCameraState, "androidCameraState");
        Intrinsics.checkNotNullParameter(audioRestrictionController, "audioRestrictionController");
        CameraDevice cameraDevice2 = cameraDeviceWrapper != null ? (CameraDevice) cameraDeviceWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class)) : null;
        if (cameraDevice2 == null) {
            if (cameraDevice != null) {
                closeCameraDevice(cameraDevice, androidCameraState);
                return;
            }
            return;
        }
        CameraId.Companion companion = CameraId.Companion;
        String id = cameraDevice2.getId();
        Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
        String strM1603constructorimpl = CameraId.m1603constructorimpl(id);
        if (cameraDevice != null && !Intrinsics.areEqual(strM1603constructorimpl, cameraDevice.getId())) {
            throw new IllegalStateException(("Unwrapped camera device has camera ID " + strM1603constructorimpl + ", but the wrapped camera device has camera ID " + cameraDevice.getId() + '!').toString());
        }
        if (Build.VERSION.SDK_INT >= 30) {
            audioRestrictionController.removeListener(cameraDeviceWrapper);
        }
        CameraDevice cameraDevice3 = cameraDevice2;
        Pair pairHandleQuirksBeforeClosing = handleQuirksBeforeClosing(cameraDeviceWrapper, cameraDevice3, androidCameraState, z, z2);
        if (pairHandleQuirksBeforeClosing == null) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to handle quirks before closing the camera device!");
            }
            cameraDeviceWrapper.onDeviceClosing();
            cameraDeviceWrapper.onDeviceClosed();
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice3);
            return;
        }
        CameraDeviceWrapper cameraDeviceWrapper2 = (CameraDeviceWrapper) pairHandleQuirksBeforeClosing.component1();
        AndroidCameraState androidCameraState2 = (AndroidCameraState) pairHandleQuirksBeforeClosing.component2();
        Object objUnwrapAs = cameraDeviceWrapper2.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class));
        if (objUnwrapAs == null) {
            throw new IllegalStateException("Required value was null.");
        }
        cameraDeviceWrapper.onDeviceClosing();
        closeCameraDevice((CameraDevice) objUnwrapAs, androidCameraState2);
        cameraDeviceWrapper.onDeviceClosed();
        if (z) {
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice3);
        }
    }

    private final Pair handleQuirksBeforeClosing(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, boolean z, boolean z2) {
        AwaitOpenCameraResult awaitOpenCameraResult;
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "handleQuirksBeforeClosing(" + cameraDevice + ')');
        }
        String strMo1797getCameraIdDz_R5H8 = cameraDeviceWrapper.mo1797getCameraIdDz_R5H8();
        if (z) {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera2DeviceCloserImpl#reopenCameraDevice");
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Reopening camera device");
                }
                closeCameraDevice(cameraDevice, androidCameraState);
                awaitOpenCameraResult = this.retryingCameraStateOpener.mo1858openAndAwaitCameraWithRetry0r8Bogc(strMo1797getCameraIdDz_R5H8, this);
                Trace.endSection();
            } finally {
            }
        } else {
            awaitOpenCameraResult = new AwaitOpenCameraResult(cameraDeviceWrapper, androidCameraState);
        }
        if (awaitOpenCameraResult.getCameraDeviceWrapper() == null || awaitOpenCameraResult.getAndroidCameraState() == null) {
            if (!log.getERROR_LOGGABLE()) {
                return null;
            }
            android.util.Log.e("CXCP", "Failed to retain an opened camera device!");
            return null;
        }
        if (z2) {
            Debug debug2 = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera2DeviceCloserImpl#createCaptureSession");
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Creating an empty capture session before closing " + ((Object) CameraId.m1607toStringimpl(strMo1797getCameraIdDz_R5H8)));
                }
                createCaptureSession(awaitOpenCameraResult.getCameraDeviceWrapper());
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Created an empty capture session.");
                }
                Unit unit = Unit.INSTANCE;
                Trace.endSection();
            } finally {
            }
        }
        return new Pair(awaitOpenCameraResult.getCameraDeviceWrapper(), awaitOpenCameraResult.getAndroidCameraState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeCameraDevice(CameraDevice cameraDevice, AndroidCameraState androidCameraState) {
        String id = cameraDevice.getId();
        Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "closeCameraDevice(" + id + ')');
        }
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        if (((Unit) this.threads.runBlockingCheckedOrNull(7000L, new C02092(cameraDevice, ref$BooleanRef, null))) == null && log.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", "Failed to close CameraDevice(" + id + ") after 7000ms. The camera is likely in a bad state.");
        }
        CameraId.Companion companion = CameraId.Companion;
        String id2 = cameraDevice.getId();
        Intrinsics.checkNotNullExpressionValue(id2, "getId(...)");
        String strM1603constructorimpl = CameraId.m1603constructorimpl(id2);
        if (this.camera2Quirks.m1844shouldWaitForCameraDeviceOnClosedEfqyGwQ$camera_camera2_pipe(strM1603constructorimpl) && ref$BooleanRef.element) {
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Waiting for OnClosed from " + ((Object) CameraId.m1607toStringimpl(strM1603constructorimpl)));
            }
            if (androidCameraState.awaitCameraDeviceClosed$camera_camera2_pipe(2000L)) {
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Received OnClosed for " + ((Object) CameraId.m1607toStringimpl(strM1603constructorimpl)));
                    return;
                }
                return;
            }
            if (log.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to close " + ((Object) CameraId.m1607toStringimpl(strM1603constructorimpl)) + " after 2000ms!");
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$closeCameraDevice$2 */
    static final class C02092 extends SuspendLambda implements Function1 {
        final /* synthetic */ CameraDevice $cameraDevice;
        final /* synthetic */ Ref$BooleanRef $cameraDeviceClosed;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02092(CameraDevice cameraDevice, Ref$BooleanRef ref$BooleanRef, Continuation continuation) {
            super(1, continuation);
            this.$cameraDevice = cameraDevice;
            this.$cameraDeviceClosed = ref$BooleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new C02092(this.$cameraDevice, this.$cameraDeviceClosed, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C02092) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            CameraDeviceWrapperKt.closeWithTrace(this.$cameraDevice);
            this.$cameraDeviceClosed.element = true;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createCaptureSession(CameraDeviceWrapper cameraDeviceWrapper) throws InterruptedException {
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(640, 480);
        final Surface surface = new Surface(surfaceTexture);
        final AtomicBoolean atomicBooleanAtomic = AtomicFU.atomic(false);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (!cameraDeviceWrapper.createCaptureSession(CollectionsKt.listOf(surface), new CameraCaptureSessionWrapper.StateCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$createCaptureSession$callback$1
            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onActive(CameraCaptureSessionWrapper session) {
                Intrinsics.checkNotNullParameter(session, "session");
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onCaptureQueueEmpty(CameraCaptureSessionWrapper session) {
                Intrinsics.checkNotNullParameter(session, "session");
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onReady(CameraCaptureSessionWrapper session) {
                Intrinsics.checkNotNullParameter(session, "session");
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public void onSessionDisconnected() {
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public void onSessionFinalized() {
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onConfigured(CameraCaptureSessionWrapper session) throws Exception {
                Intrinsics.checkNotNullParameter(session, "session");
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Empty capture session configured. Closing it");
                }
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(session);
                countDownLatch.countDown();
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onClosed(CameraCaptureSessionWrapper session) {
                Intrinsics.checkNotNullParameter(session, "session");
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Empty capture session closed");
                }
                if (atomicBooleanAtomic.compareAndSet(false, true)) {
                    surface.release();
                    surfaceTexture.release();
                }
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onConfigureFailed(CameraCaptureSessionWrapper session) {
                Intrinsics.checkNotNullParameter(session, "session");
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Empty capture session configure failed");
                }
                if (atomicBooleanAtomic.compareAndSet(false, true)) {
                    surface.release();
                    surfaceTexture.release();
                }
                countDownLatch.countDown();
            }
        })) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to create a blank capture session! Surfaces may not be disconnected properly.");
            }
            if (atomicBooleanAtomic.compareAndSet(false, true)) {
                surface.release();
                surfaceTexture.release();
                return;
            }
            return;
        }
        countDownLatch.await();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
