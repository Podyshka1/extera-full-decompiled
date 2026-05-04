package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes3.dex */
final class VirtualCameraState$connect$2$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Flow $state;
    int label;
    final /* synthetic */ VirtualCameraState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VirtualCameraState$connect$2$1(Flow flow, VirtualCameraState virtualCameraState, Continuation continuation) {
        super(2, continuation);
        this.$state = flow;
        this.this$0 = virtualCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new VirtualCameraState$connect$2$1(this.$state, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((VirtualCameraState$connect$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow flow = this.$state;
            final VirtualCameraState virtualCameraState = this.this$0;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.VirtualCameraState$connect$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(CameraState cameraState, Continuation continuation) {
                    Object obj2 = virtualCameraState.lock;
                    VirtualCameraState virtualCameraState2 = virtualCameraState;
                    synchronized (obj2) {
                        try {
                            if (!(cameraState instanceof CameraStateOpen)) {
                                virtualCameraState2.emitState(cameraState);
                            } else {
                                CameraDeviceWrapper cameraDevice = ((CameraStateOpen) cameraState).getCameraDevice();
                                Intrinsics.checkNotNull(cameraDevice, "null cannot be cast to non-null type androidx.camera.camera2.pipe.compat.AndroidCameraDevice");
                                VirtualAndroidCameraDevice virtualAndroidCameraDevice = new VirtualAndroidCameraDevice((AndroidCameraDevice) cameraDevice);
                                virtualCameraState2.currentVirtualAndroidCamera = virtualAndroidCameraDevice;
                                virtualCameraState2.emitState(new CameraStateOpen(virtualAndroidCameraDevice));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (flow.collect(flowCollector, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
