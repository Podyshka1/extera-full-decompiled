package androidx.camera.camera2.pipe.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$asyncUndispatched$result$1", m766f = "GraphSessionLock.kt", m767i = {}, m768l = {90}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
public final class GraphSessionLock$asyncUndispatched$result$1<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
    final /* synthetic */ Function2<CoroutineScope, Continuation<? super T>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GraphSessionLock$asyncUndispatched$result$1(Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super GraphSessionLock$asyncUndispatched$result$1> continuation) {
        super(2, continuation);
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        GraphSessionLock$asyncUndispatched$result$1 graphSessionLock$asyncUndispatched$result$1 = new GraphSessionLock$asyncUndispatched$result$1(this.$block, continuation);
        graphSessionLock$asyncUndispatched$result$1.L$0 = obj;
        return graphSessionLock$asyncUndispatched$result$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
        return ((GraphSessionLock$asyncUndispatched$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        CoroutineScopeKt.ensureActive(coroutineScope);
        Function2<CoroutineScope, Continuation<? super T>, Object> function2 = this.$block;
        this.label = 1;
        Object objInvoke = function2.invoke(coroutineScope, this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
