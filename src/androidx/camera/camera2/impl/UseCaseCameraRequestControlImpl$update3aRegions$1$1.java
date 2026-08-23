package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraControls3A;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.Logger;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$update3aRegions$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ List $aeRegions;
    final /* synthetic */ List $afRegions;
    final /* synthetic */ List $awbRegions;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$update3aRegions$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List list, List list2, List list3, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeRegions = list;
        this.$afRegions = list2;
        this.$awbRegions = list3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$update3aRegions$1$1(this.this$0, this.$aeRegions, this.$afRegions, this.$awbRegions, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$update3aRegions$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        List listAsList;
        List listAsList2;
        List listAsList3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#update3aRegions");
                }
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                List list = this.$aeRegions;
                List list2 = this.$afRegions;
                List list3 = this.$awbRegions;
                CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                this.L$0 = list;
                this.L$1 = list2;
                this.L$2 = list3;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                listAsList = list;
                listAsList2 = list2;
                listAsList3 = list3;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                listAsList3 = (List) this.L$2;
                listAsList2 = (List) this.L$1;
                listAsList = (List) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                if (listAsList == null) {
                    listAsList = ArraysKt.asList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                List list4 = listAsList;
                if (listAsList2 == null) {
                    listAsList2 = ArraysKt.asList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                List list5 = listAsList2;
                if (listAsList3 == null) {
                    listAsList3 = ArraysKt.asList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                Deferred deferredM1541update3AydBZfZg$default = CameraControls3A.CC.m1541update3AydBZfZg$default(session, null, null, null, list4, list5, listAsList3, 7, null);
                AutoCloseableKt.closeFinally(autoCloseable, null);
                return deferredM1541update3AydBZfZg$default;
            } finally {
            }
        } catch (CancellationException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }
}
