package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class AudioRestrictionControllerImpl$updateListenersMode$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ AudioRestrictionMode $mode;
    int label;
    final /* synthetic */ AudioRestrictionControllerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AudioRestrictionControllerImpl$updateListenersMode$1(AudioRestrictionControllerImpl audioRestrictionControllerImpl, AudioRestrictionMode audioRestrictionMode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = audioRestrictionControllerImpl;
        this.$mode = audioRestrictionMode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioRestrictionControllerImpl$updateListenersMode$1(this.this$0, this.$mode, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((AudioRestrictionControllerImpl$updateListenersMode$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Iterator it = this.this$0.activeListeners.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                ((AudioRestrictionController.Listener) it.next()).mo1798onCameraAudioRestrictionUpdatedLwUUkyU(this.$mode.m1511unboximpl());
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
