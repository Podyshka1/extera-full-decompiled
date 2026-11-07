package androidx.camera.camera2.impl;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$awaitSurfaceSetup$$inlined$runOnSequentialSuspend$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "<anonymous>"}, m862k = 3, mv = {2, 1, 0})
@DebugMetadata(m872c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$awaitSurfaceSetup$$inlined$runOnSequentialSuspend$1", m873f = "DeferredUseCaseCameraRequestControl.kt", m874i = {}, m875l = {Opcodes.SHL_INT_LIT8}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nDeferredUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialSuspend$3\n+ 2 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl\n*L\n1#1,223:1\n212#2:224\n*E\n"})
public final class C0147xb4e144e6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0147xb4e144e6(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0147xb4e144e6(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((C0147xb4e144e6) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        UseCaseCameraRequestControlImpl orCreateImpl = this.this$0.getOrCreateImpl();
        this.label = 1;
        Object objAwaitSurfaceSetup = orCreateImpl.awaitSurfaceSetup(this);
        return objAwaitSurfaceSetup == coroutine_suspended ? coroutine_suspended : objAwaitSurfaceSetup;
    }
}
