package androidx.camera.camera2.impl;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.core.impl.Config;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$setParametersAsync$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ Config.OptionPriority $optionPriority;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type;
    final /* synthetic */ Map $values;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$setParametersAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, UseCaseCameraRequestControl.Type type, Map map, Config.OptionPriority optionPriority, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$type = type;
        this.$values = map;
        this.$optionPriority = optionPriority;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$setParametersAsync$1$1(this.this$0, this.$type, this.$values, this.$optionPriority, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$setParametersAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        UseCaseCameraRequestControl.Type type = this.$type;
        Map map = this.$values;
        Config.OptionPriority optionPriority = this.$optionPriority;
        this.label = 1;
        Object parametersInternal = useCaseCameraRequestControlImpl.setParametersInternal(type, map, optionPriority, this);
        return parametersInternal == coroutine_suspended ? coroutine_suspended : parametersInternal;
    }
}
