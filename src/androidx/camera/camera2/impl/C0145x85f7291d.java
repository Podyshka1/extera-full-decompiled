package androidx.camera.camera2.impl;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0145x85f7291d extends SuspendLambda implements Function2 {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSequence$inlined;
    final /* synthetic */ int $flashMode$inlined;
    final /* synthetic */ int $flashType$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0145x85f7291d(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, List list, int i, int i2, int i3) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$captureSequence$inlined = list;
        this.$captureMode$inlined = i;
        this.$flashType$inlined = i2;
        this.$flashMode$inlined = i3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0145x85f7291d(this.this$0, continuation, this.$captureSequence$inlined, this.$captureMode$inlined, this.$flashType$inlined, this.$flashMode$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0145x85f7291d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.this$0.getOrCreateImpl().issueSingleCaptureAsync(this.$captureSequence$inlined, this.$captureMode$inlined, this.$flashType$inlined, this.$flashMode$inlined);
    }
}
