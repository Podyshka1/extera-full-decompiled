package androidx.camera.camera2.impl;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
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

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$removeParametersAsync$$inlined$runOnSequential$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "<anonymous>"}, m754k = 3, mv = {2, 1, 0})
@DebugMetadata(m765c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$removeParametersAsync$$inlined$runOnSequential$1", m766f = "DeferredUseCaseCameraRequestControl.kt", m767i = {}, m768l = {90}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nDeferredUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequential$2\n+ 2 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl\n*L\n1#1,223:1\n151#2:224\n*E\n"})
public final class C0151x932bf328 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List $keys$inlined;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0151x932bf328(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, List list, UseCaseCameraRequestControl.Type type) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$keys$inlined = list;
        this.$type$inlined = type;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0151x932bf328(this.this$0, continuation, this.$keys$inlined, this.$type$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C0151x932bf328) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Deferred<Unit> deferredRemoveParametersAsync = this.this$0.getOrCreateImpl().removeParametersAsync(this.$keys$inlined, this.$type$inlined);
        this.label = 1;
        Object objAwait = deferredRemoveParametersAsync.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
