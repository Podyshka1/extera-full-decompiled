package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraStateOpener {
    private static final Companion Companion = new Companion(null);
    private final Camera2MetadataProvider camera2MetadataProvider;
    private final Camera2Quirks camera2Quirks;
    private final CameraErrorListener cameraErrorListener;
    private final CameraPipe.CameraInteropConfig cameraInteropConfig;
    private CompletableDeferred cameraOpenCancelled;
    private final CameraOpener cameraOpener;
    private final Threads threads;
    private final TimeSource timeSource;

    public CameraStateOpener(CameraOpener cameraOpener, Camera2MetadataProvider camera2MetadataProvider, CameraErrorListener cameraErrorListener, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        Intrinsics.checkNotNullParameter(cameraOpener, "cameraOpener");
        Intrinsics.checkNotNullParameter(camera2MetadataProvider, "camera2MetadataProvider");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(camera2Quirks, "camera2Quirks");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.cameraOpener = cameraOpener;
        this.camera2MetadataProvider = camera2MetadataProvider;
        this.cameraErrorListener = cameraErrorListener;
        this.camera2Quirks = camera2Quirks;
        this.timeSource = timeSource;
        this.cameraInteropConfig = cameraInteropConfig;
        this.threads = threads;
        this.cameraOpenCancelled = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX INFO: renamed from: tryOpenCamera-7pD7j80$camera_camera2_pipe, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1847tryOpenCamera7pD7j80$camera_camera2_pipe(String str, int i, long j, Camera2DeviceCloser camera2DeviceCloser, AudioRestrictionController audioRestrictionController, Continuation continuation) {
        CameraStateOpener$tryOpenCamera$1 cameraStateOpener$tryOpenCamera$1;
        Camera2DeviceCloser camera2DeviceCloser2;
        AudioRestrictionController audioRestrictionController2;
        long j2;
        String str2;
        int i2;
        if (continuation instanceof CameraStateOpener$tryOpenCamera$1) {
            cameraStateOpener$tryOpenCamera$1 = (CameraStateOpener$tryOpenCamera$1) continuation;
            int i3 = cameraStateOpener$tryOpenCamera$1.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                cameraStateOpener$tryOpenCamera$1.label = i3 - Integer.MIN_VALUE;
            } else {
                cameraStateOpener$tryOpenCamera$1 = new CameraStateOpener$tryOpenCamera$1(this, continuation);
            }
        }
        Object objMo1842getCameraMetadata0r8Bogc = cameraStateOpener$tryOpenCamera$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = cameraStateOpener$tryOpenCamera$1.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objMo1842getCameraMetadata0r8Bogc);
            Camera2MetadataProvider camera2MetadataProvider = this.camera2MetadataProvider;
            cameraStateOpener$tryOpenCamera$1.L$0 = str;
            cameraStateOpener$tryOpenCamera$1.L$1 = camera2DeviceCloser;
            cameraStateOpener$tryOpenCamera$1.L$2 = audioRestrictionController;
            cameraStateOpener$tryOpenCamera$1.I$0 = i;
            cameraStateOpener$tryOpenCamera$1.J$0 = j;
            cameraStateOpener$tryOpenCamera$1.label = 1;
            objMo1842getCameraMetadata0r8Bogc = camera2MetadataProvider.mo1842getCameraMetadata0r8Bogc(str, cameraStateOpener$tryOpenCamera$1);
            if (objMo1842getCameraMetadata0r8Bogc != coroutine_suspended) {
                camera2DeviceCloser2 = camera2DeviceCloser;
                audioRestrictionController2 = audioRestrictionController;
                j2 = j;
                str2 = str;
                i2 = i;
            }
        }
        if (i4 != 1) {
            if (i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objMo1842getCameraMetadata0r8Bogc);
            return objMo1842getCameraMetadata0r8Bogc;
        }
        long j3 = cameraStateOpener$tryOpenCamera$1.J$0;
        int i5 = cameraStateOpener$tryOpenCamera$1.I$0;
        AudioRestrictionController audioRestrictionController3 = (AudioRestrictionController) cameraStateOpener$tryOpenCamera$1.L$2;
        Camera2DeviceCloser camera2DeviceCloser3 = (Camera2DeviceCloser) cameraStateOpener$tryOpenCamera$1.L$1;
        String str3 = (String) cameraStateOpener$tryOpenCamera$1.L$0;
        ResultKt.throwOnFailure(objMo1842getCameraMetadata0r8Bogc);
        audioRestrictionController2 = audioRestrictionController3;
        j2 = j3;
        camera2DeviceCloser2 = camera2DeviceCloser3;
        str2 = str3;
        i2 = i5;
        CameraMetadata cameraMetadata = (CameraMetadata) objMo1842getCameraMetadata0r8Bogc;
        TimeSource timeSource = this.timeSource;
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        Camera2Quirks camera2Quirks = this.camera2Quirks;
        Threads threads = this.threads;
        CameraPipe.CameraInteropConfig cameraInteropConfig = this.cameraInteropConfig;
        CameraDevice.StateCallback cameraDeviceStateCallback = cameraInteropConfig != null ? cameraInteropConfig.getCameraDeviceStateCallback() : null;
        CameraPipe.CameraInteropConfig cameraInteropConfig2 = this.cameraInteropConfig;
        CameraStateOpener$tryOpenCamera$2 cameraStateOpener$tryOpenCamera$2 = new CameraStateOpener$tryOpenCamera$2(this, str2, new AndroidCameraState(str2, cameraMetadata, i2, j2, timeSource, cameraErrorListener, camera2DeviceCloser2, camera2Quirks, threads, audioRestrictionController2, cameraDeviceStateCallback, cameraInteropConfig2 != null ? cameraInteropConfig2.getCameraCaptureSessionListener() : null, null), null);
        cameraStateOpener$tryOpenCamera$1.L$0 = null;
        cameraStateOpener$tryOpenCamera$1.L$1 = null;
        cameraStateOpener$tryOpenCamera$1.L$2 = null;
        cameraStateOpener$tryOpenCamera$1.label = 2;
        Object objSupervisorScope = SupervisorKt.supervisorScope(cameraStateOpener$tryOpenCamera$2, cameraStateOpener$tryOpenCamera$1);
        return objSupervisorScope == coroutine_suspended ? coroutine_suspended : objSupervisorScope;
    }

    public final void cancelOpen$camera_camera2_pipe() {
        this.cameraOpenCancelled.complete(Unit.INSTANCE);
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
