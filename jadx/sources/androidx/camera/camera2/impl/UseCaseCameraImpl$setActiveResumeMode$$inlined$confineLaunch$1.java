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

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $enabled$inlined;
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1(Continuation continuation, UseCaseCameraImpl useCaseCameraImpl, boolean z) {
        super(2, continuation);
        this.this$0 = useCaseCameraImpl;
        this.$enabled$inlined = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1(continuation, this.this$0, this.$enabled$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (!this.this$0.closed.getValue()) {
            this.this$0.useCaseGraphContext.getGraph().setForeground(this.$enabled$inlined);
        } else {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCamera is closed before setActiveResumeMode, skipping setup.");
            }
        }
        return Unit.INSTANCE;
    }
}
