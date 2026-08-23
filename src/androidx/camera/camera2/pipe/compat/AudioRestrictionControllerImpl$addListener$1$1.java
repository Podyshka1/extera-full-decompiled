package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class AudioRestrictionControllerImpl$addListener$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ AudioRestrictionController.Listener $listener;
    final /* synthetic */ AudioRestrictionMode $mode;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AudioRestrictionControllerImpl$addListener$1$1(AudioRestrictionController.Listener listener, AudioRestrictionMode audioRestrictionMode, Continuation continuation) {
        super(2, continuation);
        this.$listener = listener;
        this.$mode = audioRestrictionMode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioRestrictionControllerImpl$addListener$1$1(this.$listener, this.$mode, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((AudioRestrictionControllerImpl$addListener$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.$listener.mo1798onCameraAudioRestrictionUpdatedLwUUkyU(this.$mode.m1511unboximpl());
        return Unit.INSTANCE;
    }
}
