package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
final class PruningCamera2DeviceManager$queue$2 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PruningCamera2DeviceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PruningCamera2DeviceManager$queue$2(PruningCamera2DeviceManager pruningCamera2DeviceManager, Continuation continuation) {
        super(2, continuation);
        this.this$0 = pruningCamera2DeviceManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PruningCamera2DeviceManager$queue$2 pruningCamera2DeviceManager$queue$2 = new PruningCamera2DeviceManager$queue$2(this.this$0, continuation);
        pruningCamera2DeviceManager$queue$2.L$0 = obj;
        return pruningCamera2DeviceManager$queue$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CameraRequest cameraRequest, Continuation continuation) {
        return ((PruningCamera2DeviceManager$queue$2) create(cameraRequest, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CameraRequest cameraRequest = (CameraRequest) this.L$0;
            PruningCamera2DeviceManager pruningCamera2DeviceManager = this.this$0;
            this.label = 1;
            if (pruningCamera2DeviceManager.process(cameraRequest, this) == coroutine_suspended) {
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
