package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.compat.CameraAvailabilityMonitor;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import java.util.Arrays;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
public final class RetryingCameraStateOpenerImpl implements RetryingCameraStateOpener {
    public static final Companion Companion = new Companion(null);
    private final AudioRestrictionController audioRestrictionController;
    private final CameraAvailabilityMonitor cameraAvailabilityMonitor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraPipe.CameraInteropConfig cameraInteropConfig;
    private final CameraStateOpener cameraStateOpener;
    private final DevicePolicyManagerWrapper devicePolicyManager;
    private final Threads threads;
    private final TimeSource timeSource;

    public RetryingCameraStateOpenerImpl(CameraStateOpener cameraStateOpener, CameraErrorListener cameraErrorListener, CameraAvailabilityMonitor cameraAvailabilityMonitor, TimeSource timeSource, DevicePolicyManagerWrapper devicePolicyManager, AudioRestrictionController audioRestrictionController, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        Intrinsics.checkNotNullParameter(cameraStateOpener, "cameraStateOpener");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(cameraAvailabilityMonitor, "cameraAvailabilityMonitor");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        Intrinsics.checkNotNullParameter(devicePolicyManager, "devicePolicyManager");
        Intrinsics.checkNotNullParameter(audioRestrictionController, "audioRestrictionController");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.cameraStateOpener = cameraStateOpener;
        this.cameraErrorListener = cameraErrorListener;
        this.cameraAvailabilityMonitor = cameraAvailabilityMonitor;
        this.timeSource = timeSource;
        this.devicePolicyManager = devicePolicyManager;
        this.audioRestrictionController = audioRestrictionController;
        this.cameraInteropConfig = cameraInteropConfig;
        this.threads = threads;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x024f, code lost:
    
        if (r6 == r4) goto L68;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0127 A[Catch: all -> 0x005d, TRY_ENTER, TryCatch #2 {all -> 0x005d, blocks: (B:14:0x004d, B:69:0x0252, B:71:0x025a, B:73:0x0262, B:35:0x010d, B:40:0x0127, B:42:0x012d, B:44:0x0135, B:47:0x013e, B:49:0x0160, B:52:0x016c, B:54:0x0178, B:58:0x0182, B:60:0x0191, B:62:0x0199, B:66:0x0225, B:22:0x0083), top: B:85:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0191 A[Catch: all -> 0x005d, TryCatch #2 {all -> 0x005d, blocks: (B:14:0x004d, B:69:0x0252, B:71:0x025a, B:73:0x0262, B:35:0x010d, B:40:0x0127, B:42:0x012d, B:44:0x0135, B:47:0x013e, B:49:0x0160, B:52:0x016c, B:54:0x0178, B:58:0x0182, B:60:0x0191, B:62:0x0199, B:66:0x0225, B:22:0x0083), top: B:85:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x024f -> B:16:0x0053). Please report as a decompilation issue!!! */
    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    /* JADX INFO: renamed from: openCameraWithRetry-aeCOTgg */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo1859openCameraWithRetryaeCOTgg(String str, Camera2DeviceCloser camera2DeviceCloser, Function1 function1, Continuation continuation) throws Exception {
        RetryingCameraStateOpenerImpl$openCameraWithRetry$1 retryingCameraStateOpenerImpl$openCameraWithRetry$1;
        long jMo1888nowvQl9yQU;
        Camera2DeviceCloser camera2DeviceCloser2;
        String str2;
        Ref$IntRef ref$IntRef;
        Function1 function12;
        AutoCloseable autoCloseable;
        Camera2DeviceCloser camera2DeviceCloser3;
        String str3;
        CameraAvailabilityMonitor.Session session;
        long j;
        String str4;
        Camera2DeviceCloser camera2DeviceCloser4;
        Function1 function13;
        Ref$IntRef ref$IntRef2;
        long j2;
        AutoCloseable autoCloseable2;
        CameraAvailabilityMonitor.Session session2;
        OpenCameraResult openCameraResult;
        OpenCameraResult openCameraResult2;
        Object objM1847tryOpenCamera7pD7j80$camera_camera2_pipe;
        if (continuation instanceof RetryingCameraStateOpenerImpl$openCameraWithRetry$1) {
            retryingCameraStateOpenerImpl$openCameraWithRetry$1 = (RetryingCameraStateOpenerImpl$openCameraWithRetry$1) continuation;
            int i = retryingCameraStateOpenerImpl$openCameraWithRetry$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = i - Integer.MIN_VALUE;
            } else {
                retryingCameraStateOpenerImpl$openCameraWithRetry$1 = new RetryingCameraStateOpenerImpl$openCameraWithRetry$1(this, continuation);
            }
        }
        Object obj = retryingCameraStateOpenerImpl$openCameraWithRetry$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r5 = retryingCameraStateOpenerImpl$openCameraWithRetry$1.label;
        int i2 = 2;
        String str5 = "CXCP";
        int i3 = 1;
        try {
            try {
                if (r5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Timestamps timestamps = Timestamps.INSTANCE;
                    jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
                    Ref$IntRef ref$IntRef3 = new Ref$IntRef();
                    CameraAvailabilityMonitor cameraAvailabilityMonitor = this.cameraAvailabilityMonitor;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str;
                    camera2DeviceCloser2 = camera2DeviceCloser;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser2;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function1;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = ref$IntRef3;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = jMo1888nowvQl9yQU;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = 1;
                    Object objMo1812startMonitoring0r8Bogc = cameraAvailabilityMonitor.mo1812startMonitoring0r8Bogc(str, retryingCameraStateOpenerImpl$openCameraWithRetry$1);
                    if (objMo1812startMonitoring0r8Bogc != coroutine_suspended) {
                        str2 = str;
                        ref$IntRef = ref$IntRef3;
                        obj = objMo1812startMonitoring0r8Bogc;
                        function12 = function1;
                    }
                    return coroutine_suspended;
                }
                if (r5 == 1) {
                    jMo1888nowvQl9yQU = retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0;
                    ref$IntRef = (Ref$IntRef) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3;
                    function12 = (Function1) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2;
                    camera2DeviceCloser2 = (Camera2DeviceCloser) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1;
                    str2 = (String) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (r5 != 2) {
                        if (r5 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        j2 = retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0;
                        session2 = (CameraAvailabilityMonitor.Session) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5;
                        autoCloseable2 = (AutoCloseable) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4;
                        ref$IntRef2 = (Ref$IntRef) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3;
                        function13 = (Function1) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2;
                        camera2DeviceCloser4 = (Camera2DeviceCloser) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1;
                        str4 = (String) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0;
                        ResultKt.throwOnFailure(obj);
                        Object objAwaitAvailableCamera = obj;
                        char c = 3;
                        String str6 = "CXCP";
                        Camera2DeviceCloser camera2DeviceCloser5 = camera2DeviceCloser4;
                        long j3 = j2;
                        session = session2;
                        ref$IntRef = ref$IntRef2;
                        str3 = str4;
                        if (!((Boolean) objAwaitAvailableCamera).booleanValue() && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(str6, "Timeout expired, retrying camera open for camera " + ((Object) CameraId.m1607toStringimpl(str3)));
                        }
                        autoCloseable = autoCloseable2;
                        function12 = function13;
                        j = j3;
                        camera2DeviceCloser3 = camera2DeviceCloser5;
                        str5 = str6;
                        i2 = 2;
                        i3 = 1;
                        int i4 = ref$IntRef.element + i3;
                        ref$IntRef.element = i4;
                        CameraStateOpener cameraStateOpener = this.cameraStateOpener;
                        AudioRestrictionController audioRestrictionController = this.audioRestrictionController;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str3;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser3;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function12;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = ref$IntRef;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4 = autoCloseable;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5 = session;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = j;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = i2;
                        RetryingCameraStateOpenerImpl$openCameraWithRetry$1 retryingCameraStateOpenerImpl$openCameraWithRetry$12 = retryingCameraStateOpenerImpl$openCameraWithRetry$1;
                        CameraAvailabilityMonitor.Session session3 = session;
                        objM1847tryOpenCamera7pD7j80$camera_camera2_pipe = cameraStateOpener.m1847tryOpenCamera7pD7j80$camera_camera2_pipe(str3, i4, j, camera2DeviceCloser3, audioRestrictionController, retryingCameraStateOpenerImpl$openCameraWithRetry$12);
                        if (objM1847tryOpenCamera7pD7j80$camera_camera2_pipe != coroutine_suspended) {
                            Camera2DeviceCloser camera2DeviceCloser6 = camera2DeviceCloser3;
                            str4 = str3;
                            j2 = j;
                            camera2DeviceCloser4 = camera2DeviceCloser6;
                            ref$IntRef2 = ref$IntRef;
                            session2 = session3;
                            function13 = function12;
                            retryingCameraStateOpenerImpl$openCameraWithRetry$1 = retryingCameraStateOpenerImpl$openCameraWithRetry$12;
                            autoCloseable2 = autoCloseable;
                            obj = objM1847tryOpenCamera7pD7j80$camera_camera2_pipe;
                            openCameraResult = (OpenCameraResult) obj;
                            Timestamps timestamps2 = Timestamps.INSTANCE;
                            long jM1880constructorimpl = DurationNs.m1880constructorimpl(this.timeSource.mo1888nowvQl9yQU() - j2);
                            if (openCameraResult.getCameraState() != null) {
                                AutoCloseableKt.closeFinally(autoCloseable2, null);
                                return openCameraResult;
                            }
                            if (openCameraResult.m1848getErrorCodemVEW8x0() == null) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(str5, "Camera open failed without an error. The CameraGraph may have been stopped or closed. Abandoning the camera open attempt.");
                                }
                                AutoCloseableKt.closeFinally(autoCloseable2, null);
                                return openCameraResult;
                            }
                            boolean zBooleanValue = ((Boolean) function13.invoke(Unit.INSTANCE)).booleanValue();
                            Companion companion = Companion;
                            int iM1557unboximpl = openCameraResult.m1848getErrorCodemVEW8x0().m1557unboximpl();
                            int i5 = ref$IntRef2.element;
                            boolean camerasDisabled = this.devicePolicyManager.getCamerasDisabled();
                            CameraPipe.CameraInteropConfig cameraInteropConfig = this.cameraInteropConfig;
                            boolean zM1865shouldRetryrbpwgO0$camera_camera2_pipe = companion.m1865shouldRetryrbpwgO0$camera_camera2_pipe(iM1557unboximpl, i5, jM1880constructorimpl, camerasDisabled, zBooleanValue, cameraInteropConfig != null ? cameraInteropConfig.m1615getCameraOpenRetryMaxTimeoutNsQWez1Bs() : null);
                            if (zM1865shouldRetryrbpwgO0$camera_camera2_pipe) {
                                openCameraResult2 = openCameraResult;
                                if (ref$IntRef2.element > 1) {
                                }
                                if (zM1865shouldRetryrbpwgO0$camera_camera2_pipe) {
                                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("Failed to open camera ");
                                        sb.append((Object) CameraId.m1607toStringimpl(str4));
                                        sb.append(" after ");
                                        sb.append(ref$IntRef2.element);
                                        sb.append(" attempts and ");
                                        String str7 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Boxing.boxDouble(DurationNs.m1880constructorimpl(this.timeSource.mo1888nowvQl9yQU() - j2) / 1000000.0d)}, 1));
                                        Intrinsics.checkNotNullExpressionValue(str7, "format(...)");
                                        sb.append(str7);
                                        sb.append(". Last error was ");
                                        sb.append((Object) CameraError.m1556toStringimpl(openCameraResult2.m1848getErrorCodemVEW8x0().m1557unboximpl()));
                                        sb.append('.');
                                        android.util.Log.e(str5, sb.toString());
                                    }
                                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                                    return openCameraResult2;
                                }
                                str6 = str5;
                                long jM1862getRetryDelayMst8DbYm4$camera_camera2_pipe = companion.m1862getRetryDelayMst8DbYm4$camera_camera2_pipe(jM1880constructorimpl, companion.m1864shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(zBooleanValue, openCameraResult2.m1848getErrorCodemVEW8x0().m1557unboximpl()));
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str4;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser4;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function13;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = ref$IntRef2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4 = autoCloseable2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5 = session2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = j2;
                                c = 3;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = 3;
                                objAwaitAvailableCamera = session2.awaitAvailableCamera(jM1862getRetryDelayMst8DbYm4$camera_camera2_pipe, retryingCameraStateOpenerImpl$openCameraWithRetry$1);
                            } else {
                                openCameraResult2 = openCameraResult;
                            }
                            this.cameraErrorListener.mo1832onCameraError3M5Xam4(str4, openCameraResult2.m1848getErrorCodemVEW8x0().m1557unboximpl(), zM1865shouldRetryrbpwgO0$camera_camera2_pipe);
                            if (zM1865shouldRetryrbpwgO0$camera_camera2_pipe) {
                            }
                        }
                        return coroutine_suspended;
                    }
                    j2 = retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0;
                    session2 = (CameraAvailabilityMonitor.Session) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5;
                    autoCloseable2 = (AutoCloseable) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4;
                    ref$IntRef2 = (Ref$IntRef) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3;
                    function13 = (Function1) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2;
                    camera2DeviceCloser4 = (Camera2DeviceCloser) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1;
                    str4 = (String) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0;
                    ResultKt.throwOnFailure(obj);
                    openCameraResult = (OpenCameraResult) obj;
                    Timestamps timestamps22 = Timestamps.INSTANCE;
                    long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(this.timeSource.mo1888nowvQl9yQU() - j2);
                    if (openCameraResult.getCameraState() != null) {
                    }
                }
                camera2DeviceCloser3 = camera2DeviceCloser2;
                long j4 = jMo1888nowvQl9yQU;
                str3 = str2;
                session = (CameraAvailabilityMonitor.Session) autoCloseable;
                j = j4;
                int i42 = ref$IntRef.element + i3;
                ref$IntRef.element = i42;
                CameraStateOpener cameraStateOpener2 = this.cameraStateOpener;
                AudioRestrictionController audioRestrictionController2 = this.audioRestrictionController;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str3;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser3;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function12;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = ref$IntRef;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4 = autoCloseable;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5 = session;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = j;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = i2;
                RetryingCameraStateOpenerImpl$openCameraWithRetry$1 retryingCameraStateOpenerImpl$openCameraWithRetry$122 = retryingCameraStateOpenerImpl$openCameraWithRetry$1;
                CameraAvailabilityMonitor.Session session32 = session;
                objM1847tryOpenCamera7pD7j80$camera_camera2_pipe = cameraStateOpener2.m1847tryOpenCamera7pD7j80$camera_camera2_pipe(str3, i42, j, camera2DeviceCloser3, audioRestrictionController2, retryingCameraStateOpenerImpl$openCameraWithRetry$122);
                if (objM1847tryOpenCamera7pD7j80$camera_camera2_pipe != coroutine_suspended) {
                }
                return coroutine_suspended;
            } catch (Throwable th) {
                th = th;
                r5 = autoCloseable;
                Throwable th2 = th;
                try {
                    throw th2;
                } catch (Throwable th3) {
                    AutoCloseableKt.closeFinally(r5, th2);
                    throw th3;
                }
            }
            autoCloseable = (AutoCloseable) obj;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    /* JADX INFO: renamed from: openAndAwaitCameraWithRetry-0r8Bogc */
    public AwaitOpenCameraResult mo1858openAndAwaitCameraWithRetry0r8Bogc(String cameraId, Camera2DeviceCloser camera2DeviceCloser) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(camera2DeviceCloser, "camera2DeviceCloser");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + "#openAndAwaitCameraWithRetry(" + ((Object) CameraId.m1607toStringimpl(cameraId)) + ')');
        }
        return (AwaitOpenCameraResult) BuildersKt.runBlocking(this.threads.getBlockingDispatcher(), new RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2(this, cameraId, camera2DeviceCloser, null));
    }

    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    public void cancelOpen() {
        this.cameraStateOpener.cancelOpen$camera_camera2_pipe();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: shouldRetry-rbpwgO0$camera_camera2_pipe, reason: not valid java name */
        public final boolean m1865shouldRetryrbpwgO0$camera_camera2_pipe(int i, int i2, long j, boolean z, boolean z2, DurationNs durationNs) {
            boolean zM1864shouldActivateActiveResume8PWMtlg$camera_camera2_pipe = m1864shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(z2, i);
            if (zM1864shouldActivateActiveResume8PWMtlg$camera_camera2_pipe && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "shouldRetry: Active resume mode is activated");
            }
            if (DurationNs.m1879compareTozYRVrok(j, m1863getRetryTimeoutNsom7c1s$camera_camera2_pipe(zM1864shouldActivateActiveResume8PWMtlg$camera_camera2_pipe, durationNs)) > 0) {
                return false;
            }
            CameraError.Companion companion = CameraError.Companion;
            if (CameraError.m1553equalsimpl0(i, companion.m1573getERROR_UNDETERMINEDv7Vf74A())) {
                return i2 <= 1;
            }
            if (CameraError.m1553equalsimpl0(i, companion.m1564getERROR_CAMERA_IN_USEv7Vf74A())) {
                return Build.VERSION.SDK_INT >= 29 || i2 <= 1;
            }
            if (CameraError.m1553equalsimpl0(i, companion.m1565getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A())) {
                return true;
            }
            if (CameraError.m1553equalsimpl0(i, companion.m1562getERROR_CAMERA_DISABLEDv7Vf74A())) {
                return !z || i2 <= 1;
            }
            if (CameraError.m1553equalsimpl0(i, companion.m1561getERROR_CAMERA_DEVICEv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1568getERROR_CAMERA_SERVICEv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1563getERROR_CAMERA_DISCONNECTEDv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1571getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A())) {
                return true;
            }
            if (CameraError.m1553equalsimpl0(i, companion.m1572getERROR_SECURITY_EXCEPTIONv7Vf74A())) {
                return i2 <= 1;
            }
            if (CameraError.m1553equalsimpl0(i, companion.m1569getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A())) {
                return false;
            }
            if (CameraError.m1553equalsimpl0(i, companion.m1574getERROR_UNKNOWN_EXCEPTIONv7Vf74A())) {
                return i2 <= 1;
            }
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Unexpected CameraError: " + RetryingCameraStateOpenerImpl.Companion);
            }
            return false;
        }

        /* JADX INFO: renamed from: shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe, reason: not valid java name */
        public final boolean m1864shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(boolean z, int i) {
            int i2;
            if (!z || 29 > (i2 = Build.VERSION.SDK_INT) || i2 >= 33) {
                return false;
            }
            CameraError.Companion companion = CameraError.Companion;
            return CameraError.m1553equalsimpl0(i, companion.m1564getERROR_CAMERA_IN_USEv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1565getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1563getERROR_CAMERA_DISCONNECTEDv7Vf74A());
        }

        /* JADX INFO: renamed from: getRetryTimeoutNs-om-7c1s$camera_camera2_pipe, reason: not valid java name */
        public final long m1863getRetryTimeoutNsom7c1s$camera_camera2_pipe(boolean z, DurationNs durationNs) {
            return !z ? m1861minL1EDjxI(RetryingCameraStateOpenerKt.defaultCameraRetryTimeoutNs, durationNs) : m1861minL1EDjxI(RetryingCameraStateOpenerKt.activeResumeCameraRetryTimeoutNs, durationNs);
        }

        /* JADX INFO: renamed from: getRetryDelayMs-t8DbYm4$camera_camera2_pipe, reason: not valid java name */
        public final long m1862getRetryDelayMst8DbYm4$camera_camera2_pipe(long j, boolean z) {
            if (z && DurationNs.m1879compareTozYRVrok(j, RetryingCameraStateOpenerKt.activeResumeCameraRetryThresholds[0].m1884unboximpl()) >= 0) {
                return DurationNs.m1879compareTozYRVrok(j, RetryingCameraStateOpenerKt.activeResumeCameraRetryThresholds[1].m1884unboximpl()) < 0 ? 2000L : 4000L;
            }
            return 500L;
        }

        /* JADX INFO: renamed from: min-L1EDjxI, reason: not valid java name */
        private final long m1861minL1EDjxI(long j, DurationNs durationNs) {
            return (durationNs == null || DurationNs.m1879compareTozYRVrok(j, durationNs.m1884unboximpl()) == -1) ? j : durationNs.m1884unboximpl();
        }
    }
}
