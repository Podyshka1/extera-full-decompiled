package androidx.camera.camera2.impl;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.core.impl.Config;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0147xccc60ab4 extends SuspendLambda implements Function2 {
    final /* synthetic */ Config.OptionPriority $optionPriority$inlined;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type$inlined;
    final /* synthetic */ Map $values$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0147xccc60ab4(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, Map map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$values$inlined = map;
        this.$type$inlined = type;
        this.$optionPriority$inlined = optionPriority;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0147xccc60ab4(this.this$0, continuation, this.$values$inlined, this.$type$inlined, this.$optionPriority$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0147xccc60ab4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Deferred parametersAsync = this.this$0.getOrCreateImpl().setParametersAsync(this.$values$inlined, this.$type$inlined, this.$optionPriority$inlined);
        this.label = 1;
        Object objAwait = parametersAsync.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
