package androidx.camera.camera2.impl;

import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Set $useCasesSnapshot$inlined;
    int label;
    final /* synthetic */ State3AControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1(Continuation continuation, Set set, State3AControl state3AControl) {
        super(2, continuation);
        this.$useCasesSnapshot$inlined = set;
        this.this$0 = state3AControl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1(continuation, this.$useCasesSnapshot$inlined, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (!this.$useCasesSnapshot$inlined.isEmpty()) {
            int iCalculateTemplateFromUseCases = this.this$0.calculateTemplateFromUseCases(this.$useCasesSnapshot$inlined);
            synchronized (this.this$0.lock) {
                if (this.this$0._template != iCalculateTemplateFromUseCases) {
                    this.this$0._template = iCalculateTemplateFromUseCases;
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z) {
                this.this$0.update();
            }
        }
        return Unit.INSTANCE;
    }
}
