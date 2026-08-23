package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$update3A$1", m766f = "CameraGraphImpl.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
public final class CameraGraphImpl$update3A$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Deferred<? extends Result3A>>, Object> {
    final /* synthetic */ AeMode $aeMode;
    final /* synthetic */ List<MeteringRectangle> $aeRegions;
    final /* synthetic */ AfMode $afMode;
    final /* synthetic */ List<MeteringRectangle> $afRegions;
    final /* synthetic */ AwbMode $awbMode;
    final /* synthetic */ List<MeteringRectangle> $awbRegions;
    int label;
    final /* synthetic */ CameraGraphImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraGraphImpl$update3A$1(CameraGraphImpl cameraGraphImpl, AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Continuation<? super CameraGraphImpl$update3A$1> continuation) {
        super(2, continuation);
        this.this$0 = cameraGraphImpl;
        this.$aeMode = aeMode;
        this.$afMode = afMode;
        this.$awbMode = awbMode;
        this.$aeRegions = list;
        this.$afRegions = list2;
        this.$awbRegions = list3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CameraGraphImpl$update3A$1(this.this$0, this.$aeMode, this.$afMode, this.$awbMode, this.$aeRegions, this.$afRegions, this.$awbRegions, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Deferred<? extends Result3A>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Deferred<Result3A>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Deferred<Result3A>> continuation) {
        return ((CameraGraphImpl$update3A$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        return Controller3A.m1496update3A169HPGg$default(this.this$0.controller3A, this.$aeMode, this.$afMode, this.$awbMode, null, this.$aeRegions, this.$afRegions, this.$awbRegions, 8, null);
    }
}
