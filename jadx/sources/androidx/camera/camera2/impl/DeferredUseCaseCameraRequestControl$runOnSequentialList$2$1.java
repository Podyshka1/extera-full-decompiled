package androidx.camera.camera2.impl;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $index;
    final /* synthetic */ Deferred $submissionJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(Deferred deferred, int i, Continuation continuation) {
        super(2, continuation);
        this.$submissionJob = deferred;
        this.$index = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(this.$submissionJob, this.$index, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Deferred deferred = this.$submissionJob;
            this.label = 1;
            obj = deferred.await(this);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        List list = (List) obj;
        if (this.$index >= list.size()) {
            return null;
        }
        Deferred deferred2 = (Deferred) list.get(this.$index);
        this.label = 2;
        Object objAwait = deferred2.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
