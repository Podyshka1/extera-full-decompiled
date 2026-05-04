package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class CameraGraphImpl$update3A$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ AeMode $aeMode;
    final /* synthetic */ List $aeRegions;
    final /* synthetic */ AfMode $afMode;
    final /* synthetic */ List $afRegions;
    final /* synthetic */ AwbMode $awbMode;
    final /* synthetic */ List $awbRegions;
    int label;
    final /* synthetic */ CameraGraphImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraGraphImpl$update3A$1(CameraGraphImpl cameraGraphImpl, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, Continuation continuation) {
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
    public final Continuation create(Object obj, Continuation continuation) {
        return new CameraGraphImpl$update3A$1(this.this$0, this.$aeMode, this.$afMode, this.$awbMode, this.$aeRegions, this.$afRegions, this.$awbRegions, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CameraGraphImpl$update3A$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Controller3A.m1899update3A169HPGg$default(this.this$0.controller3A, this.$aeMode, this.$afMode, this.$awbMode, null, this.$aeRegions, this.$afRegions, this.$awbRegions, 8, null);
    }
}
