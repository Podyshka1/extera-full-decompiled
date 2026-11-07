package androidx.camera.camera2.pipe.compat;

import com.google.android.gms.cast.MediaError;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl", m873f = "RetryingCameraStateOpener.kt", m874i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2}, m875l = {418, MediaError.DetailedErrorCode.DASH_INVALID_SEGMENT_INFO, 476}, m876m = "openCameraWithRetry-aeCOTgg", m877n = {"cameraId", "camera2DeviceCloser", "isForegroundObserver", "attempts", "requestTimestamp", "cameraId", "camera2DeviceCloser", "isForegroundObserver", "attempts", "it", "requestTimestamp", "cameraId", "camera2DeviceCloser", "isForegroundObserver", "attempts", "it", "requestTimestamp"}, m878s = {"L$0", "L$1", "L$2", "L$3", "J$0", "L$0", "L$1", "L$2", "L$3", "L$5", "J$0", "L$0", "L$1", "L$2", "L$3", "L$5", "J$0"}, m879v = 1)
public final class RetryingCameraStateOpenerImpl$openCameraWithRetry$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RetryingCameraStateOpenerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetryingCameraStateOpenerImpl$openCameraWithRetry$1(RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl, Continuation<? super RetryingCameraStateOpenerImpl$openCameraWithRetry$1> continuation) {
        super(continuation);
        this.this$0 = retryingCameraStateOpenerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1547openCameraWithRetryaeCOTgg(null, null, null, this);
    }
}
