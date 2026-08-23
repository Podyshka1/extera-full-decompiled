package androidx.camera.camera2.impl;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraState$updateAsync$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UseCaseCameraState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraState$updateAsync$1(UseCaseCameraState useCaseCameraState, Continuation continuation) {
        super(continuation);
        this.this$0 = useCaseCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1479updateAsyncTp9XwKQ(null, false, null, false, null, null, null, this);
    }
}
