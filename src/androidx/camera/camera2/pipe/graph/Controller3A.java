package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FlashMode;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.core.Log;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt__JobKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Controller3A {
    private static final Map aePrecaptureAndAfCancelParams;
    private static final Map aePrecaptureCancelParams;
    private static final List aeUnlockedStateList;
    private static final List afUnlockedStateList;
    private static final List awbUnlockedStateList;
    private static final CompletableDeferred deferredResult3ASubmitFailed;
    private static final Map parameterForAfTriggerCancel;
    private static final Map parameterForAfTriggerStart;
    private static final Map parametersForAePrecapture;
    private static final Map parametersForAePrecaptureAndAfTrigger;
    private static final Function1 unlock3APostCaptureAfUnlockedCondition;
    private static final Map unlock3APostCaptureLockAeAndCancelAfParams;
    private static final Map unlock3APostCaptureLockAeParams;
    private static final Map unlock3APostCaptureUnlockAeParams;
    private final Listener3A graphListener3A;
    private final GraphProcessor graphProcessor;
    private final GraphState3A graphState3A;
    private Deferred lastUpdate3AResult;
    private final CameraMetadata metadata;
    public static final Companion Companion = new Companion(null);
    private static final List aeConvergedStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 4, 3});
    private static final List awbConvergedStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 3});
    private static final List afConvergedStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 6, 4, 5});
    private static final List aeLockedStateList = CollectionsKt.listOf((Object) 3);
    private static final List awbLockedStateList = CollectionsKt.listOf((Object) 3);
    private static final List afLockedStateList = CollectionsKt.listOf((Object[]) new Integer[]{4, 5});
    private static final List aePostPrecaptureStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 4, 3});
    private static final List awbPostPrecaptureStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 3});

    public Controller3A(GraphProcessor graphProcessor, CameraMetadata metadata, GraphState3A graphState3A, Listener3A graphListener3A) {
        Intrinsics.checkNotNullParameter(graphProcessor, "graphProcessor");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(graphState3A, "graphState3A");
        Intrinsics.checkNotNullParameter(graphListener3A, "graphListener3A");
        this.graphProcessor = graphProcessor;
        this.metadata = metadata;
        this.graphState3A = graphState3A;
        this.graphListener3A = graphListener3A;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
        parameterForAfTriggerStart = MapsKt.mapOf(TuplesKt.m1081to(key, 1));
        parameterForAfTriggerCancel = MapsKt.mapOf(TuplesKt.m1081to(key, 2));
        CaptureRequest.Key key2 = CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER;
        parametersForAePrecapture = MapsKt.mapOf(TuplesKt.m1081to(key2, 1));
        parametersForAePrecaptureAndAfTrigger = MapsKt.mapOf(TuplesKt.m1081to(key, 1), TuplesKt.m1081to(key2, 1));
        deferredResult3ASubmitFailed = CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.Companion.m1769getSUBMIT_FAILEDJvTi9ms(), null, 2, null));
        aeUnlockedStateList = CollectionsKt.listOf((Object[]) new Integer[]{0, 1, 2, 4});
        List listListOf = CollectionsKt.listOf((Object[]) new Integer[]{0, 3, 1, 2, 6});
        afUnlockedStateList = listListOf;
        awbUnlockedStateList = CollectionsKt.listOf((Object[]) new Integer[]{0, 1, 2});
        CaptureRequest.Key key3 = CaptureRequest.CONTROL_AE_LOCK;
        Boolean bool = Boolean.TRUE;
        unlock3APostCaptureLockAeParams = MapsKt.mapOf(TuplesKt.m1081to(key3, bool));
        unlock3APostCaptureLockAeAndCancelAfParams = MapsKt.mapOf(TuplesKt.m1081to(key, 2), TuplesKt.m1081to(key3, bool));
        unlock3APostCaptureUnlockAeParams = MapsKt.mapOf(TuplesKt.m1081to(key3, Boolean.FALSE));
        aePrecaptureCancelParams = MapsKt.mapOf(TuplesKt.m1081to(key2, 2));
        aePrecaptureAndAfCancelParams = MapsKt.mapOf(TuplesKt.m1081to(key, 2), TuplesKt.m1081to(key2, 2));
        unlock3APostCaptureAfUnlockedCondition = Result3AStateListenerKt.toConditionChecker(MapsKt.mapOf(TuplesKt.m1081to(CaptureResult.CONTROL_AF_STATE, listListOf)));
    }

    /* JADX INFO: renamed from: update3A-169HPGg$default, reason: not valid java name */
    public static /* synthetic */ Deferred m1899update3A169HPGg$default(Controller3A controller3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            flashMode = null;
        }
        if ((i & 16) != 0) {
            list = null;
        }
        if ((i & 32) != 0) {
            list2 = null;
        }
        if ((i & 64) != 0) {
            list3 = null;
        }
        return controller3A.m1902update3A169HPGg(aeMode, afMode, awbMode, flashMode, list, list2, list3);
    }

    /* JADX INFO: renamed from: update3A-169HPGg, reason: not valid java name */
    public final Deferred m1902update3A169HPGg(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            GraphState3A.m1909update7jOEVJU$default(this.graphState3A, aeMode, afMode, awbMode, flashMode, list, list2, list3, null, null, null, 896, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            return deferredResult3ASubmitFailed;
        }
        Result3AStateListenerImpl result3AStateListenerImplM1897createListenerFor3AParams0dPwJB0 = m1897createListenerFor3AParams0dPwJB0(aeMode, afMode, awbMode, flashMode);
        this.graphListener3A.addListener(result3AStateListenerImplM1897createListenerFor3AParams0dPwJB0);
        GraphState3A.m1909update7jOEVJU$default(this.graphState3A, aeMode, afMode, awbMode, flashMode, list, list2, list3, null, null, null, 896, null);
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        Deferred result = result3AStateListenerImplM1897createListenerFor3AParams0dPwJB0.getResult();
        synchronized (this) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Controller3A#update3A: cancelling previous request " + this.lastUpdate3AResult);
                }
                Deferred deferred = this.lastUpdate3AResult;
                if (deferred != null) {
                    JobKt__JobKt.cancel$default(deferred, "A newer call for 3A state update initiated.", null, 2, null);
                }
                this.lastUpdate3AResult = result;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return result;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX INFO: renamed from: lock3A-Qz1gx5w, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1900lock3AQz1gx5w(List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, Function1 function1, Function1 function12, int i, Long l, Long l2, Continuation continuation) {
        Controller3A$lock3A$1 controller3A$lock3A$1;
        Ref$ObjectRef ref$ObjectRef;
        int i2;
        Ref$ObjectRef ref$ObjectRef2;
        Function1 function13;
        Long l3;
        Lock3ABehavior lock3ABehavior4;
        Result3AStateListenerImpl result3AStateListenerImpl;
        AeMode aeMode2;
        Lock3ABehavior lock3ABehavior5 = lock3ABehavior3;
        if (continuation instanceof Controller3A$lock3A$1) {
            controller3A$lock3A$1 = (Controller3A$lock3A$1) continuation;
            int i3 = controller3A$lock3A$1.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                controller3A$lock3A$1.label = i3 - Integer.MIN_VALUE;
            } else {
                controller3A$lock3A$1 = new Controller3A$lock3A$1(this, continuation);
            }
        }
        Object obj = controller3A$lock3A$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = controller3A$lock3A$1.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = lock3ABehavior2;
            if (!CameraMetadata.Companion.getSupportsAutoFocusTrigger(this.metadata)) {
                ref$ObjectRef.element = null;
            }
            if (lock3ABehavior == null && ref$ObjectRef.element == null && lock3ABehavior5 == null) {
                return CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.Companion.m1767getOKJvTi9ms(), null, null));
            }
            GraphState3A.m1909update7jOEVJU$default(this.graphState3A, null, null, null, null, list, list2, list3, null, null, null, 911, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            if (this.graphProcessor.getRepeatingRequest() == null) {
                return deferredResult3ASubmitFailed;
            }
            if (Controller3AKt.m1904shouldUnlockAft6FjEyI((Lock3ABehavior) ref$ObjectRef.element)) {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "lock3A - sending a request to unlock af first.");
                }
                if (!this.graphProcessor.trigger(parameterForAfTriggerCancel)) {
                    return deferredResult3ASubmitFailed;
                }
            }
            if (!Controller3AKt.m1906shouldWaitForAeToConverget6FjEyI(lock3ABehavior) && !Controller3AKt.m1907shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) ref$ObjectRef.element) && !Controller3AKt.m1908shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5)) {
                aeMode2 = aeMode;
                function13 = function12;
                i2 = i;
                l3 = l2;
                lock3ABehavior4 = lock3ABehavior;
                return m1898lock3ANowR6AlCjU(lock3ABehavior4, (Lock3ABehavior) ref$ObjectRef.element, lock3ABehavior5, aeMode2, function13, Boxing.boxInt(i2), l3);
            }
            Result3AStateListenerImpl result3AStateListenerImpl2 = new Result3AStateListenerImpl(function1 == null ? Result3AStateListenerKt.toConditionChecker(createConverged3AExitConditions(Controller3AKt.m1906shouldWaitForAeToConverget6FjEyI(lock3ABehavior), Controller3AKt.m1907shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) ref$ObjectRef.element), Controller3AKt.m1908shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5))) : function1, Boxing.boxInt(i), l);
            this.graphListener3A.addListener(result3AStateListenerImpl2);
            Boolean boolBoxBoolean = Controller3AKt.m1903shouldUnlockAet6FjEyI(lock3ABehavior) ? Boxing.boxBoolean(false) : null;
            Boolean boolBoxBoolean2 = Controller3AKt.m1905shouldUnlockAwbt6FjEyI(lock3ABehavior5) ? Boxing.boxBoolean(false) : null;
            if (boolBoxBoolean != null || boolBoxBoolean2 != null) {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "lock3A - setting aeLock=" + boolBoxBoolean + ", awbLock=" + boolBoxBoolean2);
                }
                GraphState3A.m1909update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, boolBoxBoolean, null, boolBoxBoolean2, 383, null);
            }
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder();
                sb.append("lock3A - waiting for");
                boolean zM1906shouldWaitForAeToConverget6FjEyI = Controller3AKt.m1906shouldWaitForAeToConverget6FjEyI(lock3ABehavior);
                String str = _UrlKt.FRAGMENT_ENCODE_SET;
                sb.append(zM1906shouldWaitForAeToConverget6FjEyI ? " ae" : _UrlKt.FRAGMENT_ENCODE_SET);
                sb.append(Controller3AKt.m1907shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) ref$ObjectRef.element) ? " af" : _UrlKt.FRAGMENT_ENCODE_SET);
                if (Controller3AKt.m1908shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5)) {
                    str = " awb";
                }
                sb.append(str);
                sb.append(" to converge before locking them.");
                android.util.Log.d("CXCP", sb.toString());
            }
            Deferred result = result3AStateListenerImpl2.getResult();
            controller3A$lock3A$1.L$0 = lock3ABehavior;
            controller3A$lock3A$1.L$1 = lock3ABehavior5;
            controller3A$lock3A$1.L$2 = aeMode;
            controller3A$lock3A$1.L$3 = function12;
            controller3A$lock3A$1.L$4 = l2;
            controller3A$lock3A$1.L$5 = ref$ObjectRef;
            controller3A$lock3A$1.L$6 = result3AStateListenerImpl2;
            i2 = i;
            controller3A$lock3A$1.I$0 = i2;
            controller3A$lock3A$1.label = 1;
            Object objAwait = result.await(controller3A$lock3A$1);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
            ref$ObjectRef2 = ref$ObjectRef;
            obj = objAwait;
            function13 = function12;
            l3 = l2;
            lock3ABehavior4 = lock3ABehavior;
            result3AStateListenerImpl = result3AStateListenerImpl2;
            aeMode2 = aeMode;
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i5 = controller3A$lock3A$1.I$0;
            Result3AStateListenerImpl result3AStateListenerImpl3 = (Result3AStateListenerImpl) controller3A$lock3A$1.L$6;
            ref$ObjectRef2 = (Ref$ObjectRef) controller3A$lock3A$1.L$5;
            l3 = (Long) controller3A$lock3A$1.L$4;
            function13 = (Function1) controller3A$lock3A$1.L$3;
            aeMode2 = (AeMode) controller3A$lock3A$1.L$2;
            Lock3ABehavior lock3ABehavior6 = (Lock3ABehavior) controller3A$lock3A$1.L$1;
            lock3ABehavior4 = (Lock3ABehavior) controller3A$lock3A$1.L$0;
            ResultKt.throwOnFailure(obj);
            i2 = i5;
            result3AStateListenerImpl = result3AStateListenerImpl3;
            lock3ABehavior5 = lock3ABehavior6;
        }
        Result3A result3A = (Result3A) obj;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("lock3A - converged at frame number=");
            FrameMetadata frameMetadata = result3A.getFrameMetadata();
            sb2.append(frameMetadata != null ? Boxing.boxLong(frameMetadata.mo1641getFrameNumberUgla2oM()) : null);
            sb2.append(", status=");
            sb2.append((Object) Result3A.Status.m1765toStringimpl(result3A.m1761getStatusJvTi9ms()));
            android.util.Log.d("CXCP", sb2.toString());
        }
        if (!Result3A.Status.m1763equalsimpl0(result3A.m1761getStatusJvTi9ms(), Result3A.Status.Companion.m1767getOKJvTi9ms())) {
            return result3AStateListenerImpl.getResult();
        }
        ref$ObjectRef = ref$ObjectRef2;
        return m1898lock3ANowR6AlCjU(lock3ABehavior4, (Lock3ABehavior) ref$ObjectRef.element, lock3ABehavior5, aeMode2, function13, Boxing.boxInt(i2), l3);
    }

    public final Deferred unlock3A(Boolean bool, Boolean bool2, Boolean bool3, Function1 function1, int i, Long l) {
        Boolean bool4 = !CameraMetadata.Companion.getSupportsAutoFocusTrigger(this.metadata) ? null : bool2;
        Boolean bool5 = Boolean.TRUE;
        if (!Intrinsics.areEqual(bool, bool5) && !Intrinsics.areEqual(bool4, bool5) && !Intrinsics.areEqual(bool3, bool5)) {
            return CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.Companion.m1767getOKJvTi9ms(), null, null));
        }
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        if (Intrinsics.areEqual(bool4, bool5)) {
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "unlock3A - sending a request to unlock af first.");
            }
            if (!this.graphProcessor.trigger(parameterForAfTriggerCancel)) {
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "unlock3A - failed to send a request to unlock af first.");
                }
                return deferredResult3ASubmitFailed;
            }
            GraphState3A.m1909update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, null, Boolean.FALSE, null, 767, null);
        }
        Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(function1 == null ? Result3AStateListenerKt.toConditionChecker(createUnLocked3AExitConditions(Intrinsics.areEqual(bool, bool5), Intrinsics.areEqual(bool4, bool5), Intrinsics.areEqual(bool3, bool5))) : function1, Integer.valueOf(i), l);
        this.graphListener3A.addListener(result3AStateListenerImpl);
        Boolean bool6 = Intrinsics.areEqual(bool, bool5) ? Boolean.FALSE : null;
        Boolean bool7 = Intrinsics.areEqual(bool3, bool5) ? Boolean.FALSE : null;
        if (bool6 != null || bool7 != null) {
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "unlock3A - updating graph state, aeLock=" + bool6 + ", awbLock=" + bool7);
            }
            GraphState3A.m1909update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, bool6, null, bool7, 383, null);
        }
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        return result3AStateListenerImpl.getResult();
    }

    public final Deferred lock3AForCapture(boolean z, boolean z2, int i, long j) {
        Map map;
        if (z) {
            map = parametersForAePrecaptureAndAfTrigger;
        } else {
            map = parametersForAePrecapture;
        }
        return lock3AForCapture(map, createLock3AForCaptureExitConditions(z, z2), i, j);
    }

    private final Deferred lock3AForCapture(Map map, Function1 function1, int i, long j) {
        if (this.graphProcessor.getRepeatingRequest() != null) {
            if (map == null) {
                map = parametersForAePrecaptureAndAfTrigger;
            }
            Iterator it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((Map.Entry) it.next()).getValue(), 1)) {
                    z = true;
                }
            }
            if (function1 == null) {
                function1 = createLock3AForCaptureExitConditions(z, false);
            }
            Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(function1, Integer.valueOf(i), Long.valueOf(j));
            this.graphListener3A.addListener(result3AStateListenerImpl);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "lock3AForCapture - sending a request to trigger ae precapture metering and af.");
            }
            if (!this.graphProcessor.trigger(map)) {
                this.graphListener3A.removeListener(result3AStateListenerImpl);
                return deferredResult3ASubmitFailed;
            }
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            return result3AStateListenerImpl.getResult();
        }
        return deferredResult3ASubmitFailed;
    }

    public final Deferred unlock3APostCapture(boolean z) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        return unlock3APostCaptureAndroidMAndAbove(z);
    }

    private final Deferred unlock3APostCaptureAndroidMAndAbove(boolean z) {
        Result3AStateListenerImpl result3AStateListenerImpl;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "unlock3APostCapture - sending a request to reset af and ae precapture metering.");
        }
        if (!this.graphProcessor.trigger(z ? aePrecaptureAndAfCancelParams : aePrecaptureCancelParams)) {
            return deferredResult3ASubmitFailed;
        }
        if (z) {
            result3AStateListenerImpl = new Result3AStateListenerImpl(unlock3APostCaptureAfUnlockedCondition, (Integer) null, (Long) null, 6, (DefaultConstructorMarker) null);
        } else {
            result3AStateListenerImpl = new Result3AStateListenerImpl(MapsKt.emptyMap(), (Integer) null, (Long) null, 6, (DefaultConstructorMarker) null);
        }
        this.graphListener3A.addListener(result3AStateListenerImpl);
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        return result3AStateListenerImpl.getResult();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Deferred setTorchOn() {
        AeMode aeModeM1484boximpl;
        AeMode aeModeM1917getAeModeO_cDUUs = this.graphState3A.getCurrent().m1917getAeModeO_cDUUs();
        AeMode.Companion companion = AeMode.Companion;
        if (!(aeModeM1917getAeModeO_cDUUs == null ? false : AeMode.m1487equalsimpl0(aeModeM1917getAeModeO_cDUUs.m1491unboximpl(), companion.m1494getONbOjpiJc()))) {
            aeModeM1484boximpl = aeModeM1917getAeModeO_cDUUs != null ? AeMode.m1487equalsimpl0(aeModeM1917getAeModeO_cDUUs.m1491unboximpl(), companion.m1493getOFFbOjpiJc()) : false ? null : AeMode.m1484boximpl(companion.m1494getONbOjpiJc());
        }
        return m1899update3A169HPGg$default(this, aeModeM1484boximpl, null, null, FlashMode.m1630boximpl(FlashMode.Companion.m1637getTORCHLe5xUZU()), null, null, null, 118, null);
    }

    /* JADX INFO: renamed from: setTorchOff-NqN7i0k, reason: not valid java name */
    public final Deferred m1901setTorchOffNqN7i0k(AeMode aeMode) {
        return m1899update3A169HPGg$default(this, aeMode, null, null, FlashMode.m1630boximpl(FlashMode.Companion.m1636getOFFLe5xUZU()), null, null, null, 118, null);
    }

    /* JADX INFO: renamed from: lock3ANow-R6AlCjU, reason: not valid java name */
    private final Deferred m1898lock3ANowR6AlCjU(Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, Function1 function1, Integer num, Long l) {
        String str;
        Deferred result;
        AeMode aeMode2 = null;
        Boolean bool = lock3ABehavior == null ? null : Boolean.TRUE;
        Boolean bool2 = lock3ABehavior3 == null ? null : Boolean.TRUE;
        Map mapCreateLocked3AExitConditions = createLocked3AExitConditions(bool != null, lock3ABehavior2 != null, bool2 != null);
        if (function1 == null && mapCreateLocked3AExitConditions.isEmpty()) {
            str = "CXCP";
            result = null;
        } else {
            Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(function1 == null ? Result3AStateListenerKt.toConditionChecker(mapCreateLocked3AExitConditions) : function1, num, l);
            this.graphListener3A.addListener(result3AStateListenerImpl);
            str = "CXCP";
            GraphState3A.m1909update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, bool, null, bool2, 383, null);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(str, "lock3A - submitting request with aeLock=" + bool + " , awbLock=" + bool2);
            }
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            result = result3AStateListenerImpl.getResult();
        }
        if (lock3ABehavior2 == null) {
            Intrinsics.checkNotNull(result);
            return result;
        }
        if (aeMode != null) {
            int iM1491unboximpl = aeMode.m1491unboximpl();
            AeMode aeModeM1917getAeModeO_cDUUs = this.graphState3A.getCurrent().m1917getAeModeO_cDUUs();
            GraphState3A.m1909update7jOEVJU$default(this.graphState3A, AeMode.m1484boximpl(iM1491unboximpl), null, null, null, null, null, null, null, null, null, 1022, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            aeMode2 = aeModeM1917getAeModeO_cDUUs;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(str, "lock3A - submitting a request to lock af.");
        }
        if (!this.graphProcessor.trigger(parameterForAfTriggerStart)) {
            return deferredResult3ASubmitFailed;
        }
        GraphState3A.m1909update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, null, Boolean.TRUE, null, 767, null);
        if (aeMode2 != null) {
            GraphState3A.m1909update7jOEVJU$default(this.graphState3A, AeMode.m1484boximpl(aeMode2.m1491unboximpl()), null, null, null, null, null, null, null, null, null, 1022, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        }
        Intrinsics.checkNotNull(result);
        return result;
    }

    private final Map createConverged3AExitConditions(boolean z, boolean z2, boolean z3) {
        if (!z && !z2 && !z3) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeConvergedStateList);
        }
        if (z3) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbConvergedStateList);
        }
        if (z2) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afConvergedStateList);
        }
        return linkedHashMap;
    }

    private final Map createLocked3AExitConditions(boolean z, boolean z2, boolean z3) {
        if (!z && !z2 && !z3) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeLockedStateList);
        }
        if (z2) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afLockedStateList);
        }
        if (z3) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbLockedStateList);
        }
        return linkedHashMap;
    }

    private final Function1 createLock3AForCaptureExitConditions(final boolean z, final boolean z2) {
        return new Function1() { // from class: androidx.camera.camera2.pipe.graph.Controller3A$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Controller3A.createLock3AForCaptureExitConditions$lambda$0(z2, z, (FrameMetadata) obj));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean createLock3AForCaptureExitConditions$lambda$0(boolean z, boolean z2, FrameMetadata frameMetadata) {
        boolean zContains;
        boolean z3;
        boolean zIsNullOrIn;
        Intrinsics.checkNotNullParameter(frameMetadata, "frameMetadata");
        CaptureResult.Key CONTROL_AF_MODE = CaptureResult.CONTROL_AF_MODE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AF_MODE, "CONTROL_AF_MODE");
        Integer num = (Integer) frameMetadata.get(CONTROL_AF_MODE);
        if (num != null) {
            int iM1496constructorimpl = AfMode.m1496constructorimpl(num.intValue());
            if (AfMode.m1500isOnimpl(iM1496constructorimpl)) {
                if (z2) {
                    CaptureResult.Key CONTROL_AF_STATE = CaptureResult.CONTROL_AF_STATE;
                    Intrinsics.checkNotNullExpressionValue(CONTROL_AF_STATE, "CONTROL_AF_STATE");
                    zContains = Controller3AKt.isNullOrIn(frameMetadata.get(CONTROL_AF_STATE), afLockedStateList);
                } else if (AfMode.m1499isContinuousimpl(iM1496constructorimpl)) {
                    List list = afConvergedStateList;
                    CaptureResult.Key CONTROL_AF_STATE2 = CaptureResult.CONTROL_AF_STATE;
                    Intrinsics.checkNotNullExpressionValue(CONTROL_AF_STATE2, "CONTROL_AF_STATE");
                    zContains = CollectionsKt.contains(list, frameMetadata.get(CONTROL_AF_STATE2));
                } else {
                    zContains = true;
                }
            }
        } else {
            zContains = false;
        }
        CaptureResult.Key CONTROL_AE_MODE = CaptureResult.CONTROL_AE_MODE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AE_MODE, "CONTROL_AE_MODE");
        Integer num2 = (Integer) frameMetadata.get(CONTROL_AE_MODE);
        if (num2 == null) {
            z3 = false;
        } else {
            if (AeMode.m1489isOnimpl(AeMode.m1485constructorimpl(num2.intValue()))) {
                CaptureResult.Key CONTROL_AE_STATE = CaptureResult.CONTROL_AE_STATE;
                Intrinsics.checkNotNullExpressionValue(CONTROL_AE_STATE, "CONTROL_AE_STATE");
                if (Controller3AKt.isNullOrIn(frameMetadata.get(CONTROL_AE_STATE), aePostPrecaptureStateList)) {
                }
            }
            z3 = true;
        }
        CaptureResult.Key CONTROL_AWB_MODE = CaptureResult.CONTROL_AWB_MODE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_MODE, "CONTROL_AWB_MODE");
        Integer num3 = (Integer) frameMetadata.get(CONTROL_AWB_MODE);
        int iM1516constructorimpl = AwbMode.m1516constructorimpl(num3 != null ? num3.intValue() : 0);
        if (z && num3 == null) {
            zIsNullOrIn = false;
        } else if (z && AwbMode.m1519isOnimpl(iM1516constructorimpl)) {
            CaptureResult.Key CONTROL_AWB_STATE = CaptureResult.CONTROL_AWB_STATE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_STATE, "CONTROL_AWB_STATE");
            zIsNullOrIn = Controller3AKt.isNullOrIn(frameMetadata.get(CONTROL_AWB_STATE), awbPostPrecaptureStateList);
        } else {
            zIsNullOrIn = true;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "lock3AForCapture state " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + ": meetsAeCondition = " + z3 + ", meetsAfCondition = " + zContains + ", meetsAwbCondition = " + zIsNullOrIn);
        }
        return z3 && zContains && zIsNullOrIn;
    }

    private final Map createUnLocked3AExitConditions(boolean z, boolean z2, boolean z3) {
        if (!z && !z2 && !z3) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeUnlockedStateList);
        }
        if (z2) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afUnlockedStateList);
        }
        if (z3) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbUnlockedStateList);
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: createListenerFor3AParams-0dPwJB0, reason: not valid java name */
    private final Result3AStateListenerImpl m1897createListenerFor3AParams0dPwJB0(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (aeMode != null) {
            int iM1491unboximpl = aeMode.m1491unboximpl();
            CaptureResult.Key CONTROL_AE_MODE = CaptureResult.CONTROL_AE_MODE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AE_MODE, "CONTROL_AE_MODE");
        }
        if (afMode != null) {
            int iM1502unboximpl = afMode.m1502unboximpl();
            CaptureResult.Key CONTROL_AF_MODE = CaptureResult.CONTROL_AF_MODE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AF_MODE, "CONTROL_AF_MODE");
        }
        if (awbMode != null) {
            int iM1521unboximpl = awbMode.m1521unboximpl();
            CaptureResult.Key CONTROL_AWB_MODE = CaptureResult.CONTROL_AWB_MODE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_MODE, "CONTROL_AWB_MODE");
        }
        if (flashMode != null) {
            int iM1635unboximpl = flashMode.m1635unboximpl();
            CaptureResult.Key FLASH_MODE = CaptureResult.FLASH_MODE;
            Intrinsics.checkNotNullExpressionValue(FLASH_MODE, "FLASH_MODE");
        }
        return new Result3AStateListenerImpl(MapsKt.toMap(linkedHashMap), (Integer) null, (Long) null, 6, (DefaultConstructorMarker) null);
    }
}
