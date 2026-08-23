package androidx.camera.camera2.pipe.compat;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
final class Camera2Backend$isConfigSupported$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2Backend this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Camera2Backend$isConfigSupported$1(Camera2Backend camera2Backend, Continuation continuation) {
        super(continuation);
        this.this$0 = camera2Backend;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1525isConfigSupportedNpXggIU(null, this);
    }
}
