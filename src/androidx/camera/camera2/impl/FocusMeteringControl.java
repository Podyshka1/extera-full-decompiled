package androidx.camera.camera2.impl;

import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Log;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.workaround.MeteringRegionCorrection;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.Logger;
import androidx.camera.core.MeteringPoint;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.mediarouter.media.GlobalMediaRouter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u0000 o2\u00020\u00012\u00020\u0002:\u0001oB1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J%\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ/\u0010!\u001a\u00020\u0016*\b\u0012\u0004\u0012\u00020\u001d0\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010'\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J-\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0015\u001a\u00020\u00142\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u0002¢\u0006\u0004\b)\u0010*J'\u0010.\u001a\u00020\u0016\"\u0004\b\u0000\u0010+*\b\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/J\u001b\u00100\u001a\u00020\u0012*\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b0\u00101J\u0017\u00106\u001a\u00020\u001f2\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b4\u00105J\u001d\u0010:\u001a\u00020\u00162\f\u00109\u001a\b\u0012\u0004\u0012\u00020807H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0016H\u0016¢\u0006\u0004\b<\u0010=J%\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00120A2\u0006\u0010?\u001a\u00020>2\b\b\u0002\u0010@\u001a\u00020\u000f¢\u0006\u0004\bB\u0010CJ\u0015\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001c¢\u0006\u0004\bD\u0010ER\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010FR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010GR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010HR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010IR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010JR\u0018\u0010K\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u001c\u0010R\u001a\n Q*\u0004\u0018\u00010P0P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\u001c\u0010T\u001a\n Q*\u0004\u0018\u00010P0P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010SR\u001c\u0010U\u001a\n Q*\u0004\u0018\u00010P0P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010SR\u0014\u0010V\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR\u001e\u0010Y\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010#\u0018\u00010X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010ZR\u001e\u0010[\u001a\f\u0012\u0006\u0012\u0004\u0018\u000102\u0018\u00010X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010ZR\u001e\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R \u0010^\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010]R\u0018\u0010`\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010b\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010aR\u0014\u0010f\u001a\u00020c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bd\u0010eR\u0014\u0010i\u001a\u00020M8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bg\u0010hR(\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010j\u001a\u0004\u0018\u00010\u00148V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bk\u0010l\"\u0004\bm\u0010n¨\u0006p"}, d2 = {"Landroidx/camera/camera2/impl/FocusMeteringControl;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;", "meteringRegionCorrection", "Landroidx/camera/camera2/impl/State3AControl;", "state3AControl", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/compat/ZoomCompat;", "zoomCompat", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/ZoomCompat;)V", _UrlKt.FRAGMENT_ENCODE_SET, "delayMillis", "Lkotlinx/coroutines/CompletableDeferred;", "Landroidx/camera/core/FocusMeteringResult;", "resultToCancel", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "requestControl", _UrlKt.FRAGMENT_ENCODE_SET, "triggerAutoCancel", "(JLkotlinx/coroutines/CompletableDeferred;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "resultToComplete", "triggerFocusTimeout", "(JLkotlinx/coroutines/CompletableDeferred;)V", "Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;", "resultDeferred", _UrlKt.FRAGMENT_ENCODE_SET, "shouldTriggerAf", "propagateToFocusMeteringResultDeferred", "(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;Z)V", "Landroidx/camera/camera2/pipe/AeMode;", "preferredMode", "getSupportedAeMode-rTgdhRc", "(I)I", "getSupportedAeMode", "signalToCancel", "cancelFocusAndMeteringNowAsync", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlinx/coroutines/CompletableDeferred;)Lkotlinx/coroutines/Deferred;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "message", "setCancelException", "(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)V", "toFocusMeteringResult", "(Landroidx/camera/camera2/pipe/Result3A;Z)Landroidx/camera/core/FocusMeteringResult;", "Landroidx/camera/camera2/pipe/AfMode;", "afMode", "isAfModeSupported-wvCmZyc", "(I)Z", "isAfModeSupported", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "runningUseCases", "onRunningUseCasesChanged", "(Ljava/util/Set;)V", "reset", "()V", "Landroidx/camera/core/FocusMeteringAction;", "action", "autoFocusTimeoutMs", "Lcom/google/common/util/concurrent/ListenableFuture;", "startFocusAndMetering", "(Landroidx/camera/core/FocusMeteringAction;J)Lcom/google/common/util/concurrent/ListenableFuture;", "cancelFocusAndMeteringAsync", "()Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/impl/CameraProperties;", "Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;", "Landroidx/camera/camera2/impl/State3AControl;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/compat/ZoomCompat;", "_requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "Landroid/util/Rational;", "previewAspectRatio", "Landroid/util/Rational;", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin.jvm.PlatformType", "maxAfRegionCount", "Ljava/lang/Integer;", "maxAeRegionCount", "maxAwbRegionCount", "supportsAutoFocusTrigger", "Z", _UrlKt.FRAGMENT_ENCODE_SET, "availableAeModes", "Ljava/util/List;", "availableAfModes", "updateSignal", "Lkotlinx/coroutines/CompletableDeferred;", "cancelSignal", "Lkotlinx/coroutines/Job;", "focusTimeoutJob", "Lkotlinx/coroutines/Job;", "autoCancelJob", "Landroid/graphics/Rect;", "getCropSensorRegion", "()Landroid/graphics/Rect;", "cropSensorRegion", "getDefaultAspectRatio", "()Landroid/util/Rational;", "defaultAspectRatio", "value", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "setRequestControl", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "Companion", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFocusMeteringControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusMeteringControl.kt\nandroidx/camera/camera2/impl/FocusMeteringControl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,556:1\n11258#2:557\n11593#2,3:558\n11258#2:561\n11593#2,3:562\n1#3:565\n85#4,4:566\n85#4,4:570\n129#4,4:574\n85#4,4:578\n*S KotlinDebug\n*F\n+ 1 FocusMeteringControl.kt\nandroidx/camera/camera2/impl/FocusMeteringControl\n*L\n110#1:557\n110#1:558,3\n114#1:561\n114#1:562,3\n198#1:566,4\n216#1:570,4\n295#1:574,4\n301#1:578,4\n*E\n"})
public final class FocusMeteringControl implements UseCaseCameraControl, UseCaseManager.RunningUseCasesChangeListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private UseCaseCameraRequestControl _requestControl;
    private Job autoCancelJob;
    private final List<AeMode> availableAeModes;
    private final List<AfMode> availableAfModes;
    private final CameraProperties cameraProperties;
    private CompletableDeferred<Result3A> cancelSignal;
    private Job focusTimeoutJob;
    private final Integer maxAeRegionCount;
    private final Integer maxAfRegionCount;
    private final Integer maxAwbRegionCount;
    private final MeteringRegionCorrection meteringRegionCorrection;
    private Rational previewAspectRatio;
    private final State3AControl state3AControl;
    private final boolean supportsAutoFocusTrigger;
    private final UseCaseThreads threads;
    private CompletableDeferred<FocusMeteringResult> updateSignal;
    private final ZoomCompat zoomCompat;

    public FocusMeteringControl(CameraProperties cameraProperties, MeteringRegionCorrection meteringRegionCorrection, State3AControl state3AControl, UseCaseThreads useCaseThreads, ZoomCompat zoomCompat) {
        ArrayList arrayList;
        this.cameraProperties = cameraProperties;
        this.meteringRegionCorrection = meteringRegionCorrection;
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.zoomCompat = zoomCompat;
        this.maxAfRegionCount = (Integer) cameraProperties.getMetadata().getOrDefault((CameraCharacteristics.Key<int>) CameraCharacteristics.CONTROL_MAX_REGIONS_AF, 0);
        this.maxAeRegionCount = (Integer) cameraProperties.getMetadata().getOrDefault((CameraCharacteristics.Key<int>) CameraCharacteristics.CONTROL_MAX_REGIONS_AE, 0);
        this.maxAwbRegionCount = (Integer) cameraProperties.getMetadata().getOrDefault((CameraCharacteristics.Key<int>) CameraCharacteristics.CONTROL_MAX_REGIONS_AWB, 0);
        this.supportsAutoFocusTrigger = CameraMetadata.INSTANCE.getSupportsAutoFocusTrigger(cameraProperties.getMetadata());
        int[] iArr = (int[]) cameraProperties.getMetadata().get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        ArrayList arrayList2 = null;
        if (iArr != null) {
            arrayList = new ArrayList(iArr.length);
            for (int i : iArr) {
                arrayList.add(AeMode.INSTANCE.m1241fromIntOrNullkQd0u18(i));
            }
        } else {
            arrayList = null;
        }
        this.availableAeModes = arrayList;
        int[] iArr2 = (int[]) this.cameraProperties.getMetadata().get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        if (iArr2 != null) {
            arrayList2 = new ArrayList(iArr2.length);
            for (int i2 : iArr2) {
                arrayList2.add(AfMode.INSTANCE.m1252fromIntOrNullMKXwA8g(i2));
            }
        }
        this.availableAfModes = arrayList2;
    }

    /* JADX INFO: renamed from: getRequestControl, reason: from getter */
    public UseCaseCameraRequestControl get_requestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseManager.RunningUseCasesChangeListener
    public void onRunningUseCasesChanged(Set<? extends UseCase> runningUseCases) {
        Size attachedSurfaceResolution;
        this.previewAspectRatio = null;
        for (UseCase useCase : runningUseCases) {
            if ((useCase instanceof Preview) && (attachedSurfaceResolution = ((Preview) useCase).getAttachedSurfaceResolution()) != null) {
                this.previewAspectRatio = new Rational(attachedSurfaceResolution.getWidth(), attachedSurfaceResolution.getHeight());
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this.previewAspectRatio = null;
        cancelFocusAndMeteringAsync();
    }

    private final Rect getCropSensorRegion() {
        return this.zoomCompat.getCropSensorRegion();
    }

    private final Rational getDefaultAspectRatio() {
        Rational rational = this.previewAspectRatio;
        return rational == null ? new Rational(getCropSensorRegion().width(), getCropSensorRegion().height()) : rational;
    }

    public static /* synthetic */ ListenableFuture startFocusAndMetering$default(FocusMeteringControl focusMeteringControl, FocusMeteringAction focusMeteringAction, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 5000;
        }
        return focusMeteringControl.startFocusAndMetering(focusMeteringAction, j);
    }

    public final ListenableFuture<FocusMeteringResult> startFocusAndMetering(FocusMeteringAction action, long autoFocusTimeoutMs) {
        List<MeteringRectangle> list;
        List<MeteringRectangle> list2;
        List<MeteringRectangle> list3;
        Deferred<Result3A> deferredUpdate3aRegions;
        CompletableDeferred<FocusMeteringResult> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        UseCaseCameraRequestControl useCaseCameraRequestControl = get_requestControl();
        if (useCaseCameraRequestControl != null) {
            Job job = this.focusTimeoutJob;
            if (job != null) {
                Job.cancel$default(job, null, 1, null);
            }
            Job job2 = this.autoCancelJob;
            if (job2 != null) {
                Job.cancel$default(job2, null, 1, null);
            }
            CompletableDeferred<Result3A> completableDeferred = this.cancelSignal;
            if (completableDeferred != null) {
                setCancelException(completableDeferred, "Cancelled by another startFocusAndMetering()");
            }
            CompletableDeferred<FocusMeteringResult> completableDeferred2 = this.updateSignal;
            if (completableDeferred2 != null) {
                setCancelException(completableDeferred2, "Cancelled by another startFocusAndMetering()");
            }
            this.updateSignal = completableDeferredCompletableDeferred$default;
            Companion companion = INSTANCE;
            List<MeteringRectangle> listMeteringRegionsFromMeteringPoints = companion.meteringRegionsFromMeteringPoints(action.getMeteringPointsAe(), this.maxAeRegionCount.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 2, this.meteringRegionCorrection);
            List<MeteringRectangle> listMeteringRegionsFromMeteringPoints2 = companion.meteringRegionsFromMeteringPoints(action.getMeteringPointsAf(), this.maxAfRegionCount.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 1, this.meteringRegionCorrection);
            List<MeteringRectangle> listMeteringRegionsFromMeteringPoints3 = companion.meteringRegionsFromMeteringPoints(action.getMeteringPointsAwb(), this.maxAwbRegionCount.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 4, this.meteringRegionCorrection);
            if (listMeteringRegionsFromMeteringPoints.isEmpty() && listMeteringRegionsFromMeteringPoints2.isEmpty() && listMeteringRegionsFromMeteringPoints3.isEmpty()) {
                completableDeferredCompletableDeferred$default.completeExceptionally(new IllegalArgumentException("None of the specified AF/AE/AWB MeteringPoints is supported on this camera."));
                return CoroutineAdaptersKt.asListenableFuture$default((Deferred) completableDeferredCompletableDeferred$default, (Object) null, 1, (Object) null);
            }
            List<MeteringRectangle> list4 = listMeteringRegionsFromMeteringPoints2;
            if (!list4.isEmpty()) {
                this.state3AControl.setPreferredFocusModeAsync(1);
            }
            if (this.maxAeRegionCount.intValue() > 0) {
                List<MeteringRectangle> list5 = listMeteringRegionsFromMeteringPoints;
                if (list5.isEmpty()) {
                    list5 = ArraysKt.toList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                list = list5;
            } else {
                list = null;
            }
            if (this.maxAfRegionCount.intValue() > 0) {
                if (list4.isEmpty()) {
                    list4 = ArraysKt.toList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                list2 = list4;
            } else {
                list2 = null;
            }
            if (this.maxAwbRegionCount.intValue() > 0) {
                List<MeteringRectangle> list6 = listMeteringRegionsFromMeteringPoints3;
                if (list6.isEmpty()) {
                    list6 = ArraysKt.toList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                list3 = list6;
            } else {
                list3 = null;
            }
            if (listMeteringRegionsFromMeteringPoints2.isEmpty() || !this.supportsAutoFocusTrigger) {
                List<MeteringRectangle> list7 = list2;
                List<MeteringRectangle> list8 = list3;
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "startFocusAndMetering: updating 3A regions only");
                }
                deferredUpdate3aRegions = useCaseCameraRequestControl.update3aRegions(list, list7, list8);
            } else {
                long autoCancelDurationInMillis = (!action.isAutoCancelEnabled() || action.getAutoCancelDurationInMillis() >= autoFocusTimeoutMs) ? autoFocusTimeoutMs : action.getAutoCancelDurationInMillis();
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "startFocusAndMetering: updating 3A regions & triggering AF");
                }
                deferredUpdate3aRegions = UseCaseCameraRequestControl.m1220startFocusAndMeteringAsyncNxRnBj4$default(useCaseCameraRequestControl, list, list2, list3, null, this.maxAfRegionCount.intValue() > 0 ? Lock3ABehavior.m1404boximpl(Lock3ABehavior.INSTANCE.m1413getIMMEDIATEhRqSH3k()) : null, null, AeMode.m1233boximpl(m1197getSupportedAeModerTgdhRc(AeMode.INSTANCE.m1243getONbOjpiJc())), TimeUnit.NANOSECONDS.convert(autoCancelDurationInMillis, TimeUnit.MILLISECONDS), 40, null);
            }
            propagateToFocusMeteringResultDeferred(deferredUpdate3aRegions, completableDeferredCompletableDeferred$default, !listMeteringRegionsFromMeteringPoints2.isEmpty());
            triggerFocusTimeout(autoFocusTimeoutMs, completableDeferredCompletableDeferred$default);
            if (action.isAutoCancelEnabled()) {
                triggerAutoCancel(action.getAutoCancelDurationInMillis(), completableDeferredCompletableDeferred$default, useCaseCameraRequestControl);
            }
        } else {
            completableDeferredCompletableDeferred$default.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return CoroutineAdaptersKt.asListenableFuture$default((Deferred) completableDeferredCompletableDeferred$default, (Object) null, 1, (Object) null);
    }

    private final void triggerAutoCancel(long delayMillis, CompletableDeferred<FocusMeteringResult> resultToCancel, UseCaseCameraRequestControl requestControl) {
        Job job = this.autoCancelJob;
        if (job != null) {
            Job.cancel$default(job, null, 1, null);
        }
        this.autoCancelJob = BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01671(delayMillis, this, requestControl, resultToCancel, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FocusMeteringControl$triggerAutoCancel$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FocusMeteringControl$triggerAutoCancel$1", m921f = "FocusMeteringControl.kt", m922i = {}, m923l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_DISCONNECTED}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    @SourceDebugExtension({"SMAP\nFocusMeteringControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusMeteringControl.kt\nandroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,556:1\n85#2,4:557\n*S KotlinDebug\n*F\n+ 1 FocusMeteringControl.kt\nandroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1\n*L\n267#1:557,4\n*E\n"})
    public static final class C01671 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $delayMillis;
        final /* synthetic */ UseCaseCameraRequestControl $requestControl;
        final /* synthetic */ CompletableDeferred<FocusMeteringResult> $resultToCancel;
        int label;
        final /* synthetic */ FocusMeteringControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01671(long j, FocusMeteringControl focusMeteringControl, UseCaseCameraRequestControl useCaseCameraRequestControl, CompletableDeferred<FocusMeteringResult> completableDeferred, Continuation<? super C01671> continuation) {
            super(2, continuation);
            this.$delayMillis = j;
            this.this$0 = focusMeteringControl;
            this.$requestControl = useCaseCameraRequestControl;
            this.$resultToCancel = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01671(this.$delayMillis, this.this$0, this.$requestControl, this.$resultToCancel, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01671) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = this.$delayMillis;
                this.label = 1;
                if (DelayKt.delay(j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            long j2 = this.$delayMillis;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "triggerAutoCancel: auto-canceling after " + j2 + " ms");
            }
            this.this$0.cancelFocusAndMeteringNowAsync(this.$requestControl, this.$resultToCancel);
            return Unit.INSTANCE;
        }
    }

    private final void triggerFocusTimeout(long delayMillis, CompletableDeferred<FocusMeteringResult> resultToComplete) {
        Job job = this.focusTimeoutJob;
        if (job != null) {
            Job.cancel$default(job, null, 1, null);
        }
        this.focusTimeoutJob = BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01681(delayMillis, resultToComplete, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FocusMeteringControl$triggerFocusTimeout$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FocusMeteringControl$triggerFocusTimeout$1", m921f = "FocusMeteringControl.kt", m922i = {}, m923l = {280}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    @SourceDebugExtension({"SMAP\nFocusMeteringControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusMeteringControl.kt\nandroidx/camera/camera2/impl/FocusMeteringControl$triggerFocusTimeout$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,556:1\n85#2,4:557\n*S KotlinDebug\n*F\n+ 1 FocusMeteringControl.kt\nandroidx/camera/camera2/impl/FocusMeteringControl$triggerFocusTimeout$1\n*L\n281#1:557,4\n*E\n"})
    public static final class C01681 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $delayMillis;
        final /* synthetic */ CompletableDeferred<FocusMeteringResult> $resultToComplete;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01681(long j, CompletableDeferred<FocusMeteringResult> completableDeferred, Continuation<? super C01681> continuation) {
            super(2, continuation);
            this.$delayMillis = j;
            this.$resultToComplete = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01681(this.$delayMillis, this.$resultToComplete, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01681) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = this.$delayMillis;
                this.label = 1;
                if (DelayKt.delay(j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            long j2 = this.$delayMillis;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "triggerFocusTimeout: completing with focus result unsuccessful after " + j2 + " ms");
            }
            this.$resultToComplete.complete(FocusMeteringResult.create(false));
            return Unit.INSTANCE;
        }
    }

    private final void propagateToFocusMeteringResultDeferred(final Deferred<Result3A> deferred, final CompletableDeferred<FocusMeteringResult> completableDeferred, final boolean z) {
        deferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.FocusMeteringControl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FocusMeteringControl.$r8$lambda$acTtX0ZmOPlAGU7Xv4zujOVEEf0(completableDeferred, deferred, this, z, (Throwable) obj);
            }
        });
    }

    public static Unit $r8$lambda$acTtX0ZmOPlAGU7Xv4zujOVEEf0(CompletableDeferred completableDeferred, Deferred deferred, FocusMeteringControl focusMeteringControl, boolean z, Throwable th) {
        if (th != null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "propagateToFocusMeteringResultDeferred: completed exceptionally!", th);
            }
            completableDeferred.completeExceptionally(th);
        } else {
            Result3A result3A = (Result3A) deferred.getCompleted();
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "propagateToFocusMeteringResultDeferred: result3A = " + result3A);
            }
            int status = result3A.getStatus();
            Result3A.Status.Companion companion = Result3A.Status.INSTANCE;
            if (Result3A.Status.m1504equalsimpl0(status, companion.m1510getSUBMIT_FAILEDJvTi9ms())) {
                completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
            } else if (Result3A.Status.m1504equalsimpl0(result3A.getStatus(), companion.m1511getTIME_LIMIT_REACHEDJvTi9ms())) {
                completableDeferred.complete(FocusMeteringResult.create(false));
            } else {
                completableDeferred.complete(focusMeteringControl.toFocusMeteringResult(result3A, z));
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: getSupportedAeMode-rTgdhRc, reason: not valid java name */
    private final int m1197getSupportedAeModerTgdhRc(int preferredMode) {
        List<AeMode> list = this.availableAeModes;
        if (list == null) {
            return AeMode.INSTANCE.m1242getOFFbOjpiJc();
        }
        if (list.contains(AeMode.m1233boximpl(preferredMode))) {
            return preferredMode;
        }
        List<AeMode> list2 = this.availableAeModes;
        AeMode.Companion companion = AeMode.INSTANCE;
        if (list2.contains(AeMode.m1233boximpl(companion.m1243getONbOjpiJc()))) {
            return companion.m1243getONbOjpiJc();
        }
        return companion.m1242getOFFbOjpiJc();
    }

    public final Deferred<Result3A> cancelFocusAndMeteringAsync() {
        CompletableDeferred<Result3A> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        UseCaseCameraRequestControl useCaseCameraRequestControl = get_requestControl();
        if (useCaseCameraRequestControl != null) {
            Job job = this.focusTimeoutJob;
            if (job != null) {
                Job.cancel$default(job, null, 1, null);
            }
            Job job2 = this.autoCancelJob;
            if (job2 != null) {
                Job.cancel$default(job2, null, 1, null);
            }
            CompletableDeferred<Result3A> completableDeferred = this.cancelSignal;
            if (completableDeferred != null) {
                setCancelException(completableDeferred, "Cancelled by another cancelFocusAndMetering()");
            }
            this.cancelSignal = completableDeferredCompletableDeferred$default;
            CoroutineAdaptersKt.propagateTo(cancelFocusAndMeteringNowAsync(useCaseCameraRequestControl, this.updateSignal), completableDeferredCompletableDeferred$default);
            return completableDeferredCompletableDeferred$default;
        }
        completableDeferredCompletableDeferred$default.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Deferred<Result3A> cancelFocusAndMeteringNowAsync(UseCaseCameraRequestControl requestControl, CompletableDeferred<FocusMeteringResult> signalToCancel) {
        if (signalToCancel != null) {
            setCancelException(signalToCancel, "Cancelled by cancelFocusAndMetering()");
        }
        this.state3AControl.setPreferredFocusModeAsync(null);
        return requestControl.cancelFocusAndMeteringAsync();
    }

    private final <T> void setCancelException(CompletableDeferred<T> completableDeferred, String str) {
        completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException(str));
    }

    private final FocusMeteringResult toFocusMeteringResult(Result3A result3A, boolean z) {
        boolean z2 = false;
        if (!Result3A.Status.m1504equalsimpl0(result3A.getStatus(), Result3A.Status.INSTANCE.m1508getOKJvTi9ms())) {
            return FocusMeteringResult.create(false);
        }
        FrameMetadata frameMetadata = result3A.getFrameMetadata();
        Integer num = frameMetadata != null ? (Integer) frameMetadata.get(CaptureResult.CONTROL_AF_STATE) : null;
        if (z && (!m1198isAfModeSupportedwvCmZyc(AfMode.INSTANCE.m1253getAUTOvHZNRtE()) || (result3A.getFrameMetadata() != null && (num == null || num.intValue() == 4)))) {
            z2 = true;
        }
        return FocusMeteringResult.create(z2);
    }

    /* JADX INFO: renamed from: isAfModeSupported-wvCmZyc, reason: not valid java name */
    private final boolean m1198isAfModeSupportedwvCmZyc(int afMode) {
        List<AfMode> list = this.availableAfModes;
        if (list == null) {
            return false;
        }
        return list.contains(AfMode.m1244boximpl(afMode));
    }

    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JB\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J \u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "METERING_WEIGHT_DEFAULT", _UrlKt.FRAGMENT_ENCODE_SET, "AUTO_FOCUS_TIMEOUT_DURATION", _UrlKt.FRAGMENT_ENCODE_SET, "meteringRegionsFromMeteringPoints", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/params/MeteringRectangle;", "meteringPoints", "Landroidx/camera/core/MeteringPoint;", "maxRegionCount", "cropSensorRegion", "Landroid/graphics/Rect;", "defaultAspectRatio", "Landroid/util/Rational;", "meteringMode", "meteringRegionCorrection", "Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;", "getFovAdjustedPoint", "Landroid/graphics/PointF;", "meteringPoint", "cropRegionAspectRatio", "getMeteringRect", "normalizedPointF", "normalizedSize", _UrlKt.FRAGMENT_ENCODE_SET, "cropRegion", "isValid", _UrlKt.FRAGMENT_ENCODE_SET, "pt", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<MeteringRectangle> meteringRegionsFromMeteringPoints(List<? extends MeteringPoint> meteringPoints, int maxRegionCount, Rect cropSensorRegion, Rational defaultAspectRatio, int meteringMode, MeteringRegionCorrection meteringRegionCorrection) {
            if (meteringPoints.isEmpty() || maxRegionCount == 0) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            Rational rational = new Rational(cropSensorRegion.width(), cropSensorRegion.height());
            for (MeteringPoint meteringPoint : meteringPoints) {
                if (arrayList.size() >= maxRegionCount) {
                    break;
                }
                if (this.isValid(meteringPoint)) {
                    Companion companion = this;
                    Rational rational2 = defaultAspectRatio;
                    arrayList.add(companion.getMeteringRect(companion.getFovAdjustedPoint(meteringPoint, rational, rational2, meteringMode, meteringRegionCorrection), meteringPoint.getSize(), cropSensorRegion));
                    this = companion;
                    defaultAspectRatio = rational2;
                }
            }
            return arrayList;
        }

        private final PointF getFovAdjustedPoint(MeteringPoint meteringPoint, Rational cropRegionAspectRatio, Rational defaultAspectRatio, int meteringMode, MeteringRegionCorrection meteringRegionCorrection) {
            Rational surfaceAspectRatio = meteringPoint.getSurfaceAspectRatio();
            if (surfaceAspectRatio != null) {
                defaultAspectRatio = surfaceAspectRatio;
            }
            PointF correctedPoint = meteringRegionCorrection.getCorrectedPoint(meteringPoint, meteringMode);
            if (!Intrinsics.areEqual(defaultAspectRatio, cropRegionAspectRatio)) {
                if (defaultAspectRatio.compareTo(cropRegionAspectRatio) > 0) {
                    PointF pointF = new PointF(correctedPoint.x, correctedPoint.y);
                    float fDoubleValue = (float) (defaultAspectRatio.doubleValue() / cropRegionAspectRatio.doubleValue());
                    pointF.y = (((float) ((((double) fDoubleValue) - 1.0d) / 2.0d)) + pointF.y) * (1.0f / fDoubleValue);
                    return pointF;
                }
                PointF pointF2 = new PointF(correctedPoint.x, correctedPoint.y);
                float fDoubleValue2 = (float) (cropRegionAspectRatio.doubleValue() / defaultAspectRatio.doubleValue());
                pointF2.x = (((float) ((((double) fDoubleValue2) - 1.0d) / 2.0d)) + pointF2.x) * (1.0f / fDoubleValue2);
                return pointF2;
            }
            return new PointF(correctedPoint.x, correctedPoint.y);
        }

        private final MeteringRectangle getMeteringRect(PointF normalizedPointF, float normalizedSize, Rect cropRegion) {
            int iWidth = (int) (cropRegion.left + (normalizedPointF.x * cropRegion.width()));
            int iHeight = (int) (cropRegion.top + (normalizedPointF.y * cropRegion.height()));
            int iWidth2 = ((int) (cropRegion.width() * normalizedSize)) / 2;
            int iHeight2 = ((int) (normalizedSize * cropRegion.height())) / 2;
            Rect rect = new Rect(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
            rect.left = RangesKt.coerceIn(rect.left, cropRegion.left, cropRegion.right);
            rect.right = RangesKt.coerceIn(rect.right, cropRegion.left, cropRegion.right);
            rect.top = RangesKt.coerceIn(rect.top, cropRegion.top, cropRegion.bottom);
            rect.bottom = RangesKt.coerceIn(rect.bottom, cropRegion.top, cropRegion.bottom);
            return new MeteringRectangle(rect, 1000);
        }

        private final boolean isValid(MeteringPoint pt) {
            return pt.getX() >= 0.0f && pt.getX() <= 1.0f && pt.getY() >= 0.0f && pt.getY() <= 1.0f;
        }
    }
}
