package androidx.camera.camera2.impl;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1", m766f = "DeferredUseCaseCameraRequestControl.kt", m767i = {}, m768l = {108, 110}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nDeferredUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1\n*L\n1#1,223:1\n*E\n"})
public final class DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ Deferred<List<Deferred<Object>>> $submissionJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(Deferred<? extends List<? extends Deferred<Object>>> deferred, int i, Continuation<? super DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1> continuation) {
        super(2, continuation);
        this.$submissionJob = deferred;
        this.$index = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(this.$submissionJob, this.$index, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<Object> continuation) {
        return ((DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Deferred<List<Deferred<Object>>> deferred = this.$submissionJob;
            this.label = 1;
            obj = deferred.await(this);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        List list = (List) obj;
        if (this.$index >= list.size()) {
            return null;
        }
        Deferred deferred2 = (Deferred) list.get(this.$index);
        this.label = 2;
        Object objAwait = deferred2.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
