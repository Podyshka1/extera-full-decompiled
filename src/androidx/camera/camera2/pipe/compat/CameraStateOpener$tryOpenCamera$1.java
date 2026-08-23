package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.CameraStateOpener", m766f = "RetryingCameraStateOpener.kt", m767i = {0, 0, 0, 0, 0}, m768l = {236, 275}, m769m = "tryOpenCamera-7pD7j80$camera_camera2_pipe", m770n = {"cameraId", "camera2DeviceCloser", "audioRestrictionController", "attempts", "requestTimestamp"}, m771s = {"L$0", "L$1", "L$2", "I$0", "J$0"}, m772v = 1)
public final class CameraStateOpener$tryOpenCamera$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$1(CameraStateOpener cameraStateOpener, Continuation<? super CameraStateOpener$tryOpenCamera$1> continuation) {
        super(continuation);
        this.this$0 = cameraStateOpener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1443tryOpenCamera7pD7j80$camera_camera2_pipe(null, 0, 0L, null, null, this);
    }
}
