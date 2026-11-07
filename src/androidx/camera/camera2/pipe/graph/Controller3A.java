package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
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
import kotlin.Metadata;
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
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt__JobKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001f\b\u0001\u0018\u0000 c2\u00020\u0001:\u0001cB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ]\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u001a\b\u0002\u0010\u000e\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u0004\u0012\u00020\u0001\u0018\u00010\f2\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJi\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010 \u001a\u0004\u0018\u00010\u001e2\b\u0010!\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b$\u0010%J=\u0010,\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030*\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010+0\f2\u0006\u0010'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u0011H\u0002¢\u0006\u0004\b,\u0010-J=\u00101\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030*\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010+0\f2\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0011H\u0002¢\u0006\u0004\b1\u0010-J+\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0011H\u0002¢\u0006\u0004\b4\u00105J=\u00109\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030*\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010+0\f2\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u0011H\u0002¢\u0006\u0004\b9\u0010-J?\u0010D\u001a\u00020A2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010;2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010=2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010?H\u0002¢\u0006\u0004\bB\u0010CJy\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010;2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010=2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010?2\u0010\b\u0002\u0010F\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010+2\u0010\b\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010+2\u0010\b\u0002\u0010H\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010+¢\u0006\u0004\bI\u0010JJÎ\u0001\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0010\b\u0002\u0010F\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010+2\u0010\b\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010+2\u0010\b\u0002\u0010H\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010+2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"2\u0016\b\u0002\u0010L\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000f2\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u0015H\u0086@¢\u0006\u0004\bO\u0010PJe\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00112\u0016\b\u0002\u0010R\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\bS\u0010TJ;\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\b\b\u0002\u0010U\u001a\u00020\u00112\b\b\u0002\u00103\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0019\u0010VJ\u001d\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u0011¢\u0006\u0004\bW\u0010\u001dJ\u0013\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0004\bX\u0010YJ\u001f\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\"¢\u0006\u0004\bZ\u0010[R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010]R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010^R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010_R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010`R\u001e\u0010a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00178\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\ba\u0010b¨\u0006d"}, d2 = {"Landroidx/camera/camera2/pipe/graph/Controller3A;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/graph/GraphProcessor;", "graphProcessor", "Landroidx/camera/camera2/pipe/CameraMetadata;", "metadata", "Landroidx/camera/camera2/pipe/graph/GraphState3A;", "graphState3A", "Landroidx/camera/camera2/pipe/graph/Listener3A;", "graphListener3A", "<init>", "(Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/graph/Listener3A;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", "triggerCondition", "Lkotlin/Function1;", "Landroidx/camera/camera2/pipe/FrameMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "lockedCondition", _UrlKt.FRAGMENT_ENCODE_SET, "frameLimit", _UrlKt.FRAGMENT_ENCODE_SET, "timeLimitNs", "Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;", "lock3AForCapture", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;IJ)Lkotlinx/coroutines/Deferred;", "cancelAf", "unlock3APostCaptureAndroidMAndAbove", "(Z)Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Lock3ABehavior;", "aeLockBehavior", "afLockBehavior", "awbLockBehavior", "Landroidx/camera/camera2/pipe/AeMode;", "afTriggerStartAeMode", "lock3ANow-R6AlCjU", "(Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;)Lkotlinx/coroutines/Deferred;", "lock3ANow", "waitForAeToConverge", "waitForAfToConverge", "waitForAwbToConverge", "Landroid/hardware/camera2/CaptureResult$Key;", _UrlKt.FRAGMENT_ENCODE_SET, "createConverged3AExitConditions", "(ZZZ)Ljava/util/Map;", "waitForAeToLock", "waitForAfToLock", "waitForAwbToLock", "createLocked3AExitConditions", "isAfTriggered", "waitForAwb", "createLock3AForCaptureExitConditions", "(ZZ)Lkotlin/jvm/functions/Function1;", "ae", "af", "awb", "createUnLocked3AExitConditions", "aeMode", "Landroidx/camera/camera2/pipe/AfMode;", "afMode", "Landroidx/camera/camera2/pipe/AwbMode;", "awbMode", "Landroidx/camera/camera2/pipe/FlashMode;", "flashMode", "Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;", "createListenerFor3AParams-0dPwJB0", "(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;)Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;", "createListenerFor3AParams", "Landroid/hardware/camera2/params/MeteringRectangle;", "aeRegions", "afRegions", "awbRegions", "update3A-169HPGg", "(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;", "update3A", "convergedCondition", "convergedTimeLimitNs", "lockedTimeLimitNs", "lock3A-Qz1gx5w", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Long;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lock3A", "unlockedCondition", "unlock3A", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;ILjava/lang/Long;)Lkotlinx/coroutines/Deferred;", "triggerAf", "(ZZIJ)Lkotlinx/coroutines/Deferred;", "unlock3APostCapture", "setTorchOn", "()Lkotlinx/coroutines/Deferred;", "setTorchOff-NqN7i0k", "(Landroidx/camera/camera2/pipe/AeMode;)Lkotlinx/coroutines/Deferred;", "setTorchOff", "Landroidx/camera/camera2/pipe/graph/GraphProcessor;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroidx/camera/camera2/pipe/graph/GraphState3A;", "Landroidx/camera/camera2/pipe/graph/Listener3A;", "lastUpdate3AResult", "Lkotlinx/coroutines/Deferred;", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nController3A.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Controller3A.kt\nandroidx/camera/camera2/pipe/graph/Controller3A\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,897:1\n50#2,2:898\n50#2,2:913\n50#2,2:915\n50#2,2:917\n50#2,2:919\n50#2,2:921\n50#2,2:923\n50#2,2:925\n50#2,2:929\n50#2,2:931\n50#2,2:933\n50#2,2:935\n50#2,2:937\n1#3:900\n37#4:901\n36#4,3:902\n37#4:905\n36#4,3:906\n37#4:909\n36#4,3:910\n216#5,2:927\n*S KotlinDebug\n*F\n+ 1 Controller3A.kt\nandroidx/camera/camera2/pipe/graph/Controller3A\n*L\n223#1:898,2\n325#1:913,2\n361#1:915,2\n366#1:917,2\n374#1:919,2\n426#1:921,2\n428#1:923,2\n448#1:925,2\n577#1:929,2\n601#1:931,2\n665#1:933,2\n684#1:935,2\n780#1:937,2\n252#1:901\n252#1:902,3\n253#1:905\n253#1:906,3\n254#1:909\n254#1:910,3\n559#1:927,2\n*E\n"})
public final class Controller3A {
    private static final Map<CaptureRequest.Key<?>, Object> aePrecaptureAndAfCancelParams;
    private static final Map<CaptureRequest.Key<?>, Object> aePrecaptureCancelParams;
    private static final List<Integer> aeUnlockedStateList;
    private static final List<Integer> afUnlockedStateList;
    private static final List<Integer> awbUnlockedStateList;
    private static final CompletableDeferred<Result3A> deferredResult3ASubmitFailed;
    private static final Map<CaptureRequest.Key<?>, Object> parameterForAfTriggerCancel;
    private static final Map<CaptureRequest.Key<?>, Object> parameterForAfTriggerStart;
    private static final Map<CaptureRequest.Key<?>, Object> parametersForAePrecapture;
    private static final Map<CaptureRequest.Key<?>, Object> parametersForAePrecaptureAndAfTrigger;
    private static final Function1<FrameMetadata, Boolean> unlock3APostCaptureAfUnlockedCondition;
    private static final Map<? extends CaptureRequest.Key<? extends Object>, Object> unlock3APostCaptureLockAeAndCancelAfParams;
    private static final Map<CaptureRequest.Key<Boolean>, Boolean> unlock3APostCaptureLockAeParams;
    private static final Map<CaptureRequest.Key<?>, Object> unlock3APostCaptureUnlockAeParams;
    private final Listener3A graphListener3A;
    private final GraphProcessor graphProcessor;
    private final GraphState3A graphState3A;
    private Deferred<Result3A> lastUpdate3AResult;
    private final CameraMetadata metadata;
    private static final List<Integer> aeConvergedStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 4, 3});
    private static final List<Integer> awbConvergedStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 3});
    private static final List<Integer> afConvergedStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 6, 4, 5});
    private static final List<Integer> aeLockedStateList = CollectionsKt.listOf(3);
    private static final List<Integer> awbLockedStateList = CollectionsKt.listOf(3);
    private static final List<Integer> afLockedStateList = CollectionsKt.listOf((Object[]) new Integer[]{4, 5});
    private static final List<Integer> aePostPrecaptureStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 4, 3});
    private static final List<Integer> awbPostPrecaptureStateList = CollectionsKt.listOf((Object[]) new Integer[]{2, 3});

    public Controller3A(GraphProcessor graphProcessor, CameraMetadata cameraMetadata, GraphState3A graphState3A, Listener3A listener3A) {
        this.graphProcessor = graphProcessor;
        this.metadata = cameraMetadata;
        this.graphState3A = graphState3A;
        this.graphListener3A = listener3A;
    }

    static {
        CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
        parameterForAfTriggerStart = MapsKt.mapOf(TuplesKt.to(key, 1));
        parameterForAfTriggerCancel = MapsKt.mapOf(TuplesKt.to(key, 2));
        CaptureRequest.Key key2 = CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER;
        parametersForAePrecapture = MapsKt.mapOf(TuplesKt.to(key2, 1));
        parametersForAePrecaptureAndAfTrigger = MapsKt.mapOf(TuplesKt.to(key, 1), TuplesKt.to(key2, 1));
        deferredResult3ASubmitFailed = CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.INSTANCE.m1510getSUBMIT_FAILEDJvTi9ms(), null, 2, null));
        aeUnlockedStateList = CollectionsKt.listOf((Object[]) new Integer[]{0, 1, 2, 4});
        List<Integer> listListOf = CollectionsKt.listOf((Object[]) new Integer[]{0, 3, 1, 2, 6});
        afUnlockedStateList = listListOf;
        awbUnlockedStateList = CollectionsKt.listOf((Object[]) new Integer[]{0, 1, 2});
        CaptureRequest.Key key3 = CaptureRequest.CONTROL_AE_LOCK;
        Boolean bool = Boolean.TRUE;
        unlock3APostCaptureLockAeParams = MapsKt.mapOf(TuplesKt.to(key3, bool));
        unlock3APostCaptureLockAeAndCancelAfParams = MapsKt.mapOf(TuplesKt.to(key, 2), TuplesKt.to(key3, bool));
        unlock3APostCaptureUnlockAeParams = MapsKt.mapOf(TuplesKt.to(key3, Boolean.FALSE));
        aePrecaptureCancelParams = MapsKt.mapOf(TuplesKt.to(key2, 2));
        aePrecaptureAndAfCancelParams = MapsKt.mapOf(TuplesKt.to(key, 2), TuplesKt.to(key2, 2));
        unlock3APostCaptureAfUnlockedCondition = Result3AStateListenerKt.toConditionChecker(MapsKt.mapOf(TuplesKt.to(CaptureResult.CONTROL_AF_STATE, listListOf)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: update3A-169HPGg$default, reason: not valid java name */
    public static /* synthetic */ Deferred m1639update3A169HPGg$default(Controller3A controller3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, int i, Object obj) {
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
        return controller3A.m1642update3A169HPGg(aeMode, afMode, awbMode, flashMode, list, list2, list3);
    }

    /* JADX INFO: renamed from: update3A-169HPGg, reason: not valid java name */
    public final Deferred<Result3A> m1642update3A169HPGg(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            GraphState3A.m1649update7jOEVJU$default(this.graphState3A, aeMode, afMode, awbMode, flashMode, aeRegions, afRegions, awbRegions, null, null, null, 896, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            return deferredResult3ASubmitFailed;
        }
        Result3AStateListenerImpl result3AStateListenerImplM1637createListenerFor3AParams0dPwJB0 = m1637createListenerFor3AParams0dPwJB0(aeMode, afMode, awbMode, flashMode);
        this.graphListener3A.addListener(result3AStateListenerImplM1637createListenerFor3AParams0dPwJB0);
        GraphState3A.m1649update7jOEVJU$default(this.graphState3A, aeMode, afMode, awbMode, flashMode, aeRegions, afRegions, awbRegions, null, null, null, 896, null);
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        Deferred<Result3A> result = result3AStateListenerImplM1637createListenerFor3AParams0dPwJB0.getResult();
        synchronized (this) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Controller3A#update3A: cancelling previous request " + this.lastUpdate3AResult);
                }
                Deferred<Result3A> deferred = this.lastUpdate3AResult;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX INFO: renamed from: lock3A-Qz1gx5w, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1640lock3AQz1gx5w(List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, Function1<? super FrameMetadata, Boolean> function1, Function1<? super FrameMetadata, Boolean> function12, int i, Long l, Long l2, Continuation<? super Deferred<Result3A>> continuation) {
        Controller3A$lock3A$1 controller3A$lock3A$1;
        Ref.ObjectRef objectRef;
        int i2;
        Ref.ObjectRef objectRef2;
        Function1<? super FrameMetadata, Boolean> function13;
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
            objectRef = new Ref.ObjectRef();
            objectRef.element = lock3ABehavior2;
            if (!CameraMetadata.INSTANCE.getSupportsAutoFocusTrigger(this.metadata)) {
                objectRef.element = null;
            }
            if (lock3ABehavior == null && objectRef.element == 0 && lock3ABehavior5 == null) {
                return CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.INSTANCE.m1508getOKJvTi9ms(), null, null));
            }
            GraphState3A.m1649update7jOEVJU$default(this.graphState3A, null, null, null, null, list, list2, list3, null, null, null, 911, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            if (this.graphProcessor.getRepeatingRequest() == null) {
                return deferredResult3ASubmitFailed;
            }
            if (Controller3AKt.m1644shouldUnlockAft6FjEyI((Lock3ABehavior) objectRef.element)) {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "lock3A - sending a request to unlock af first.");
                }
                if (!this.graphProcessor.trigger(parameterForAfTriggerCancel)) {
                    return deferredResult3ASubmitFailed;
                }
            }
            if (!Controller3AKt.m1646shouldWaitForAeToConverget6FjEyI(lock3ABehavior) && !Controller3AKt.m1647shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) objectRef.element) && !Controller3AKt.m1648shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5)) {
                aeMode2 = aeMode;
                function13 = function12;
                i2 = i;
                l3 = l2;
                lock3ABehavior4 = lock3ABehavior;
                return m1638lock3ANowR6AlCjU(lock3ABehavior4, (Lock3ABehavior) objectRef.element, lock3ABehavior5, aeMode2, function13, Boxing.boxInt(i2), l3);
            }
            Result3AStateListenerImpl result3AStateListenerImpl2 = new Result3AStateListenerImpl(function1 == null ? Result3AStateListenerKt.toConditionChecker(createConverged3AExitConditions(Controller3AKt.m1646shouldWaitForAeToConverget6FjEyI(lock3ABehavior), Controller3AKt.m1647shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) objectRef.element), Controller3AKt.m1648shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5))) : function1, Boxing.boxInt(i), l);
            this.graphListener3A.addListener(result3AStateListenerImpl2);
            Boolean boolBoxBoolean = Controller3AKt.m1643shouldUnlockAet6FjEyI(lock3ABehavior) ? Boxing.boxBoolean(false) : null;
            Boolean boolBoxBoolean2 = Controller3AKt.m1645shouldUnlockAwbt6FjEyI(lock3ABehavior5) ? Boxing.boxBoolean(false) : null;
            if (boolBoxBoolean != null || boolBoxBoolean2 != null) {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "lock3A - setting aeLock=" + boolBoxBoolean + ", awbLock=" + boolBoxBoolean2);
                }
                GraphState3A.m1649update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, boolBoxBoolean, null, boolBoxBoolean2, 383, null);
            }
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder("lock3A - waiting for");
                boolean zM1646shouldWaitForAeToConverget6FjEyI = Controller3AKt.m1646shouldWaitForAeToConverget6FjEyI(lock3ABehavior);
                String str = _UrlKt.FRAGMENT_ENCODE_SET;
                sb.append(zM1646shouldWaitForAeToConverget6FjEyI ? " ae" : _UrlKt.FRAGMENT_ENCODE_SET);
                sb.append(Controller3AKt.m1647shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) objectRef.element) ? " af" : _UrlKt.FRAGMENT_ENCODE_SET);
                if (Controller3AKt.m1648shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5)) {
                    str = " awb";
                }
                sb.append(str);
                sb.append(" to converge before locking them.");
                android.util.Log.d("CXCP", sb.toString());
            }
            Deferred<Result3A> result = result3AStateListenerImpl2.getResult();
            controller3A$lock3A$1.L$0 = lock3ABehavior;
            controller3A$lock3A$1.L$1 = lock3ABehavior5;
            controller3A$lock3A$1.L$2 = aeMode;
            controller3A$lock3A$1.L$3 = function12;
            controller3A$lock3A$1.L$4 = l2;
            controller3A$lock3A$1.L$5 = objectRef;
            controller3A$lock3A$1.L$6 = result3AStateListenerImpl2;
            i2 = i;
            controller3A$lock3A$1.I$0 = i2;
            controller3A$lock3A$1.label = 1;
            Object objAwait = result.await(controller3A$lock3A$1);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef2 = objectRef;
            obj = objAwait;
            function13 = function12;
            l3 = l2;
            lock3ABehavior4 = lock3ABehavior;
            result3AStateListenerImpl = result3AStateListenerImpl2;
            aeMode2 = aeMode;
        } else {
            if (i4 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            int i5 = controller3A$lock3A$1.I$0;
            Result3AStateListenerImpl result3AStateListenerImpl3 = (Result3AStateListenerImpl) controller3A$lock3A$1.L$6;
            objectRef2 = (Ref.ObjectRef) controller3A$lock3A$1.L$5;
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
            StringBuilder sb2 = new StringBuilder("lock3A - converged at frame number=");
            FrameMetadata frameMetadata = result3A.getFrameMetadata();
            sb2.append(frameMetadata != null ? Boxing.boxLong(frameMetadata.mo1390getFrameNumberUgla2oM()) : null);
            sb2.append(", status=");
            sb2.append((Object) Result3A.Status.m1506toStringimpl(result3A.getStatus()));
            android.util.Log.d("CXCP", sb2.toString());
        }
        if (!Result3A.Status.m1504equalsimpl0(result3A.getStatus(), Result3A.Status.INSTANCE.m1508getOKJvTi9ms())) {
            return result3AStateListenerImpl.getResult();
        }
        objectRef = objectRef2;
        return m1638lock3ANowR6AlCjU(lock3ABehavior4, (Lock3ABehavior) objectRef.element, lock3ABehavior5, aeMode2, function13, Boxing.boxInt(i2), l3);
    }

    public final Deferred<Result3A> unlock3A(Boolean ae, Boolean af, Boolean awb, Function1<? super FrameMetadata, Boolean> unlockedCondition, int frameLimit, Long timeLimitNs) {
        Boolean bool = !CameraMetadata.INSTANCE.getSupportsAutoFocusTrigger(this.metadata) ? null : af;
        Boolean bool2 = Boolean.TRUE;
        if (!Intrinsics.areEqual(ae, bool2) && !Intrinsics.areEqual(bool, bool2) && !Intrinsics.areEqual(awb, bool2)) {
            return CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.INSTANCE.m1508getOKJvTi9ms(), null, null));
        }
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        if (Intrinsics.areEqual(bool, bool2)) {
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
            GraphState3A.m1649update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, null, Boolean.FALSE, null, 767, null);
        }
        Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(unlockedCondition == null ? Result3AStateListenerKt.toConditionChecker(createUnLocked3AExitConditions(Intrinsics.areEqual(ae, bool2), Intrinsics.areEqual(bool, bool2), Intrinsics.areEqual(awb, bool2))) : unlockedCondition, Integer.valueOf(frameLimit), timeLimitNs);
        this.graphListener3A.addListener(result3AStateListenerImpl);
        Boolean bool3 = Intrinsics.areEqual(ae, bool2) ? Boolean.FALSE : null;
        Boolean bool4 = Intrinsics.areEqual(awb, bool2) ? Boolean.FALSE : null;
        if (bool3 != null || bool4 != null) {
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "unlock3A - updating graph state, aeLock=" + bool3 + ", awbLock=" + bool4);
            }
            GraphState3A.m1649update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, bool3, null, bool4, 383, null);
        }
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        return result3AStateListenerImpl.getResult();
    }

    public final Deferred<Result3A> lock3AForCapture(boolean triggerAf, boolean waitForAwb, int frameLimit, long timeLimitNs) {
        Map<CaptureRequest.Key<?>, ? extends Object> map;
        if (triggerAf) {
            map = parametersForAePrecaptureAndAfTrigger;
        } else {
            map = parametersForAePrecapture;
        }
        return lock3AForCapture(map, createLock3AForCaptureExitConditions(triggerAf, waitForAwb), frameLimit, timeLimitNs);
    }

    private final Deferred<Result3A> lock3AForCapture(Map<CaptureRequest.Key<?>, ? extends Object> triggerCondition, Function1<? super FrameMetadata, Boolean> lockedCondition, int frameLimit, long timeLimitNs) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        if (triggerCondition == null) {
            triggerCondition = parametersForAePrecaptureAndAfTrigger;
        }
        Iterator<Map.Entry<CaptureRequest.Key<?>, ? extends Object>> it = triggerCondition.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (Intrinsics.areEqual(it.next().getValue(), (Object) 1)) {
                z = true;
            }
        }
        if (lockedCondition == null) {
            lockedCondition = createLock3AForCaptureExitConditions(z, false);
        }
        Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(lockedCondition, Integer.valueOf(frameLimit), Long.valueOf(timeLimitNs));
        this.graphListener3A.addListener(result3AStateListenerImpl);
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "lock3AForCapture - sending a request to trigger ae precapture metering and af.");
        }
        if (!this.graphProcessor.trigger(triggerCondition)) {
            this.graphListener3A.removeListener(result3AStateListenerImpl);
            return deferredResult3ASubmitFailed;
        }
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        return result3AStateListenerImpl.getResult();
    }

    public final Deferred<Result3A> unlock3APostCapture(boolean cancelAf) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        return unlock3APostCaptureAndroidMAndAbove(cancelAf);
    }

    private final Deferred<Result3A> unlock3APostCaptureAndroidMAndAbove(boolean cancelAf) {
        Result3AStateListenerImpl result3AStateListenerImpl;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "unlock3APostCapture - sending a request to reset af and ae precapture metering.");
        }
        if (!this.graphProcessor.trigger(cancelAf ? aePrecaptureAndAfCancelParams : aePrecaptureCancelParams)) {
            return deferredResult3ASubmitFailed;
        }
        if (cancelAf) {
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
    public final Deferred<Result3A> setTorchOn() {
        AeMode aeModeM1233boximpl;
        AeMode aeMode = this.graphState3A.getCurrent().getAeMode();
        AeMode.Companion companion = AeMode.INSTANCE;
        if (!(aeMode == null ? false : AeMode.m1236equalsimpl0(aeMode.getValue(), companion.m1243getONbOjpiJc()))) {
            aeModeM1233boximpl = aeMode != null ? AeMode.m1236equalsimpl0(aeMode.getValue(), companion.m1242getOFFbOjpiJc()) : false ? null : AeMode.m1233boximpl(companion.m1243getONbOjpiJc());
        }
        return m1639update3A169HPGg$default(this, aeModeM1233boximpl, null, null, FlashMode.m1379boximpl(FlashMode.INSTANCE.m1386getTORCHLe5xUZU()), null, null, null, 118, null);
    }

    /* JADX INFO: renamed from: setTorchOff-NqN7i0k, reason: not valid java name */
    public final Deferred<Result3A> m1641setTorchOffNqN7i0k(AeMode aeMode) {
        return m1639update3A169HPGg$default(this, aeMode, null, null, FlashMode.m1379boximpl(FlashMode.INSTANCE.m1385getOFFLe5xUZU()), null, null, null, 118, null);
    }

    /* JADX INFO: renamed from: lock3ANow-R6AlCjU, reason: not valid java name */
    private final Deferred<Result3A> m1638lock3ANowR6AlCjU(Lock3ABehavior aeLockBehavior, Lock3ABehavior afLockBehavior, Lock3ABehavior awbLockBehavior, AeMode afTriggerStartAeMode, Function1<? super FrameMetadata, Boolean> lockedCondition, Integer frameLimit, Long timeLimitNs) {
        String str;
        Deferred<Result3A> result;
        AeMode aeMode = null;
        Boolean bool = aeLockBehavior == null ? null : Boolean.TRUE;
        Boolean bool2 = awbLockBehavior == null ? null : Boolean.TRUE;
        Map<CaptureResult.Key<?>, List<Object>> mapCreateLocked3AExitConditions = createLocked3AExitConditions(bool != null, afLockBehavior != null, bool2 != null);
        if (lockedCondition == null && mapCreateLocked3AExitConditions.isEmpty()) {
            str = "CXCP";
            result = null;
        } else {
            Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(lockedCondition == null ? Result3AStateListenerKt.toConditionChecker(mapCreateLocked3AExitConditions) : lockedCondition, frameLimit, timeLimitNs);
            this.graphListener3A.addListener(result3AStateListenerImpl);
            str = "CXCP";
            GraphState3A.m1649update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, bool, null, bool2, 383, null);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(str, "lock3A - submitting request with aeLock=" + bool + " , awbLock=" + bool2);
            }
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            result = result3AStateListenerImpl.getResult();
        }
        if (afLockBehavior != null) {
            if (afTriggerStartAeMode != null) {
                int value = afTriggerStartAeMode.getValue();
                AeMode aeMode2 = this.graphState3A.getCurrent().getAeMode();
                GraphState3A.m1649update7jOEVJU$default(this.graphState3A, AeMode.m1233boximpl(value), null, null, null, null, null, null, null, null, null, 1022, null);
                this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
                aeMode = aeMode2;
            }
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(str, "lock3A - submitting a request to lock af.");
            }
            if (!this.graphProcessor.trigger(parameterForAfTriggerStart)) {
                return deferredResult3ASubmitFailed;
            }
            GraphState3A.m1649update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, null, Boolean.TRUE, null, 767, null);
            if (aeMode != null) {
                GraphState3A.m1649update7jOEVJU$default(this.graphState3A, AeMode.m1233boximpl(aeMode.getValue()), null, null, null, null, null, null, null, null, null, 1022, null);
                this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            }
        }
        return result;
    }

    private final Map<CaptureResult.Key<?>, List<Object>> createConverged3AExitConditions(boolean waitForAeToConverge, boolean waitForAfToConverge, boolean waitForAwbToConverge) {
        if (!waitForAeToConverge && !waitForAfToConverge && !waitForAwbToConverge) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (waitForAeToConverge) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeConvergedStateList);
        }
        if (waitForAwbToConverge) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbConvergedStateList);
        }
        if (waitForAfToConverge) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afConvergedStateList);
        }
        return linkedHashMap;
    }

    private final Map<CaptureResult.Key<?>, List<Object>> createLocked3AExitConditions(boolean waitForAeToLock, boolean waitForAfToLock, boolean waitForAwbToLock) {
        if (!waitForAeToLock && !waitForAfToLock && !waitForAwbToLock) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (waitForAeToLock) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeLockedStateList);
        }
        if (waitForAfToLock) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afLockedStateList);
        }
        if (waitForAwbToLock) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbLockedStateList);
        }
        return linkedHashMap;
    }

    private final Function1<FrameMetadata, Boolean> createLock3AForCaptureExitConditions(final boolean isAfTriggered, final boolean waitForAwb) {
        return new Function1() { // from class: androidx.camera.camera2.pipe.graph.Controller3A$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Controller3A.$r8$lambda$ic7xTz5jmtx4Wl9pgzoHiHyPyIQ(waitForAwb, isAfTriggered, (FrameMetadata) obj));
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean $r8$lambda$ic7xTz5jmtx4Wl9pgzoHiHyPyIQ(boolean z, boolean z2, FrameMetadata frameMetadata) {
        boolean zContains;
        boolean zIsNullOrIn;
        Integer num = (Integer) frameMetadata.get(CaptureResult.CONTROL_AF_MODE);
        if (num != null) {
            int iM1245constructorimpl = AfMode.m1245constructorimpl(num.intValue());
            if (AfMode.m1249isOnimpl(iM1245constructorimpl)) {
                if (z2) {
                    zContains = Controller3AKt.isNullOrIn(frameMetadata.get(CaptureResult.CONTROL_AF_STATE), afLockedStateList);
                } else {
                    zContains = AfMode.m1248isContinuousimpl(iM1245constructorimpl) ? CollectionsKt.contains(afConvergedStateList, frameMetadata.get(CaptureResult.CONTROL_AF_STATE)) : true;
                }
            }
        } else {
            zContains = false;
        }
        Integer num2 = (Integer) frameMetadata.get(CaptureResult.CONTROL_AE_MODE);
        boolean z3 = num2 != null && (!AeMode.m1238isOnimpl(AeMode.m1234constructorimpl(num2.intValue())) || Controller3AKt.isNullOrIn(frameMetadata.get(CaptureResult.CONTROL_AE_STATE), aePostPrecaptureStateList));
        Integer num3 = (Integer) frameMetadata.get(CaptureResult.CONTROL_AWB_MODE);
        int iM1265constructorimpl = AwbMode.m1265constructorimpl(num3 != null ? num3.intValue() : 0);
        if (z && num3 == null) {
            zIsNullOrIn = false;
        } else {
            zIsNullOrIn = (z && AwbMode.m1268isOnimpl(iM1265constructorimpl)) ? Controller3AKt.isNullOrIn(frameMetadata.get(CaptureResult.CONTROL_AWB_STATE), awbPostPrecaptureStateList) : true;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "lock3AForCapture state " + ((Object) FrameNumber.m1396toStringimpl(frameMetadata.mo1390getFrameNumberUgla2oM())) + ": meetsAeCondition = " + z3 + ", meetsAfCondition = " + zContains + ", meetsAwbCondition = " + zIsNullOrIn);
        }
        return z3 && zContains && zIsNullOrIn;
    }

    private final Map<CaptureResult.Key<?>, List<Object>> createUnLocked3AExitConditions(boolean ae, boolean af, boolean awb) {
        if (!ae && !af && !awb) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (ae) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeUnlockedStateList);
        }
        if (af) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afUnlockedStateList);
        }
        if (awb) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbUnlockedStateList);
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: createListenerFor3AParams-0dPwJB0, reason: not valid java name */
    private final Result3AStateListenerImpl m1637createListenerFor3AParams0dPwJB0(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (aeMode != null) {
        }
        if (afMode != null) {
        }
        if (awbMode != null) {
        }
        if (flashMode != null) {
        }
        return new Result3AStateListenerImpl(MapsKt.toMap(linkedHashMap), (Integer) null, (Long) null, 6, (DefaultConstructorMarker) null);
    }
}
