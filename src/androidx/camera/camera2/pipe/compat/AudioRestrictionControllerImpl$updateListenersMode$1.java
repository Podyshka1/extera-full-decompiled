package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl$updateListenersMode$1", m766f = "AudioRestrictionController.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
public final class AudioRestrictionControllerImpl$updateListenersMode$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AudioRestrictionMode $mode;
    int label;
    final /* synthetic */ AudioRestrictionControllerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioRestrictionControllerImpl$updateListenersMode$1(AudioRestrictionControllerImpl audioRestrictionControllerImpl, AudioRestrictionMode audioRestrictionMode, Continuation<? super AudioRestrictionControllerImpl$updateListenersMode$1> continuation) {
        super(2, continuation);
        this.this$0 = audioRestrictionControllerImpl;
        this.$mode = audioRestrictionMode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AudioRestrictionControllerImpl$updateListenersMode$1(this.this$0, this.$mode, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AudioRestrictionControllerImpl$updateListenersMode$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Iterator it = this.this$0.activeListeners.iterator();
            while (it.hasNext()) {
                ((AudioRestrictionController.Listener) it.next()).mo1394onCameraAudioRestrictionUpdatedLwUUkyU(this.$mode.getValue());
            }
            return Unit.INSTANCE;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
