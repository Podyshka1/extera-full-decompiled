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
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0001\u0018\u0000 $2\u00020\u0001:\u0001$B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJE\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJC\u0010\u001d\u001a\u00020\u00162\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001f\u001a\u0004\b \u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010#¨\u0006%"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;", "camera2Quirks", "Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;", "retryingCameraStateOpener", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;)V", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "cameraDeviceWrapper", "Landroid/hardware/camera2/CameraDevice;", "cameraDevice", "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;", "androidCameraState", _UrlKt.FRAGMENT_ENCODE_SET, "shouldReopenCamera", "shouldCreateEmptyCaptureSession", "Lkotlin/Pair;", "handleQuirksBeforeClosing", "(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;ZZ)Lkotlin/Pair;", _UrlKt.FRAGMENT_ENCODE_SET, "closeCameraDevice", "(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V", "createCaptureSession", "(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;", "audioRestrictionController", "closeCamera", "(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZ)V", "Landroidx/camera/camera2/pipe/core/Threads;", "getThreads", "()Landroidx/camera/camera2/pipe/core/Threads;", "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;", "Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2DeviceCloser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2DeviceCloser.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl\n+ 2 CameraDevices.kt\nandroidx/camera/camera2/pipe/CameraId$Companion\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,263:1\n172#2:264\n172#2:306\n82#3,2:265\n50#3,2:268\n50#3,2:277\n82#3,2:284\n50#3,2:293\n50#3,2:295\n50#3,2:302\n82#3,2:304\n50#3,2:307\n50#3,2:309\n71#3,2:311\n82#3,2:313\n1#4:267\n48#5,2:270\n71#5,4:272\n50#5:276\n52#5:279\n78#5,4:280\n48#5,2:286\n71#5,4:288\n50#5:292\n52#5:297\n78#5,4:298\n*S KotlinDebug\n*F\n+ 1 Camera2DeviceCloser.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl\n*L\n63#1:264\n189#1:306\n89#1:265,2\n143#1:268,2\n148#1:277,2\n156#1:284,2\n162#1:293,2\n164#1:295,2\n176#1:302,2\n183#1:304,2\n194#1:307,2\n196#1:309,2\n198#1:311,2\n248#1:313,2\n147#1:270,2\n147#1:272,4\n147#1:276\n147#1:279\n147#1:280,4\n161#1:286,2\n161#1:288,4\n161#1:292\n161#1:297\n161#1:298,4\n*E\n"})
public final class Camera2DeviceCloserImpl implements Camera2DeviceCloser {
    private final Camera2Quirks camera2Quirks;
    private final RetryingCameraStateOpener retryingCameraStateOpener;
    private final Threads threads;

    public Camera2DeviceCloserImpl(Threads threads, Camera2Quirks camera2Quirks, RetryingCameraStateOpener retryingCameraStateOpener) {
        this.threads = threads;
        this.camera2Quirks = camera2Quirks;
        this.retryingCameraStateOpener = retryingCameraStateOpener;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceCloser
    public void closeCamera(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionController audioRestrictionController, boolean shouldReopenCamera, boolean shouldCreateEmptyCaptureSession) {
        CameraDevice cameraDevice2 = cameraDeviceWrapper != null ? (CameraDevice) cameraDeviceWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class)) : null;
        if (cameraDevice2 == null) {
            if (cameraDevice != null) {
                closeCameraDevice(cameraDevice, androidCameraState);
                return;
            }
            return;
        }
        CameraId.Companion companion = CameraId.INSTANCE;
        String strM1352constructorimpl = CameraId.m1352constructorimpl(cameraDevice2.getId());
        if (cameraDevice != null && !Intrinsics.areEqual(strM1352constructorimpl, cameraDevice.getId())) {
            Camera2DeviceCloserImpl$$ExternalSyntheticBUOutline0.m65m("Unwrapped camera device has camera ID ", strM1352constructorimpl, ", but the wrapped camera device has camera ID ", cameraDevice.getId());
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            audioRestrictionController.removeListener(cameraDeviceWrapper);
        }
        CameraDevice cameraDevice3 = cameraDevice2;
        Pair<CameraDeviceWrapper, AndroidCameraState> pairHandleQuirksBeforeClosing = handleQuirksBeforeClosing(cameraDeviceWrapper, cameraDevice3, androidCameraState, shouldReopenCamera, shouldCreateEmptyCaptureSession);
        if (pairHandleQuirksBeforeClosing == null) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to handle quirks before closing the camera device!");
            }
            cameraDeviceWrapper.onDeviceClosing();
            cameraDeviceWrapper.onDeviceClosed();
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice3);
            return;
        }
        CameraDeviceWrapper cameraDeviceWrapperComponent1 = pairHandleQuirksBeforeClosing.component1();
        AndroidCameraState androidCameraStateComponent2 = pairHandleQuirksBeforeClosing.component2();
        Object objUnwrapAs = cameraDeviceWrapperComponent1.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class));
        if (objUnwrapAs == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Required value was null.");
            return;
        }
        cameraDeviceWrapper.onDeviceClosing();
        closeCameraDevice((CameraDevice) objUnwrapAs, androidCameraStateComponent2);
        cameraDeviceWrapper.onDeviceClosed();
        if (shouldReopenCamera) {
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice3);
        }
    }

    private final Pair<CameraDeviceWrapper, AndroidCameraState> handleQuirksBeforeClosing(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, boolean shouldReopenCamera, boolean shouldCreateEmptyCaptureSession) {
        AwaitOpenCameraResult awaitOpenCameraResult;
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "handleQuirksBeforeClosing(" + cameraDevice + ')');
        }
        String cameraId = cameraDeviceWrapper.getCameraId();
        if (shouldReopenCamera) {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera2DeviceCloserImpl#reopenCameraDevice");
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Reopening camera device");
                }
                closeCameraDevice(cameraDevice, androidCameraState);
                awaitOpenCameraResult = this.retryingCameraStateOpener.mo1599openAndAwaitCameraWithRetry0r8Bogc(cameraId, this);
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
        if (shouldCreateEmptyCaptureSession) {
            Debug debug2 = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera2DeviceCloserImpl#createCaptureSession");
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Creating an empty capture session before closing " + ((Object) CameraId.m1356toStringimpl(cameraId)));
                }
                createCaptureSession(awaitOpenCameraResult.getCameraDeviceWrapper());
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Created an empty capture session.");
                }
                Unit unit = Unit.INSTANCE;
            } finally {
            }
        }
        return new Pair<>(awaitOpenCameraResult.getCameraDeviceWrapper(), awaitOpenCameraResult.getAndroidCameraState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeCameraDevice(CameraDevice cameraDevice, AndroidCameraState androidCameraState) {
        String id = cameraDevice.getId();
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "closeCameraDevice(" + id + ')');
        }
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        if (((Unit) this.threads.runBlockingCheckedOrNull(7000L, new C02102(cameraDevice, booleanRef, null))) == null && log.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", "Failed to close CameraDevice(" + id + ") after 7000ms. The camera is likely in a bad state.");
        }
        CameraId.Companion companion = CameraId.INSTANCE;
        String strM1352constructorimpl = CameraId.m1352constructorimpl(cameraDevice.getId());
        if (this.camera2Quirks.m1583shouldWaitForCameraDeviceOnClosedEfqyGwQ$camera_camera2_pipe(strM1352constructorimpl) && booleanRef.element) {
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Waiting for OnClosed from " + ((Object) CameraId.m1356toStringimpl(strM1352constructorimpl)));
            }
            if (androidCameraState.awaitCameraDeviceClosed$camera_camera2_pipe(2000L)) {
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Received OnClosed for " + ((Object) CameraId.m1356toStringimpl(strM1352constructorimpl)));
                    return;
                }
                return;
            }
            if (log.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to close " + ((Object) CameraId.m1356toStringimpl(strM1352constructorimpl)) + " after 2000ms!");
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$closeCameraDevice$2 */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$closeCameraDevice$2", m921f = "Camera2DeviceCloser.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    public static final class C02102 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ CameraDevice $cameraDevice;
        final /* synthetic */ Ref.BooleanRef $cameraDeviceClosed;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02102(CameraDevice cameraDevice, Ref.BooleanRef booleanRef, Continuation<? super C02102> continuation) {
            super(1, continuation);
            this.$cameraDevice = cameraDevice;
            this.$cameraDeviceClosed = booleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C02102(this.$cameraDevice, this.$cameraDeviceClosed, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02102) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onCaptureQueueEmpty(CameraCaptureSessionWrapper session) {
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onReady(CameraCaptureSessionWrapper session) {
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public void onSessionDisconnected() {
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public void onSessionFinalized() {
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onConfigured(CameraCaptureSessionWrapper session) throws Exception {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Empty capture session configured. Closing it");
                }
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(session);
                countDownLatch.countDown();
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onClosed(CameraCaptureSessionWrapper session) {
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
}
