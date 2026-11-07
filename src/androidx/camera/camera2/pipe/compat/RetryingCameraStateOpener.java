package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH¦@¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0012\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0013À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;", _UrlKt.FRAGMENT_ENCODE_SET, "openCameraWithRetry", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "camera2DeviceCloser", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;", "isForegroundObserver", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "openCameraWithRetry-aeCOTgg", "(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "openAndAwaitCameraWithRetry", "Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;", "openAndAwaitCameraWithRetry-0r8Bogc", "(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;", "cancelOpen", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public interface RetryingCameraStateOpener {
    void cancelOpen();

    /* JADX INFO: renamed from: openAndAwaitCameraWithRetry-0r8Bogc, reason: not valid java name */
    AwaitOpenCameraResult mo1546openAndAwaitCameraWithRetry0r8Bogc(String cameraId, Camera2DeviceCloser camera2DeviceCloser);

    /* JADX INFO: renamed from: openCameraWithRetry-aeCOTgg, reason: not valid java name */
    Object mo1547openCameraWithRetryaeCOTgg(String str, Camera2DeviceCloser camera2DeviceCloser, Function1<? super Unit, Boolean> function1, Continuation<? super OpenCameraResult> continuation);

    /* JADX INFO: renamed from: $r8$lambda$P9BprrKm-ujFTusqBJ7x2IEeI6M, reason: not valid java name */
    static boolean m1544$r8$lambda$P9BprrKmujFTusqBJ7x2IEeI6M(Unit unit) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: openCameraWithRetry-aeCOTgg$default, reason: not valid java name */
    static /* synthetic */ Object m1545openCameraWithRetryaeCOTgg$default(RetryingCameraStateOpener retryingCameraStateOpener, String str, Camera2DeviceCloser camera2DeviceCloser, Function1 function1, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: openCameraWithRetry-aeCOTgg");
            return null;
        }
        if ((i & 4) != 0) {
            function1 = new Function1() { // from class: androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Boolean.valueOf(RetryingCameraStateOpener.m1544$r8$lambda$P9BprrKmujFTusqBJ7x2IEeI6M((Unit) obj2));
                }
            };
        }
        return retryingCameraStateOpener.mo1547openCameraWithRetryaeCOTgg(str, camera2DeviceCloser, function1, continuation);
    }
}
