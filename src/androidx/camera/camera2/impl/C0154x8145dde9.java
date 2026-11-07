package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
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

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$startFocusAndMeteringAsync-NxRnBj4$$inlined$runOnSequential$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "<anonymous>"}, m910k = 3, mv = {2, 1, 0})
@DebugMetadata(m920c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$startFocusAndMeteringAsync-NxRnBj4$$inlined$runOnSequential$1", m921f = "DeferredUseCaseCameraRequestControl.kt", m922i = {}, m923l = {90}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
@SourceDebugExtension({"SMAP\nDeferredUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequential$2\n+ 2 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl\n*L\n1#1,223:1\n179#2,10:224\n*E\n"})
public final class C0154x8145dde9 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result3A>, Object> {
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
    public C0154x8145dde9(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j) {
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
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0154x8145dde9(this.this$0, continuation, this.$aeRegions$inlined, this.$afRegions$inlined, this.$awbRegions$inlined, this.$aeLockBehavior$inlined, this.$afLockBehavior$inlined, this.$awbLockBehavior$inlined, this.$afTriggerStartAeMode$inlined, this.$timeLimitNs$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result3A> continuation) {
        return ((C0154x8145dde9) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Deferred<Result3A> deferredMo1194startFocusAndMeteringAsyncNxRnBj4 = this.this$0.getOrCreateImpl().mo1194startFocusAndMeteringAsyncNxRnBj4(this.$aeRegions$inlined, this.$afRegions$inlined, this.$awbRegions$inlined, this.$aeLockBehavior$inlined, this.$afLockBehavior$inlined, this.$awbLockBehavior$inlined, this.$afTriggerStartAeMode$inlined, this.$timeLimitNs$inlined);
        this.label = 1;
        Object objAwait = deferredMo1194startFocusAndMeteringAsyncNxRnBj4.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
