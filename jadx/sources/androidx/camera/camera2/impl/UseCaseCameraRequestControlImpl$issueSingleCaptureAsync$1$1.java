package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.Logger;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ int $captureMode;
    final /* synthetic */ List $captureSequence;
    final /* synthetic */ int $flashMode;
    final /* synthetic */ int $flashType;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List list, int i, int i2, int i3, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$captureSequence = list;
        this.$captureMode = i;
        this.$flashType = i2;
        this.$flashMode = i3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(this.this$0, this.$captureSequence, this.$captureMode, this.$flashType, this.$flashMode, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#issueSingleCaptureAsync");
            }
            if (this.this$0.hasInvalidSurface(this.$captureSequence)) {
                this.this$0.failedResults(this.$captureSequence.size(), "Capture request failed due to invalid surface");
            }
            UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
            UseCaseCameraRequestControlImpl.InfoBundle infoBundleMerge = useCaseCameraRequestControlImpl.merge(useCaseCameraRequestControlImpl.infoBundleMap);
            UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl2 = this.this$0;
            List list = this.$captureSequence;
            int i2 = this.$captureMode;
            int i3 = this.$flashType;
            int i4 = this.$flashMode;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControl: Submitting still captures to capture pipeline");
            }
            CapturePipeline capturePipeline = useCaseCameraRequestControlImpl2.getCapturePipeline();
            RequestTemplate requestTemplateM1477getTemplateejQnlcg = infoBundleMerge.m1477getTemplateejQnlcg();
            Intrinsics.checkNotNull(requestTemplateM1477getTemplateejQnlcg);
            int iM1760unboximpl = requestTemplateM1477getTemplateejQnlcg.m1760unboximpl();
            Camera2ImplConfig camera2ImplConfigBuild = infoBundleMerge.getOptions().build();
            this.label = 1;
            obj = capturePipeline.mo1413submitStillCapturesBvXKQx0(list, iM1760unboximpl, camera2ImplConfigBuild, i2, i3, i4, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return (List) obj;
    }
}
