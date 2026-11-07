package androidx.camera.camera2.impl;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseCameraState", m873f = "UseCaseCameraState.kt", m874i = {0}, m875l = {150}, m876m = "updateAsync-Tp9XwKQ", m877n = {"result"}, m878s = {"L$0"}, m879v = 1)
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
        return this.this$0.m1175updateAsyncTp9XwKQ(null, false, null, false, null, null, null, this);
    }
}
