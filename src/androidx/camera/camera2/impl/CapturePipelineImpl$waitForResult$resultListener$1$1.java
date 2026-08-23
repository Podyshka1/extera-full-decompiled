package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.FrameInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$resultListener$1$1", m766f = "CapturePipeline.kt", m767i = {}, m768l = {788}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
public final class CapturePipelineImpl$waitForResult$resultListener$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ResultListener $listener;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$waitForResult$resultListener$1$1(ResultListener resultListener, CapturePipelineImpl capturePipelineImpl, Continuation<? super CapturePipelineImpl$waitForResult$resultListener$1$1> continuation) {
        super(2, continuation);
        this.$listener = resultListener;
        this.this$0 = capturePipelineImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CapturePipelineImpl$waitForResult$resultListener$1$1(this.$listener, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CapturePipelineImpl$waitForResult$resultListener$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Deferred<FrameInfo> result = this.$listener.getResult();
            this.label = 1;
            if (result.join(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.requestListener.removeListener(this.$listener);
        return Unit.INSTANCE;
    }
}
