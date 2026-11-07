package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2", m873f = "RetryingCameraStateOpener.kt", m874i = {0}, m875l = {184}, m876m = "awaitAvailableCamera", m877n = {"listener"}, m878s = {"L$0"}, m879v = 1)
public final class C0193x76b4bf28 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2CameraAvailabilityMonitor$startMonitoring$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0193x76b4bf28(Camera2CameraAvailabilityMonitor$startMonitoring$2 camera2CameraAvailabilityMonitor$startMonitoring$2, Continuation<? super C0193x76b4bf28> continuation) {
        super(continuation);
        this.this$0 = camera2CameraAvailabilityMonitor$startMonitoring$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.awaitAvailableCamera(0L, this);
    }
}
