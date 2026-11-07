package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)V"}, m862k = 3, mv = {2, 1, 0})
@DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1", m873f = "UseCaseCameraRequestControl.kt", m874i = {}, m875l = {152}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nUseCaseThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads$confineDeferredSuspend$1\n*L\n1#1,200:1\n*E\n"})
public final class C0177x5900dd56 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1 $block;
    final /* synthetic */ CompletableDeferred $signal;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0177x5900dd56(Function1 function1, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.$block = function1;
        this.$signal = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0177x5900dd56(this.$block, this.$signal, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C0177x5900dd56) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function1 function1 = this.$block;
            this.label = 1;
            obj = function1.invoke(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        CoroutineAdaptersKt.propagateTo((Deferred) obj, this.$signal);
        return Unit.INSTANCE;
    }
}
