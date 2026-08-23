package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCloser;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidCameraState extends CameraDevice.StateCallback {
    private final MutableStateFlow _state;
    private final int attemptNumber;
    private final long attemptTimestampNanos;
    private final AudioRestrictionController audioRestrictionController;
    private final Camera2DeviceCloser camera2DeviceCloser;
    private final Camera2Quirks camera2Quirks;
    private final CountDownLatch cameraDeviceClosed;
    private final CameraErrorListener cameraErrorListener;
    private final String cameraId;
    private final int debugId;
    private final CameraDevice.StateCallback interopCameraDeviceStateCallback;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final Object lock;
    private final CameraMetadata metadata;
    private TimestampNs openTimestampNanos;
    private boolean opening;
    private ClosingInfo pendingClose;
    private final long requestTimestampNanos;
    private boolean shouldDelayFinalizing;
    private final Threads threads;
    private final TimeSource timeSource;

    public /* synthetic */ AndroidCameraState(String str, CameraMetadata cameraMetadata, int i, long j, TimeSource timeSource, CameraErrorListener cameraErrorListener, Camera2DeviceCloser camera2DeviceCloser, Camera2Quirks camera2Quirks, Threads threads, AudioRestrictionController audioRestrictionController, CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, cameraMetadata, i, j, timeSource, cameraErrorListener, camera2DeviceCloser, camera2Quirks, threads, audioRestrictionController, stateCallback, captureSessionListener);
    }

    private AndroidCameraState(String cameraId, CameraMetadata metadata, int i, long j, TimeSource timeSource, CameraErrorListener cameraErrorListener, Camera2DeviceCloser camera2DeviceCloser, Camera2Quirks camera2Quirks, Threads threads, AudioRestrictionController audioRestrictionController, CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(camera2DeviceCloser, "camera2DeviceCloser");
        Intrinsics.checkNotNullParameter(camera2Quirks, "camera2Quirks");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(audioRestrictionController, "audioRestrictionController");
        this.cameraId = cameraId;
        this.metadata = metadata;
        this.attemptNumber = i;
        this.attemptTimestampNanos = j;
        this.timeSource = timeSource;
        this.cameraErrorListener = cameraErrorListener;
        this.camera2DeviceCloser = camera2DeviceCloser;
        this.camera2Quirks = camera2Quirks;
        this.threads = threads;
        this.audioRestrictionController = audioRestrictionController;
        this.interopCameraDeviceStateCallback = stateCallback;
        this.interopCaptureSessionListener = captureSessionListener;
        this.debugId = VirtualCameraKt.getAndroidCameraDebugIds().incrementAndGet();
        this.lock = new Object();
        this.cameraDeviceClosed = new CountDownLatch(1);
        this._state = StateFlowKt.MutableStateFlow(CameraStateUnopened.INSTANCE);
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i("CXCP", "Opening " + ((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())));
        }
        if (i != 1) {
            Timestamps timestamps = Timestamps.INSTANCE;
            j = timeSource.mo1888nowvQl9yQU();
        }
        this.requestTimestampNanos = j;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m1802getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    public final StateFlow getState() {
        return this._state;
    }

    public final void close() throws Throwable {
        CameraState cameraState = (CameraState) this._state.getValue();
        CameraDeviceWrapper cameraDevice = cameraState instanceof CameraStateOpen ? ((CameraStateOpen) cameraState).getCameraDevice() : null;
        closeWith(cameraDevice != null ? (CameraDevice) cameraDevice.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class)) : null, new ClosingInfo(ClosedReason.APP_CLOSED, 0L, null, null, 14, null));
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.AndroidCameraState$awaitClosed$2 */
    static final class C01832 extends SuspendLambda implements Function2 {
        /* synthetic */ Object L$0;
        int label;

        C01832(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C01832 c01832 = new C01832(continuation);
            c01832.L$0 = obj;
            return c01832;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CameraState cameraState, Continuation continuation) {
            return ((C01832) create(cameraState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(((CameraState) this.L$0) instanceof CameraStateClosed);
        }
    }

    public final Object awaitClosed(Continuation continuation) {
        Object objFirst = FlowKt.first(getState(), new C01832(null), continuation);
        return objFirst == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFirst : Unit.INSTANCE;
    }

    public final boolean awaitCameraDeviceClosed$camera_camera2_pipe(long j) {
        return this.cameraDeviceClosed.await(j, TimeUnit.MILLISECONDS);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onOpened(CameraDevice cameraDevice) {
        ClosingInfo closingInfo;
        ClosingInfo closingInfo2;
        String string;
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        if (!Intrinsics.areEqual(cameraDevice.getId(), this.cameraId)) {
            throw new IllegalStateException("Check failed.");
        }
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
        this.openTimestampNanos = TimestampNs.m1890boximpl(jMo1888nowvQl9yQU);
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())) + "#onOpened");
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            long jM1880constructorimpl = DurationNs.m1880constructorimpl(jMo1888nowvQl9yQU - this.requestTimestampNanos);
            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(jMo1888nowvQl9yQU - this.attemptTimestampNanos);
            if (this.attemptNumber == 1) {
                StringBuilder sb = new StringBuilder();
                sb.append("Opened ");
                sb.append((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8()));
                sb.append(" in ");
                String str = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                sb.append(str);
                string = sb.toString();
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Opened ");
                sb2.append((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8()));
                sb2.append(" in ");
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb2.append(str2);
                sb2.append(" (");
                String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                sb2.append(str3);
                sb2.append(" total) after ");
                sb2.append(this.attemptNumber);
                sb2.append(" attempts.");
                string = sb2.toString();
            }
            android.util.Log.i("CXCP", string);
        }
        synchronized (this.lock) {
            closingInfo = this.pendingClose;
            if (closingInfo == null) {
                this.opening = true;
            }
        }
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onOpened(cameraDevice);
        }
        if (closingInfo != null) {
            Camera2DeviceCloser.CC.closeCamera$default(this.camera2DeviceCloser, null, cameraDevice, this, this.audioRestrictionController, m1801shouldReopenCameraWhenClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m1804getErrorCodemVEW8x0()), m1800shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m1804getErrorCodemVEW8x0()), 1, null);
            return;
        }
        AndroidCameraDevice androidCameraDevice = new AndroidCameraDevice(this.metadata, cameraDevice, this.cameraId, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads, null);
        this.audioRestrictionController.addListener(androidCameraDevice);
        this._state.setValue(new CameraStateOpen(androidCameraDevice));
        synchronized (this.lock) {
            this.opening = false;
            closingInfo2 = this.pendingClose;
        }
        if (closingInfo2 != null) {
            this._state.setValue(new CameraStateClosing(closingInfo2.m1804getErrorCodemVEW8x0(), null));
            this.camera2DeviceCloser.closeCamera(androidCameraDevice, cameraDevice, this, this.audioRestrictionController, m1801shouldReopenCameraWhenClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo2.m1804getErrorCodemVEW8x0()), m1800shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo2.m1804getErrorCodemVEW8x0()));
            this._state.setValue(computeClosedState(closingInfo2));
        }
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onDisconnected(CameraDevice cameraDevice) throws Throwable {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        if (!Intrinsics.areEqual(cameraDevice.getId(), this.cameraId)) {
            throw new IllegalStateException("Check failed.");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())) + "#onDisconnected");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", ((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())) + ": onDisconnected");
        }
        this.cameraDeviceClosed.countDown();
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_DISCONNECTED, 0L, CameraError.m1550boximpl(CameraError.Companion.m1563getERROR_CAMERA_DISCONNECTEDv7Vf74A()), null, 10, null));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onDisconnected(cameraDevice);
        }
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onError(CameraDevice cameraDevice, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        if (!Intrinsics.areEqual(cameraDevice.getId(), this.cameraId)) {
            throw new IllegalStateException("Check failed.");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())) + "#onError-" + i);
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", ((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())) + ": onError " + i);
        }
        this.cameraDeviceClosed.countDown();
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_ERROR, 0L, CameraError.m1550boximpl(CameraError.Companion.m1558fromPVuDhNw$camera_camera2_pipe(i)), null, 10, null));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onError(cameraDevice, i);
        }
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onClosed(CameraDevice cameraDevice) throws Throwable {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        if (!Intrinsics.areEqual(cameraDevice.getId(), this.cameraId)) {
            throw new IllegalStateException("Check failed.");
        }
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", ((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())) + ": onClosed");
        }
        this.cameraDeviceClosed.countDown();
        synchronized (this.lock) {
            if (!this.shouldDelayFinalizing) {
                Unit unit = Unit.INSTANCE;
                onFinalized$camera_camera2_pipe(cameraDevice);
                return;
            }
            if (log.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", this + "#onClosed: Delaying finalizing.");
            }
        }
    }

    public final void onFinalized$camera_camera2_pipe(CameraDevice cameraDevice) throws Throwable {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m1607toStringimpl(m1802getCameraIdDz_R5H8())) + "#onFinalized");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + ": onFinalized");
        }
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_CLOSED, 0L, null, null, 14, null));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onClosed(cameraDevice);
        }
        Trace.endSection();
    }

    public final void closeWith$camera_camera2_pipe(Throwable throwable) throws Throwable {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        CameraError.Companion companion = CameraError.Companion;
        int iM1560fromPVuDhNw$camera_camera2_pipe = companion.m1560fromPVuDhNw$camera_camera2_pipe(throwable);
        if (CameraError.m1553equalsimpl0(iM1560fromPVuDhNw$camera_camera2_pipe, companion.m1573getERROR_UNDETERMINEDv7Vf74A())) {
            return;
        }
        m1799closeWith8PWMtlg(throwable, iM1560fromPVuDhNw$camera_camera2_pipe);
    }

    /* JADX INFO: renamed from: closeWith-8PWMtlg, reason: not valid java name */
    private final void m1799closeWith8PWMtlg(Throwable th, int i) throws Throwable {
        closeWith(null, new ClosingInfo(ClosedReason.CAMERA2_EXCEPTION, 0L, CameraError.m1550boximpl(i), th, 2, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void closeWith(CameraDevice cameraDevice, ClosingInfo closingInfo) throws Throwable {
        Throwable th;
        AndroidCameraState androidCameraState;
        CameraState cameraState = (CameraState) this._state.getValue();
        CameraDeviceWrapper cameraDevice2 = cameraState instanceof CameraStateOpen ? ((CameraStateOpen) cameraState).getCameraDevice() : null;
        synchronized (this.lock) {
            try {
                if (this.pendingClose == null) {
                    try {
                        this.pendingClose = closingInfo;
                        if (this.opening) {
                            closingInfo = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                if (closingInfo != null) {
                    if (closingInfo.m1804getErrorCodemVEW8x0() != null && closingInfo.getReason() != ClosedReason.CAMERA2_EXCEPTION) {
                        this.cameraErrorListener.mo1832onCameraError3M5Xam4(this.cameraId, closingInfo.m1804getErrorCodemVEW8x0().m1557unboximpl(), false);
                    }
                    this._state.setValue(new CameraStateClosing(closingInfo.m1804getErrorCodemVEW8x0(), null));
                    if (closingInfo.getReason() != ClosedReason.CAMERA2_CLOSED) {
                        boolean zM1801shouldReopenCameraWhenClosing_z0IXec = m1801shouldReopenCameraWhenClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m1804getErrorCodemVEW8x0());
                        if (zM1801shouldReopenCameraWhenClosing_z0IXec) {
                            synchronized (this.lock) {
                                this.shouldDelayFinalizing = true;
                                Unit unit = Unit.INSTANCE;
                            }
                        }
                        androidCameraState = this;
                        this.camera2DeviceCloser.closeCamera(cameraDevice2, cameraDevice, androidCameraState, this.audioRestrictionController, zM1801shouldReopenCameraWhenClosing_z0IXec, m1800shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m1804getErrorCodemVEW8x0()));
                    } else {
                        androidCameraState = this;
                    }
                    androidCameraState._state.setValue(computeClosedState(closingInfo));
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private final CameraStateClosed computeClosedState(ClosingInfo closingInfo) {
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
        TimestampNs timestampNs = this.openTimestampNanos;
        long jM1803getClosingTimestampvQl9yQU = closingInfo.m1803getClosingTimestampvQl9yQU();
        DurationNs durationNsM1878boximpl = timestampNs != null ? DurationNs.m1878boximpl(DurationNs.m1880constructorimpl(timestampNs.m1896unboximpl() - this.attemptTimestampNanos)) : null;
        DurationNs durationNsM1878boximpl2 = timestampNs != null ? DurationNs.m1878boximpl(DurationNs.m1880constructorimpl(timestampNs.m1896unboximpl() - this.requestTimestampNanos)) : null;
        DurationNs durationNsM1878boximpl3 = timestampNs != null ? DurationNs.m1878boximpl(DurationNs.m1880constructorimpl(jM1803getClosingTimestampvQl9yQU - timestampNs.m1896unboximpl())) : null;
        long jM1880constructorimpl = DurationNs.m1880constructorimpl(jMo1888nowvQl9yQU - jM1803getClosingTimestampvQl9yQU);
        return new CameraStateClosed(this.cameraId, closingInfo.getReason(), Integer.valueOf(this.attemptNumber - 1), durationNsM1878boximpl, closingInfo.getException(), durationNsM1878boximpl2, durationNsM1878boximpl3, DurationNs.m1878boximpl(jM1880constructorimpl), closingInfo.m1804getErrorCodemVEW8x0(), null);
    }

    private static final class ClosingInfo {
        private final long closingTimestamp;
        private final CameraError errorCode;
        private final Throwable exception;
        private final ClosedReason reason;

        public /* synthetic */ ClosingInfo(ClosedReason closedReason, long j, CameraError cameraError, Throwable th, DefaultConstructorMarker defaultConstructorMarker) {
            this(closedReason, j, cameraError, th);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClosingInfo)) {
                return false;
            }
            ClosingInfo closingInfo = (ClosingInfo) obj;
            return this.reason == closingInfo.reason && TimestampNs.m1893equalsimpl0(this.closingTimestamp, closingInfo.closingTimestamp) && Intrinsics.areEqual(this.errorCode, closingInfo.errorCode) && Intrinsics.areEqual(this.exception, closingInfo.exception);
        }

        public int hashCode() {
            int iHashCode = ((this.reason.hashCode() * 31) + TimestampNs.m1894hashCodeimpl(this.closingTimestamp)) * 31;
            CameraError cameraError = this.errorCode;
            int iM1554hashCodeimpl = (iHashCode + (cameraError == null ? 0 : CameraError.m1554hashCodeimpl(cameraError.m1557unboximpl()))) * 31;
            Throwable th = this.exception;
            return iM1554hashCodeimpl + (th != null ? th.hashCode() : 0);
        }

        public String toString() {
            return "ClosingInfo(reason=" + this.reason + ", closingTimestamp=" + ((Object) TimestampNs.m1895toStringimpl(this.closingTimestamp)) + ", errorCode=" + this.errorCode + ", exception=" + this.exception + ')';
        }

        private ClosingInfo(ClosedReason reason, long j, CameraError cameraError, Throwable th) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
            this.closingTimestamp = j;
            this.errorCode = cameraError;
            this.exception = th;
        }

        public final ClosedReason getReason() {
            return this.reason;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ ClosingInfo(ClosedReason closedReason, long j, CameraError cameraError, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 2) != 0) {
                Timestamps timestamps = Timestamps.INSTANCE;
                j = new SystemTimeSource().mo1888nowvQl9yQU();
            }
            this(closedReason, j, (i & 4) != 0 ? null : cameraError, (i & 8) != 0 ? null : th, null);
        }

        /* JADX INFO: renamed from: getClosingTimestamp-vQl9yQU, reason: not valid java name */
        public final long m1803getClosingTimestampvQl9yQU() {
            return this.closingTimestamp;
        }

        /* JADX INFO: renamed from: getErrorCode-mVEW8x0, reason: not valid java name */
        public final CameraError m1804getErrorCodemVEW8x0() {
            return this.errorCode;
        }

        public final Throwable getException() {
            return this.exception;
        }
    }

    /* JADX INFO: renamed from: shouldReopenCameraWhenClosing-_z0IXec, reason: not valid java name */
    private final boolean m1801shouldReopenCameraWhenClosing_z0IXec(Camera2Quirks camera2Quirks, String str, CameraError cameraError) {
        return m1800shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(camera2Quirks, str, cameraError) && camera2Quirks.m70x552c1673(str);
    }

    /* JADX INFO: renamed from: shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec, reason: not valid java name */
    private final boolean m1800shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(Camera2Quirks camera2Quirks, String str, CameraError cameraError) {
        return camera2Quirks.m71xfcf3eba9(str) && cameraError == null;
    }

    public String toString() {
        return "CameraState-" + this.debugId;
    }
}
