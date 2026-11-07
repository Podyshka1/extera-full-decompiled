package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/Deferred;", "Ljava/lang/Void;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1", m921f = "UseCaseCameraRequestControl.kt", m922i = {}, m923l = {530}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
@SourceDebugExtension({"SMAP\nUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,742:1\n85#2,4:743\n85#2,4:747\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1\n*L\n517#1:743,4\n527#1:747,4\n*E\n"})
public final class UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1 extends SuspendLambda implements Function1<Continuation<? super List<? extends Deferred<? extends Void>>>, Object> {
    final /* synthetic */ int $captureMode;
    final /* synthetic */ List<CaptureConfig> $captureSequence;
    final /* synthetic */ int $flashMode;
    final /* synthetic */ int $flashType;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List<CaptureConfig> list, int i, int i2, int i3, Continuation<? super UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1> continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$captureSequence = list;
        this.$captureMode = i;
        this.$flashType = i2;
        this.$flashMode = i3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(this.this$0, this.$captureSequence, this.$captureMode, this.$flashType, this.$flashMode, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super List<? extends Deferred<? extends Void>>> continuation) {
        return invoke2((Continuation<? super List<? extends Deferred<Void>>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super List<? extends Deferred<Void>>> continuation) {
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
            List<CaptureConfig> list = this.$captureSequence;
            int i2 = this.$captureMode;
            int i3 = this.$flashType;
            int i4 = this.$flashMode;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControl: Submitting still captures to capture pipeline");
            }
            CapturePipeline capturePipeline = useCaseCameraRequestControlImpl2.getCapturePipeline();
            int value = infoBundleMerge.getTemplate().getValue();
            Camera2ImplConfig camera2ImplConfigBuild = infoBundleMerge.getOptions().build();
            this.label = 1;
            obj = capturePipeline.mo1157submitStillCapturesBvXKQx0(list, value, camera2ImplConfigBuild, i2, i3, i4, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return (List) obj;
    }
}
