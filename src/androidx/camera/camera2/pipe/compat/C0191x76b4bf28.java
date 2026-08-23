package androidx.camera.camera2.pipe.compat;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 */
/* JADX INFO: loaded from: classes3.dex */
final class C0191x76b4bf28 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2CameraAvailabilityMonitor$startMonitoring$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0191x76b4bf28(Camera2CameraAvailabilityMonitor$startMonitoring$2 camera2CameraAvailabilityMonitor$startMonitoring$2, Continuation continuation) {
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
