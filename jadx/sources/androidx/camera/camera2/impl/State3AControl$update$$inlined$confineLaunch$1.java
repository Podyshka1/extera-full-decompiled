package androidx.camera.camera2.impl;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class State3AControl$update$$inlined$confineLaunch$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$LongRef $revision$inlined;
    int label;
    final /* synthetic */ State3AControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public State3AControl$update$$inlined$confineLaunch$1(Continuation continuation, State3AControl state3AControl, Ref$LongRef ref$LongRef) {
        super(2, continuation);
        this.this$0 = state3AControl;
        this.$revision$inlined = ref$LongRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new State3AControl$update$$inlined$confineLaunch$1(continuation, this.this$0, this.$revision$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((State3AControl$update$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.applyUpdate(this.$revision$inlined.element);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
