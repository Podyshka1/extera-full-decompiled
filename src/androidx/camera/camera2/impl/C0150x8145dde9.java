package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$startFocusAndMeteringAsync-NxRnBj4$$inlined$runOnSequential$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0150x8145dde9 extends SuspendLambda implements Function2 {
    final /* synthetic */ Lock3ABehavior $aeLockBehavior$inlined;
    final /* synthetic */ List $aeRegions$inlined;
    final /* synthetic */ Lock3ABehavior $afLockBehavior$inlined;
    final /* synthetic */ List $afRegions$inlined;
    final /* synthetic */ AeMode $afTriggerStartAeMode$inlined;
    final /* synthetic */ Lock3ABehavior $awbLockBehavior$inlined;
    final /* synthetic */ List $awbRegions$inlined;
    final /* synthetic */ long $timeLimitNs$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0150x8145dde9(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$aeRegions$inlined = list;
        this.$afRegions$inlined = list2;
        this.$awbRegions$inlined = list3;
        this.$aeLockBehavior$inlined = lock3ABehavior;
        this.$afLockBehavior$inlined = lock3ABehavior2;
        this.$awbLockBehavior$inlined = lock3ABehavior3;
        this.$afTriggerStartAeMode$inlined = aeMode;
        this.$timeLimitNs$inlined = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0150x8145dde9(this.this$0, continuation, this.$aeRegions$inlined, this.$afRegions$inlined, this.$awbRegions$inlined, this.$aeLockBehavior$inlined, this.$afLockBehavior$inlined, this.$awbLockBehavior$inlined, this.$afTriggerStartAeMode$inlined, this.$timeLimitNs$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0150x8145dde9) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Deferred deferredMo1445startFocusAndMeteringAsyncNxRnBj4 = this.this$0.getOrCreateImpl().mo1445startFocusAndMeteringAsyncNxRnBj4(this.$aeRegions$inlined, this.$afRegions$inlined, this.$awbRegions$inlined, this.$aeLockBehavior$inlined, this.$afLockBehavior$inlined, this.$awbLockBehavior$inlined, this.$afTriggerStartAeMode$inlined, this.$timeLimitNs$inlined);
        this.label = 1;
        Object objAwait = deferredMo1445startFocusAndMeteringAsyncNxRnBj4.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
