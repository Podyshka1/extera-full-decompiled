package androidx.camera.camera2.impl;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.impl.UseCaseCameraState", m921f = "UseCaseCameraState.kt", m922i = {0}, m923l = {150}, m924m = "updateAsync-Tp9XwKQ", m925n = {"result"}, m926s = {"L$0"}, m927v = 1)
public final class UseCaseCameraState$updateAsync$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UseCaseCameraState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraState$updateAsync$1(UseCaseCameraState useCaseCameraState, Continuation<? super UseCaseCameraState$updateAsync$1> continuation) {
        super(continuation);
        this.this$0 = useCaseCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1228updateAsyncTp9XwKQ(null, false, null, false, null, null, null, this);
    }
}
