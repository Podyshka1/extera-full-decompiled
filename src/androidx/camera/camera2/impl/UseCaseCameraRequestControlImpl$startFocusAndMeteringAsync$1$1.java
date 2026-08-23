package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.core.Logger;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ Lock3ABehavior $aeLockBehavior;
    final /* synthetic */ List $aeRegions;
    final /* synthetic */ Lock3ABehavior $afLockBehavior;
    final /* synthetic */ List $afRegions;
    final /* synthetic */ AeMode $afTriggerStartAeMode;
    final /* synthetic */ Lock3ABehavior $awbLockBehavior;
    final /* synthetic */ List $awbRegions;
    final /* synthetic */ long $timeLimitNs;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeRegions = list;
        this.$afRegions = list2;
        this.$awbRegions = list3;
        this.$aeLockBehavior = lock3ABehavior;
        this.$afLockBehavior = lock3ABehavior2;
        this.$awbLockBehavior = lock3ABehavior3;
        this.$afTriggerStartAeMode = aeMode;
        this.$timeLimitNs = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1(this.this$0, this.$aeRegions, this.$afRegions, this.$awbRegions, this.$aeLockBehavior, this.$afLockBehavior, this.$awbLockBehavior, this.$afTriggerStartAeMode, this.$timeLimitNs, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Lock3ABehavior lock3ABehavior;
        Object objAcquireSession;
        Lock3ABehavior lock3ABehavior2;
        List list;
        AeMode aeMode;
        List list2;
        Lock3ABehavior lock3ABehavior3;
        List list3;
        long j;
        AutoCloseable autoCloseable;
        CameraGraph.Session session;
        Throwable th;
        Object objM1600lock3AtS25XM$default;
        AutoCloseable autoCloseable2;
        Throwable th2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            try {
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#startFocusAndMeteringAsync");
                        }
                        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                        List list4 = this.$aeRegions;
                        List list5 = this.$afRegions;
                        List list6 = this.$awbRegions;
                        lock3ABehavior = this.$aeLockBehavior;
                        Lock3ABehavior lock3ABehavior4 = this.$afLockBehavior;
                        Lock3ABehavior lock3ABehavior5 = this.$awbLockBehavior;
                        AeMode aeMode2 = this.$afTriggerStartAeMode;
                        long j2 = this.$timeLimitNs;
                        CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                        this.L$0 = list4;
                        this.L$1 = list5;
                        this.L$2 = list6;
                        this.L$3 = lock3ABehavior;
                        this.L$4 = lock3ABehavior4;
                        this.L$5 = lock3ABehavior5;
                        this.L$6 = aeMode2;
                        this.J$0 = j2;
                        this.label = 1;
                        objAcquireSession = graph.acquireSession(this);
                        if (objAcquireSession == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        lock3ABehavior2 = lock3ABehavior5;
                        list = list4;
                        aeMode = aeMode2;
                        list2 = list5;
                        lock3ABehavior3 = lock3ABehavior4;
                        list3 = list6;
                        j = j2;
                    } else {
                        if (i != 1) {
                            if (i != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            autoCloseable = (AutoCloseable) this.L$0;
                            try {
                                ResultKt.throwOnFailure(obj);
                                autoCloseable2 = autoCloseable;
                                th = null;
                                objM1600lock3AtS25XM$default = obj;
                            } catch (Throwable th3) {
                                th = th3;
                                th2 = th;
                                try {
                                    throw th2;
                                } finally {
                                    AutoCloseableKt.closeFinally(autoCloseable, th2);
                                }
                            }
                            try {
                                return (Deferred) objM1600lock3AtS25XM$default;
                            } catch (Throwable th4) {
                                th2 = th4;
                                autoCloseable = autoCloseable;
                                throw th2;
                            }
                        }
                        long j3 = this.J$0;
                        AeMode aeMode3 = (AeMode) this.L$6;
                        Lock3ABehavior lock3ABehavior6 = (Lock3ABehavior) this.L$5;
                        Lock3ABehavior lock3ABehavior7 = (Lock3ABehavior) this.L$4;
                        lock3ABehavior = (Lock3ABehavior) this.L$3;
                        List list7 = (List) this.L$2;
                        List list8 = (List) this.L$1;
                        List list9 = (List) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        lock3ABehavior3 = lock3ABehavior7;
                        list3 = list7;
                        j = j3;
                        list2 = list8;
                        list = list9;
                        aeMode = aeMode3;
                        lock3ABehavior2 = lock3ABehavior6;
                        objAcquireSession = obj;
                    }
                    objM1600lock3AtS25XM$default = CameraGraph.Session.CC.m1600lock3AtS25XM$default(session, null, null, null, list, list2, list3, lock3ABehavior, lock3ABehavior3, lock3ABehavior2, aeMode, null, null, 0, j, j, this, 7175, null);
                    if (objM1600lock3AtS25XM$default != coroutine_suspended) {
                        autoCloseable2 = autoCloseable;
                        return (Deferred) objM1600lock3AtS25XM$default;
                    }
                    return coroutine_suspended;
                } catch (Throwable th5) {
                    th = th5;
                    autoCloseable = autoCloseable;
                    th2 = th;
                    throw th2;
                }
                session = (CameraGraph.Session) autoCloseable;
                this.L$0 = autoCloseable;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.L$4 = null;
                this.L$5 = null;
                this.L$6 = null;
                this.label = 2;
                th = null;
            } catch (Throwable th6) {
                th = th6;
            }
            autoCloseable = (AutoCloseable) objAcquireSession;
        } catch (CancellationException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }
}
