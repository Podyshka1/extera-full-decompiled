package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.core.impl.Config;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$setParametersAsync$1$1", m873f = "UseCaseCameraRequestControl.kt", m874i = {}, m875l = {351}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
public final class UseCaseCameraRequestControlImpl$setParametersAsync$1$1 extends SuspendLambda implements Function1<Continuation<? super Deferred<? extends Unit>>, Object> {
    final /* synthetic */ Config.OptionPriority $optionPriority;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type;
    final /* synthetic */ Map<CaptureRequest.Key<?>, Object> $values;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$setParametersAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, UseCaseCameraRequestControl.Type type, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority, Continuation<? super UseCaseCameraRequestControlImpl$setParametersAsync$1$1> continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$type = type;
        this.$values = map;
        this.$optionPriority = optionPriority;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new UseCaseCameraRequestControlImpl$setParametersAsync$1$1(this.this$0, this.$type, this.$values, this.$optionPriority, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Deferred<? extends Unit>> continuation) {
        return invoke2((Continuation<? super Deferred<Unit>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super Deferred<Unit>> continuation) {
        return ((UseCaseCameraRequestControlImpl$setParametersAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        UseCaseCameraRequestControl.Type type = this.$type;
        Map<CaptureRequest.Key<?>, Object> map = this.$values;
        Config.OptionPriority optionPriority = this.$optionPriority;
        this.label = 1;
        Object parametersInternal = useCaseCameraRequestControlImpl.setParametersInternal(type, map, optionPriority, this);
        return parametersInternal == coroutine_suspended ? coroutine_suspended : parametersInternal;
    }
}
