package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.core.Logger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseCameraImpl$close$$inlined$confineLaunch$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$close$$inlined$confineLaunch$1(Continuation continuation, UseCaseCameraImpl useCaseCameraImpl) {
        super(2, continuation);
        this.this$0 = useCaseCameraImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UseCaseCameraImpl$close$$inlined$confineLaunch$1(continuation, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((UseCaseCameraImpl$close$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Closing " + this.this$0);
            }
            UseCaseCameraImpl.access$getSessionProcessor$p(this.this$0);
            this.this$0.useCaseGraphContext.closeGraph();
            Deferred deferredStopAsync = this.this$0.getUseCaseSurfaceManager().stopAsync();
            this.label = 1;
            if (deferredStopAsync.await(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
