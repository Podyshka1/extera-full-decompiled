package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusJob$1", m873f = "Camera2CameraStatusMonitor.kt", m874i = {}, m875l = {69}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
public final class Camera2CameraStatusMonitor$cameraStatusJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ Camera2CameraStatusMonitor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2CameraStatusMonitor$cameraStatusJob$1(Camera2CameraStatusMonitor camera2CameraStatusMonitor, Continuation<? super Camera2CameraStatusMonitor$cameraStatusJob$1> continuation) {
        super(2, continuation);
        this.this$0 = camera2CameraStatusMonitor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Camera2CameraStatusMonitor$cameraStatusJob$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Camera2CameraStatusMonitor$cameraStatusJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow flow = this.this$0.cameraStatus;
            final Camera2CameraStatusMonitor camera2CameraStatusMonitor = this.this$0;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusJob$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((CameraStatusMonitor.CameraStatus) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(CameraStatusMonitor.CameraStatus cameraStatus, Continuation<? super Unit> continuation) {
                    if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                        Object objEmit = camera2CameraStatusMonitor._cameraAvailability.emit(cameraStatus, continuation);
                        return objEmit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmit : Unit.INSTANCE;
                    }
                    if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable) {
                        Object objEmit2 = camera2CameraStatusMonitor._cameraAvailability.emit(cameraStatus, continuation);
                        return objEmit2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmit2 : Unit.INSTANCE;
                    }
                    if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged) {
                        MutableSharedFlow mutableSharedFlow = camera2CameraStatusMonitor._cameraPriorities;
                        Unit unit = Unit.INSTANCE;
                        Object objEmit3 = mutableSharedFlow.emit(unit, continuation);
                        return objEmit3 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmit3 : unit;
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
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
