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
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/Deferred;", "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/List;"}, m862k = 3, mv = {2, 1, 0})
@DebugMetadata(m872c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1", m873f = "DeferredUseCaseCameraRequestControl.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nDeferredUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1\n+ 2 DeferredUseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl\n*L\n1#1,223:1\n208#2:224\n*E\n"})
public final class C0150x85f7291d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Deferred<? extends Void>>>, Object> {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSequence$inlined;
    final /* synthetic */ int $flashMode$inlined;
    final /* synthetic */ int $flashType$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0150x85f7291d(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, List list, int i, int i2, int i3) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$captureSequence$inlined = list;
        this.$captureMode$inlined = i;
        this.$flashType$inlined = i2;
        this.$flashMode$inlined = i3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0150x85f7291d(this.this$0, continuation, this.$captureSequence$inlined, this.$captureMode$inlined, this.$flashType$inlined, this.$flashMode$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends Deferred<? extends Void>>> continuation) {
        return ((C0150x85f7291d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        return this.this$0.getOrCreateImpl().issueSingleCaptureAsync(this.$captureSequence$inlined, this.$captureMode$inlined, this.$flashType$inlined, this.$flashMode$inlined);
    }
}
