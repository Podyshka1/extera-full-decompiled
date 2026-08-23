package androidx.camera.camera2.impl;

import java.util.Collection;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$updateRepeatingRequestAsync$$inlined$runOnSequential$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0154xce0dd9eb extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $isPrimary$inlined;
    final /* synthetic */ Collection $runningUseCases$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0154xce0dd9eb(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, boolean z, Collection collection) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$isPrimary$inlined = z;
        this.$runningUseCases$inlined = collection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0154xce0dd9eb(this.this$0, continuation, this.$isPrimary$inlined, this.$runningUseCases$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0154xce0dd9eb) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        Deferred deferredUpdateRepeatingRequestAsync = this.this$0.getOrCreateImpl().updateRepeatingRequestAsync(this.$isPrimary$inlined, this.$runningUseCases$inlined);
        this.label = 1;
        Object objAwait = deferredUpdateRepeatingRequestAsync.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
