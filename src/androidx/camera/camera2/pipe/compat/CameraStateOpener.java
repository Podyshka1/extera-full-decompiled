package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 %2\u00020\u0001:\u0001%BC\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J8\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0080@¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0014H\u0000¢\u0006\u0002\b$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/camera/camera2/pipe/compat/CameraStateOpener;", _UrlKt.FRAGMENT_ENCODE_SET, "cameraOpener", "Landroidx/camera/camera2/pipe/compat/CameraOpener;", "camera2MetadataProvider", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;", "cameraErrorListener", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "camera2Quirks", "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;", "timeSource", "Landroidx/camera/camera2/pipe/core/TimeSource;", "cameraInteropConfig", "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V", "cameraOpenCancelled", "Lkotlinx/coroutines/CompletableDeferred;", _UrlKt.FRAGMENT_ENCODE_SET, "tryOpenCamera", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "attempts", _UrlKt.FRAGMENT_ENCODE_SET, "requestTimestamp", "Landroidx/camera/camera2/pipe/core/TimestampNs;", "camera2DeviceCloser", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;", "audioRestrictionController", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;", "tryOpenCamera-7pD7j80$camera_camera2_pipe", "(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelOpen", "cancelOpen$camera_camera2_pipe", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraStateOpener {
    private static final Companion Companion = new Companion(null);
    private final Camera2MetadataProvider camera2MetadataProvider;
    private final Camera2Quirks camera2Quirks;
    private final CameraErrorListener cameraErrorListener;
    private final CameraPipe.CameraInteropConfig cameraInteropConfig;
    private CompletableDeferred<Unit> cameraOpenCancelled = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    private final CameraOpener cameraOpener;
    private final Threads threads;
    private final TimeSource timeSource;

    public CameraStateOpener(CameraOpener cameraOpener, Camera2MetadataProvider camera2MetadataProvider, CameraErrorListener cameraErrorListener, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        this.cameraOpener = cameraOpener;
        this.camera2MetadataProvider = camera2MetadataProvider;
        this.cameraErrorListener = cameraErrorListener;
        this.camera2Quirks = camera2Quirks;
        this.timeSource = timeSource;
        this.cameraInteropConfig = cameraInteropConfig;
        this.threads = threads;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX INFO: renamed from: tryOpenCamera-7pD7j80$camera_camera2_pipe, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1443tryOpenCamera7pD7j80$camera_camera2_pipe(String str, int i, long j, Camera2DeviceCloser camera2DeviceCloser, AudioRestrictionController audioRestrictionController, Continuation<? super OpenCameraResult> continuation) {
        CameraStateOpener$tryOpenCamera$1 cameraStateOpener$tryOpenCamera$1;
        Camera2DeviceCloser camera2DeviceCloser2;
        AudioRestrictionController audioRestrictionController2;
        long j2;
        int i2;
        String str2;
        if (continuation instanceof CameraStateOpener$tryOpenCamera$1) {
            cameraStateOpener$tryOpenCamera$1 = (CameraStateOpener$tryOpenCamera$1) continuation;
            int i3 = cameraStateOpener$tryOpenCamera$1.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                cameraStateOpener$tryOpenCamera$1.label = i3 - Integer.MIN_VALUE;
            } else {
                cameraStateOpener$tryOpenCamera$1 = new CameraStateOpener$tryOpenCamera$1(this, continuation);
            }
        }
        Object objMo1438getCameraMetadata0r8Bogc = cameraStateOpener$tryOpenCamera$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = cameraStateOpener$tryOpenCamera$1.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objMo1438getCameraMetadata0r8Bogc);
            Camera2MetadataProvider camera2MetadataProvider = this.camera2MetadataProvider;
            cameraStateOpener$tryOpenCamera$1.L$0 = str;
            cameraStateOpener$tryOpenCamera$1.L$1 = camera2DeviceCloser;
            cameraStateOpener$tryOpenCamera$1.L$2 = audioRestrictionController;
            cameraStateOpener$tryOpenCamera$1.I$0 = i;
            cameraStateOpener$tryOpenCamera$1.J$0 = j;
            cameraStateOpener$tryOpenCamera$1.label = 1;
            objMo1438getCameraMetadata0r8Bogc = camera2MetadataProvider.mo1438getCameraMetadata0r8Bogc(str, cameraStateOpener$tryOpenCamera$1);
            if (objMo1438getCameraMetadata0r8Bogc != coroutine_suspended) {
                camera2DeviceCloser2 = camera2DeviceCloser;
                audioRestrictionController2 = audioRestrictionController;
                j2 = j;
                i2 = i;
                str2 = str;
            }
        }
        if (i4 != 1) {
            if (i4 == 2) {
                ResultKt.throwOnFailure(objMo1438getCameraMetadata0r8Bogc);
                return objMo1438getCameraMetadata0r8Bogc;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        long j3 = cameraStateOpener$tryOpenCamera$1.J$0;
        int i5 = cameraStateOpener$tryOpenCamera$1.I$0;
        AudioRestrictionController audioRestrictionController3 = (AudioRestrictionController) cameraStateOpener$tryOpenCamera$1.L$2;
        Camera2DeviceCloser camera2DeviceCloser3 = (Camera2DeviceCloser) cameraStateOpener$tryOpenCamera$1.L$1;
        String str3 = (String) cameraStateOpener$tryOpenCamera$1.L$0;
        ResultKt.throwOnFailure(objMo1438getCameraMetadata0r8Bogc);
        i2 = i5;
        audioRestrictionController2 = audioRestrictionController3;
        camera2DeviceCloser2 = camera2DeviceCloser3;
        j2 = j3;
        str2 = str3;
        CameraMetadata cameraMetadata = (CameraMetadata) objMo1438getCameraMetadata0r8Bogc;
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "CAMERA_OPEN_TIMEOUT_MS", _UrlKt.FRAGMENT_ENCODE_SET, "CAMERA_OPEN_CANCEL_TIMEOUT_MS", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
