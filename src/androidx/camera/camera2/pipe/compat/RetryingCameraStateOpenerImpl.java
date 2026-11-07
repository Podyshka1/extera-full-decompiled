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
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 %2\u00020\u0001:\u0001%BK\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J4\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0096@¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\"\u0010#J\b\u0010$\u001a\u00020\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;", "Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;", "cameraStateOpener", "Landroidx/camera/camera2/pipe/compat/CameraStateOpener;", "cameraErrorListener", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "cameraAvailabilityMonitor", "Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;", "timeSource", "Landroidx/camera/camera2/pipe/core/TimeSource;", "devicePolicyManager", "Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;", "audioRestrictionController", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;", "cameraInteropConfig", "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V", "openCameraWithRetry", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "camera2DeviceCloser", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;", "isForegroundObserver", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "openCameraWithRetry-aeCOTgg", "(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "openAndAwaitCameraWithRetry", "Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;", "openAndAwaitCameraWithRetry-0r8Bogc", "(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;", "cancelOpen", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl\n+ 2 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 3 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n70#2:666\n70#2:667\n70#2:672\n74#2,2:674\n29#3:668\n29#3:673\n71#4,2:669\n82#4:671\n83#4:676\n50#4,2:677\n50#4,2:679\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl\n*L\n415#1:666\n430#1:667\n467#1:672\n467#1:674,2\n430#1:668\n467#1:673\n440#1:669,2\n465#1:671\n465#1:676\n484#1:677,2\n495#1:679,2\n*E\n"})
public final class RetryingCameraStateOpenerImpl implements RetryingCameraStateOpener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final AudioRestrictionController audioRestrictionController;
    private final CameraAvailabilityMonitor cameraAvailabilityMonitor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraPipe.CameraInteropConfig cameraInteropConfig;
    private final CameraStateOpener cameraStateOpener;
    private final DevicePolicyManagerWrapper devicePolicyManager;
    private final Threads threads;
    private final TimeSource timeSource;

    public RetryingCameraStateOpenerImpl(CameraStateOpener cameraStateOpener, CameraErrorListener cameraErrorListener, CameraAvailabilityMonitor cameraAvailabilityMonitor, TimeSource timeSource, DevicePolicyManagerWrapper devicePolicyManagerWrapper, AudioRestrictionController audioRestrictionController, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        this.cameraStateOpener = cameraStateOpener;
        this.cameraErrorListener = cameraErrorListener;
        this.cameraAvailabilityMonitor = cameraAvailabilityMonitor;
        this.timeSource = timeSource;
        this.devicePolicyManager = devicePolicyManagerWrapper;
        this.audioRestrictionController = audioRestrictionController;
        this.cameraInteropConfig = cameraInteropConfig;
        this.threads = threads;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012f A[Catch: all -> 0x005e, TRY_ENTER, TryCatch #2 {all -> 0x005e, blocks: (B:14:0x004e, B:68:0x0259, B:70:0x0261, B:72:0x0269, B:35:0x0115, B:39:0x012f, B:41:0x0135, B:43:0x013d, B:46:0x0147, B:48:0x0169, B:51:0x0175, B:53:0x0181, B:57:0x018f, B:59:0x019e, B:61:0x01a6, B:65:0x022d, B:22:0x0082), top: B:84:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x019e A[Catch: all -> 0x005e, TryCatch #2 {all -> 0x005e, blocks: (B:14:0x004e, B:68:0x0259, B:70:0x0261, B:72:0x0269, B:35:0x0115, B:39:0x012f, B:41:0x0135, B:43:0x013d, B:46:0x0147, B:48:0x0169, B:51:0x0175, B:53:0x0181, B:57:0x018f, B:59:0x019e, B:61:0x01a6, B:65:0x022d, B:22:0x0082), top: B:84:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0256 -> B:16:0x0056). Please report as a decompilation issue!!! */
    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    /* JADX INFO: renamed from: openCameraWithRetry-aeCOTgg */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo1547openCameraWithRetryaeCOTgg(String str, Camera2DeviceCloser camera2DeviceCloser, Function1<? super Unit, Boolean> function1, Continuation<? super OpenCameraResult> continuation) throws Exception {
        RetryingCameraStateOpenerImpl$openCameraWithRetry$1 retryingCameraStateOpenerImpl$openCameraWithRetry$1;
        Throwable th;
        ?? r5;
        long jMo1575nowvQl9yQU;
        Camera2DeviceCloser camera2DeviceCloser2;
        String str2;
        Ref.IntRef intRef;
        Function1<? super Unit, Boolean> function12;
        AutoCloseable autoCloseable;
        CameraAvailabilityMonitor.Session session;
        long j;
        String str3;
        Camera2DeviceCloser camera2DeviceCloser3;
        Function1<? super Unit, Boolean> function13;
        Ref.IntRef intRef2;
        long j2;
        String str4;
        AutoCloseable autoCloseable2;
        CameraAvailabilityMonitor.Session session2;
        OpenCameraResult openCameraResult;
        OpenCameraResult openCameraResult2;
        Object obj;
        Object objM1533tryOpenCamera7pD7j80$camera_camera2_pipe;
        if (continuation instanceof RetryingCameraStateOpenerImpl$openCameraWithRetry$1) {
            retryingCameraStateOpenerImpl$openCameraWithRetry$1 = (RetryingCameraStateOpenerImpl$openCameraWithRetry$1) continuation;
            int i = retryingCameraStateOpenerImpl$openCameraWithRetry$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = i - Integer.MIN_VALUE;
            } else {
                retryingCameraStateOpenerImpl$openCameraWithRetry$1 = new RetryingCameraStateOpenerImpl$openCameraWithRetry$1(this, continuation);
            }
        }
        Object obj2 = retryingCameraStateOpenerImpl$openCameraWithRetry$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = retryingCameraStateOpenerImpl$openCameraWithRetry$1.label;
        int i3 = 2;
        int i4 = 1;
        try {
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj2);
                    Timestamps timestamps = Timestamps.INSTANCE;
                    jMo1575nowvQl9yQU = this.timeSource.mo1575nowvQl9yQU();
                    Ref.IntRef intRef3 = new Ref.IntRef();
                    CameraAvailabilityMonitor cameraAvailabilityMonitor = this.cameraAvailabilityMonitor;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str;
                    camera2DeviceCloser2 = camera2DeviceCloser;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser2;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function1;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = intRef3;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = jMo1575nowvQl9yQU;
                    retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = 1;
                    Object objMo1498startMonitoring0r8Bogc = cameraAvailabilityMonitor.mo1498startMonitoring0r8Bogc(str, retryingCameraStateOpenerImpl$openCameraWithRetry$1);
                    if (objMo1498startMonitoring0r8Bogc != coroutine_suspended) {
                        str2 = str;
                        intRef = intRef3;
                        obj2 = objMo1498startMonitoring0r8Bogc;
                        function12 = function1;
                    }
                    return coroutine_suspended;
                }
                if (i2 == 1) {
                    jMo1575nowvQl9yQU = retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0;
                    intRef = (Ref.IntRef) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3;
                    function12 = (Function1) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2;
                    camera2DeviceCloser2 = (Camera2DeviceCloser) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1;
                    str2 = (String) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0;
                    ResultKt.throwOnFailure(obj2);
                } else {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        j2 = retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0;
                        session2 = (CameraAvailabilityMonitor.Session) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5;
                        autoCloseable2 = (AutoCloseable) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4;
                        intRef2 = (Ref.IntRef) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3;
                        function13 = (Function1) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2;
                        camera2DeviceCloser3 = (Camera2DeviceCloser) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1;
                        str4 = (String) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0;
                        ResultKt.throwOnFailure(obj2);
                        Object obj3 = coroutine_suspended;
                        int i5 = 1;
                        Object objAwaitAvailableCamera = obj2;
                        long j3 = j2;
                        session = session2;
                        str3 = str4;
                        intRef = intRef2;
                        camera2DeviceCloser2 = camera2DeviceCloser3;
                        if (!((Boolean) objAwaitAvailableCamera).booleanValue() && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Timeout expired, retrying camera open for camera " + ((Object) CameraId.m1303toStringimpl(str3)));
                        }
                        Object obj4 = obj3;
                        i4 = i5;
                        coroutine_suspended = obj4;
                        autoCloseable = autoCloseable2;
                        function12 = function13;
                        j = j3;
                        i3 = 2;
                        int i6 = intRef.element + i4;
                        intRef.element = i6;
                        CameraStateOpener cameraStateOpener = this.cameraStateOpener;
                        AudioRestrictionController audioRestrictionController = this.audioRestrictionController;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str3;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser2;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function12;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = intRef;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4 = autoCloseable;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5 = session;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = j;
                        retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = i3;
                        RetryingCameraStateOpenerImpl$openCameraWithRetry$1 retryingCameraStateOpenerImpl$openCameraWithRetry$12 = retryingCameraStateOpenerImpl$openCameraWithRetry$1;
                        Camera2DeviceCloser camera2DeviceCloser4 = camera2DeviceCloser2;
                        CameraAvailabilityMonitor.Session session3 = session;
                        objM1533tryOpenCamera7pD7j80$camera_camera2_pipe = cameraStateOpener.m1533tryOpenCamera7pD7j80$camera_camera2_pipe(str3, i6, j, camera2DeviceCloser4, audioRestrictionController, retryingCameraStateOpenerImpl$openCameraWithRetry$12);
                        if (objM1533tryOpenCamera7pD7j80$camera_camera2_pipe != coroutine_suspended) {
                            Function1<? super Unit, Boolean> function14 = function12;
                            autoCloseable2 = autoCloseable;
                            obj2 = objM1533tryOpenCamera7pD7j80$camera_camera2_pipe;
                            str4 = str3;
                            j2 = j;
                            function13 = function14;
                            intRef2 = intRef;
                            session2 = session3;
                            camera2DeviceCloser3 = camera2DeviceCloser4;
                            retryingCameraStateOpenerImpl$openCameraWithRetry$1 = retryingCameraStateOpenerImpl$openCameraWithRetry$12;
                            openCameraResult = (OpenCameraResult) obj2;
                            Timestamps timestamps2 = Timestamps.INSTANCE;
                            long jM1567constructorimpl = DurationNs.m1567constructorimpl(this.timeSource.mo1575nowvQl9yQU() - j2);
                            if (openCameraResult.getCameraState() != null) {
                                AutoCloseableKt.closeFinally(autoCloseable2, null);
                                return openCameraResult;
                            }
                            if (openCameraResult.getErrorCode() == null) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Camera open failed without an error. The CameraGraph may have been stopped or closed. Abandoning the camera open attempt.");
                                }
                                AutoCloseableKt.closeFinally(autoCloseable2, null);
                                return openCameraResult;
                            }
                            boolean zBooleanValue = function13.invoke(Unit.INSTANCE).booleanValue();
                            Companion companion = INSTANCE;
                            int value = openCameraResult.getErrorCode().getValue();
                            int i7 = intRef2.element;
                            boolean camerasDisabled = this.devicePolicyManager.getCamerasDisabled();
                            CameraPipe.CameraInteropConfig cameraInteropConfig = this.cameraInteropConfig;
                            boolean zM1552shouldRetryrbpwgO0$camera_camera2_pipe = companion.m1552shouldRetryrbpwgO0$camera_camera2_pipe(value, i7, jM1567constructorimpl, camerasDisabled, zBooleanValue, cameraInteropConfig != null ? cameraInteropConfig.getCameraOpenRetryMaxTimeoutNs() : null);
                            if (zM1552shouldRetryrbpwgO0$camera_camera2_pipe) {
                                openCameraResult2 = openCameraResult;
                                obj = coroutine_suspended;
                                if (intRef2.element > 1) {
                                }
                                if (zM1552shouldRetryrbpwgO0$camera_camera2_pipe) {
                                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("Failed to open camera ");
                                        sb.append((Object) CameraId.m1303toStringimpl(str4));
                                        sb.append(" after ");
                                        sb.append(intRef2.element);
                                        sb.append(" attempts and ");
                                        sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Boxing.boxDouble(DurationNs.m1567constructorimpl(this.timeSource.mo1575nowvQl9yQU() - j2) / 1000000.0d)}, 1)));
                                        sb.append(". Last error was ");
                                        sb.append((Object) CameraError.m1252toStringimpl(openCameraResult2.getErrorCode().getValue()));
                                        sb.append('.');
                                        android.util.Log.e("CXCP", sb.toString());
                                    }
                                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                                    return openCameraResult2;
                                }
                                i5 = 1;
                                long jM1549getRetryDelayMst8DbYm4$camera_camera2_pipe = companion.m1549getRetryDelayMst8DbYm4$camera_camera2_pipe(jM1567constructorimpl, companion.m1551shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(zBooleanValue, openCameraResult2.getErrorCode().getValue()));
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str4;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser3;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function13;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = intRef2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4 = autoCloseable2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5 = session2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = j2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = 3;
                                objAwaitAvailableCamera = session2.awaitAvailableCamera(jM1549getRetryDelayMst8DbYm4$camera_camera2_pipe, retryingCameraStateOpenerImpl$openCameraWithRetry$1);
                                obj3 = obj;
                                if (objAwaitAvailableCamera == obj3) {
                                    return obj3;
                                }
                                long j32 = j2;
                                session = session2;
                                str3 = str4;
                                intRef = intRef2;
                                camera2DeviceCloser2 = camera2DeviceCloser3;
                                if (!((Boolean) objAwaitAvailableCamera).booleanValue()) {
                                    android.util.Log.d("CXCP", "Timeout expired, retrying camera open for camera " + ((Object) CameraId.m1303toStringimpl(str3)));
                                }
                                Object obj42 = obj3;
                                i4 = i5;
                                coroutine_suspended = obj42;
                                autoCloseable = autoCloseable2;
                                function12 = function13;
                                j = j32;
                                i3 = 2;
                                int i62 = intRef.element + i4;
                                intRef.element = i62;
                                CameraStateOpener cameraStateOpener2 = this.cameraStateOpener;
                                AudioRestrictionController audioRestrictionController2 = this.audioRestrictionController;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str3;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser2;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function12;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = intRef;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4 = autoCloseable;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5 = session;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = j;
                                retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = i3;
                                RetryingCameraStateOpenerImpl$openCameraWithRetry$1 retryingCameraStateOpenerImpl$openCameraWithRetry$122 = retryingCameraStateOpenerImpl$openCameraWithRetry$1;
                                Camera2DeviceCloser camera2DeviceCloser42 = camera2DeviceCloser2;
                                CameraAvailabilityMonitor.Session session32 = session;
                                objM1533tryOpenCamera7pD7j80$camera_camera2_pipe = cameraStateOpener2.m1533tryOpenCamera7pD7j80$camera_camera2_pipe(str3, i62, j, camera2DeviceCloser42, audioRestrictionController2, retryingCameraStateOpenerImpl$openCameraWithRetry$122);
                                if (objM1533tryOpenCamera7pD7j80$camera_camera2_pipe != coroutine_suspended) {
                                }
                            } else {
                                openCameraResult2 = openCameraResult;
                                obj = coroutine_suspended;
                            }
                            this.cameraErrorListener.mo1518onCameraError3M5Xam4(str4, openCameraResult2.getErrorCode().getValue(), zM1552shouldRetryrbpwgO0$camera_camera2_pipe);
                            if (zM1552shouldRetryrbpwgO0$camera_camera2_pipe) {
                            }
                        }
                        return coroutine_suspended;
                    }
                    j2 = retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0;
                    session2 = (CameraAvailabilityMonitor.Session) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5;
                    autoCloseable2 = (AutoCloseable) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4;
                    Ref.IntRef intRef4 = (Ref.IntRef) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3;
                    Function1<? super Unit, Boolean> function15 = (Function1) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2;
                    Camera2DeviceCloser camera2DeviceCloser5 = (Camera2DeviceCloser) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1;
                    String str5 = (String) retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0;
                    ResultKt.throwOnFailure(obj2);
                    intRef2 = intRef4;
                    str4 = str5;
                    camera2DeviceCloser3 = camera2DeviceCloser5;
                    function13 = function15;
                    openCameraResult = (OpenCameraResult) obj2;
                    Timestamps timestamps22 = Timestamps.INSTANCE;
                    long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(this.timeSource.mo1575nowvQl9yQU() - j2);
                    if (openCameraResult.getCameraState() != null) {
                    }
                }
                long j4 = jMo1575nowvQl9yQU;
                session = (CameraAvailabilityMonitor.Session) autoCloseable;
                j = j4;
                str3 = str2;
                int i622 = intRef.element + i4;
                intRef.element = i622;
                CameraStateOpener cameraStateOpener22 = this.cameraStateOpener;
                AudioRestrictionController audioRestrictionController22 = this.audioRestrictionController;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$0 = str3;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$1 = camera2DeviceCloser2;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$2 = function12;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$3 = intRef;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$4 = autoCloseable;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.L$5 = session;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.J$0 = j;
                retryingCameraStateOpenerImpl$openCameraWithRetry$1.label = i3;
                RetryingCameraStateOpenerImpl$openCameraWithRetry$1 retryingCameraStateOpenerImpl$openCameraWithRetry$1222 = retryingCameraStateOpenerImpl$openCameraWithRetry$1;
                Camera2DeviceCloser camera2DeviceCloser422 = camera2DeviceCloser2;
                CameraAvailabilityMonitor.Session session322 = session;
                objM1533tryOpenCamera7pD7j80$camera_camera2_pipe = cameraStateOpener22.m1533tryOpenCamera7pD7j80$camera_camera2_pipe(str3, i622, j, camera2DeviceCloser422, audioRestrictionController22, retryingCameraStateOpenerImpl$openCameraWithRetry$1222);
                if (objM1533tryOpenCamera7pD7j80$camera_camera2_pipe != coroutine_suspended) {
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                th = th2;
                r5 = autoCloseable;
                try {
                    throw th;
                } catch (Throwable th3) {
                    AutoCloseableKt.closeFinally(r5, th);
                    throw th3;
                }
            }
            autoCloseable = (AutoCloseable) obj2;
        } catch (Throwable th4) {
            th = th4;
            r5 = i2;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    /* JADX INFO: renamed from: openAndAwaitCameraWithRetry-0r8Bogc */
    public AwaitOpenCameraResult mo1546openAndAwaitCameraWithRetry0r8Bogc(String cameraId, Camera2DeviceCloser camera2DeviceCloser) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + "#openAndAwaitCameraWithRetry(" + ((Object) CameraId.m1303toStringimpl(cameraId)) + ')');
        }
        return (AwaitOpenCameraResult) BuildersKt.runBlocking(this.threads.getBlockingDispatcher(), new RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2(this, cameraId, camera2DeviceCloser, null));
    }

    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    public void cancelOpen() {
        this.cameraStateOpener.cancelOpen$camera_camera2_pipe();
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JE\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "shouldRetry", _UrlKt.FRAGMENT_ENCODE_SET, "errorCode", "Landroidx/camera/camera2/pipe/CameraError;", "attempts", _UrlKt.FRAGMENT_ENCODE_SET, "elapsedNs", "Landroidx/camera/camera2/pipe/core/DurationNs;", "camerasDisabledByDevicePolicy", "isForeground", "cameraOpenRetryMaxTimeoutNs", "shouldRetry-rbpwgO0$camera_camera2_pipe", "(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z", "shouldActivateActiveResume", "shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe", "(ZI)Z", "getRetryTimeoutNs", "activeResumeActivated", "getRetryTimeoutNs-om-7c1s$camera_camera2_pipe", "(ZLandroidx/camera/camera2/pipe/core/DurationNs;)J", "getRetryDelayMs", _UrlKt.FRAGMENT_ENCODE_SET, "getRetryDelayMs-t8DbYm4$camera_camera2_pipe", "(JZ)J", "min", "d1", "d2", "min-L1EDjxI", "(JLandroidx/camera/camera2/pipe/core/DurationNs;)J", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n50#2,2:666\n82#2,2:668\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion\n*L\n528#1:666,2\n614#1:668,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: shouldRetry-rbpwgO0$camera_camera2_pipe, reason: not valid java name */
        public final boolean m1552shouldRetryrbpwgO0$camera_camera2_pipe(int errorCode, int attempts, long elapsedNs, boolean camerasDisabledByDevicePolicy, boolean isForeground, DurationNs cameraOpenRetryMaxTimeoutNs) {
            boolean zM1551shouldActivateActiveResume8PWMtlg$camera_camera2_pipe = m1551shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(isForeground, errorCode);
            if (zM1551shouldActivateActiveResume8PWMtlg$camera_camera2_pipe && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "shouldRetry: Active resume mode is activated");
            }
            if (DurationNs.m1566compareTozYRVrok(elapsedNs, m1550getRetryTimeoutNsom7c1s$camera_camera2_pipe(zM1551shouldActivateActiveResume8PWMtlg$camera_camera2_pipe, cameraOpenRetryMaxTimeoutNs)) > 0) {
                return false;
            }
            CameraError.Companion companion = CameraError.INSTANCE;
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1269getERROR_UNDETERMINEDv7Vf74A())) {
                return attempts <= 1;
            }
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1260getERROR_CAMERA_IN_USEv7Vf74A())) {
                return Build.VERSION.SDK_INT >= 29 || attempts <= 1;
            }
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1261getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A())) {
                return true;
            }
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1258getERROR_CAMERA_DISABLEDv7Vf74A())) {
                return !camerasDisabledByDevicePolicy || attempts <= 1;
            }
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1257getERROR_CAMERA_DEVICEv7Vf74A()) || CameraError.m1249equalsimpl0(errorCode, companion.m1264getERROR_CAMERA_SERVICEv7Vf74A()) || CameraError.m1249equalsimpl0(errorCode, companion.m1259getERROR_CAMERA_DISCONNECTEDv7Vf74A()) || CameraError.m1249equalsimpl0(errorCode, companion.m1267getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A())) {
                return true;
            }
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1268getERROR_SECURITY_EXCEPTIONv7Vf74A())) {
                return attempts <= 1;
            }
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1265getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A())) {
                return false;
            }
            if (CameraError.m1249equalsimpl0(errorCode, companion.m1270getERROR_UNKNOWN_EXCEPTIONv7Vf74A())) {
                return attempts <= 1;
            }
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Unexpected CameraError: " + RetryingCameraStateOpenerImpl.INSTANCE);
            }
            return false;
        }

        /* JADX INFO: renamed from: shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe, reason: not valid java name */
        public final boolean m1551shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(boolean isForeground, int errorCode) {
            int i;
            if (!isForeground || 29 > (i = Build.VERSION.SDK_INT) || i >= 33) {
                return false;
            }
            CameraError.Companion companion = CameraError.INSTANCE;
            return CameraError.m1249equalsimpl0(errorCode, companion.m1260getERROR_CAMERA_IN_USEv7Vf74A()) || CameraError.m1249equalsimpl0(errorCode, companion.m1261getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A()) || CameraError.m1249equalsimpl0(errorCode, companion.m1259getERROR_CAMERA_DISCONNECTEDv7Vf74A());
        }

        /* JADX INFO: renamed from: getRetryTimeoutNs-om-7c1s$camera_camera2_pipe, reason: not valid java name */
        public final long m1550getRetryTimeoutNsom7c1s$camera_camera2_pipe(boolean activeResumeActivated, DurationNs cameraOpenRetryMaxTimeoutNs) {
            return !activeResumeActivated ? m1548minL1EDjxI(RetryingCameraStateOpenerKt.defaultCameraRetryTimeoutNs, cameraOpenRetryMaxTimeoutNs) : m1548minL1EDjxI(RetryingCameraStateOpenerKt.activeResumeCameraRetryTimeoutNs, cameraOpenRetryMaxTimeoutNs);
        }

        /* JADX INFO: renamed from: getRetryDelayMs-t8DbYm4$camera_camera2_pipe, reason: not valid java name */
        public final long m1549getRetryDelayMst8DbYm4$camera_camera2_pipe(long elapsedNs, boolean activeResumeActivated) {
            if (activeResumeActivated && DurationNs.m1566compareTozYRVrok(elapsedNs, RetryingCameraStateOpenerKt.activeResumeCameraRetryThresholds[0].getValue()) >= 0) {
                return DurationNs.m1566compareTozYRVrok(elapsedNs, RetryingCameraStateOpenerKt.activeResumeCameraRetryThresholds[1].getValue()) < 0 ? 2000L : 4000L;
            }
            return 500L;
        }

        /* JADX INFO: renamed from: min-L1EDjxI, reason: not valid java name */
        private final long m1548minL1EDjxI(long d1, DurationNs d2) {
            return (d2 == null || DurationNs.m1566compareTozYRVrok(d1, d2.getValue()) == -1) ? d1 : d2.getValue();
        }
    }
}
