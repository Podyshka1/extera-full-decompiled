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
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
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
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes3.dex */
public final class FocusMeteringControl implements UseCaseCameraControl, UseCaseManager.RunningUseCasesChangeListener {
    public static final Companion Companion = new Companion(null);
    private UseCaseCameraRequestControl _requestControl;
    private Job autoCancelJob;
    private final List availableAeModes;
    private final List availableAfModes;
    private final CameraProperties cameraProperties;
    private CompletableDeferred cancelSignal;
    private Job focusTimeoutJob;
    private final Integer maxAeRegionCount;
    private final Integer maxAfRegionCount;
    private final Integer maxAwbRegionCount;
    private final MeteringRegionCorrection meteringRegionCorrection;
    private Rational previewAspectRatio;
    private final State3AControl state3AControl;
    private final boolean supportsAutoFocusTrigger;
    private final UseCaseThreads threads;
    private CompletableDeferred updateSignal;
    private final ZoomCompat zoomCompat;

    public FocusMeteringControl(CameraProperties cameraProperties, MeteringRegionCorrection meteringRegionCorrection, State3AControl state3AControl, UseCaseThreads threads, ZoomCompat zoomCompat) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(meteringRegionCorrection, "meteringRegionCorrection");
        Intrinsics.checkNotNullParameter(state3AControl, "state3AControl");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(zoomCompat, "zoomCompat");
        this.cameraProperties = cameraProperties;
        this.meteringRegionCorrection = meteringRegionCorrection;
        this.state3AControl = state3AControl;
        this.threads = threads;
        this.zoomCompat = zoomCompat;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key CONTROL_MAX_REGIONS_AF = CameraCharacteristics.CONTROL_MAX_REGIONS_AF;
        Intrinsics.checkNotNullExpressionValue(CONTROL_MAX_REGIONS_AF, "CONTROL_MAX_REGIONS_AF");
        this.maxAfRegionCount = (Integer) metadata.getOrDefault(CONTROL_MAX_REGIONS_AF, (Object) 0);
        CameraMetadata metadata2 = cameraProperties.getMetadata();
        CameraCharacteristics.Key CONTROL_MAX_REGIONS_AE = CameraCharacteristics.CONTROL_MAX_REGIONS_AE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_MAX_REGIONS_AE, "CONTROL_MAX_REGIONS_AE");
        this.maxAeRegionCount = (Integer) metadata2.getOrDefault(CONTROL_MAX_REGIONS_AE, (Object) 0);
        CameraMetadata metadata3 = cameraProperties.getMetadata();
        CameraCharacteristics.Key CONTROL_MAX_REGIONS_AWB = CameraCharacteristics.CONTROL_MAX_REGIONS_AWB;
        Intrinsics.checkNotNullExpressionValue(CONTROL_MAX_REGIONS_AWB, "CONTROL_MAX_REGIONS_AWB");
        this.maxAwbRegionCount = (Integer) metadata3.getOrDefault(CONTROL_MAX_REGIONS_AWB, (Object) 0);
        this.supportsAutoFocusTrigger = CameraMetadata.Companion.getSupportsAutoFocusTrigger(cameraProperties.getMetadata());
        CameraMetadata metadata4 = cameraProperties.getMetadata();
        CameraCharacteristics.Key CONTROL_AE_AVAILABLE_MODES = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AE_AVAILABLE_MODES, "CONTROL_AE_AVAILABLE_MODES");
        int[] iArr = (int[]) metadata4.get(CONTROL_AE_AVAILABLE_MODES);
        ArrayList arrayList2 = null;
        if (iArr != null) {
            arrayList = new ArrayList(iArr.length);
            for (int i : iArr) {
                arrayList.add(AeMode.Companion.m1492fromIntOrNullkQd0u18(i));
            }
        } else {
            arrayList = null;
        }
        this.availableAeModes = arrayList;
        CameraMetadata metadata5 = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key CONTROL_AF_AVAILABLE_MODES = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AF_AVAILABLE_MODES, "CONTROL_AF_AVAILABLE_MODES");
        int[] iArr2 = (int[]) metadata5.get(CONTROL_AF_AVAILABLE_MODES);
        if (iArr2 != null) {
            arrayList2 = new ArrayList(iArr2.length);
            for (int i2 : iArr2) {
                arrayList2.add(AfMode.Companion.m1503fromIntOrNullMKXwA8g(i2));
            }
        }
        this.availableAfModes = arrayList2;
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseManager.RunningUseCasesChangeListener
    public void onRunningUseCasesChanged(Set runningUseCases) {
        Size attachedSurfaceResolution;
        Intrinsics.checkNotNullParameter(runningUseCases, "runningUseCases");
        this.previewAspectRatio = null;
        Iterator it = runningUseCases.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
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

    public final ListenableFuture startFocusAndMetering(FocusMeteringAction action, long j) {
        List list;
        List list2;
        List list3;
        Deferred deferredUpdate3aRegions;
        Intrinsics.checkNotNullParameter(action, "action");
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl != null) {
            Job job = this.focusTimeoutJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            Job job2 = this.autoCancelJob;
            if (job2 != null) {
                Job.DefaultImpls.cancel$default(job2, null, 1, null);
            }
            CompletableDeferred completableDeferred = this.cancelSignal;
            if (completableDeferred != null) {
                setCancelException(completableDeferred, "Cancelled by another startFocusAndMetering()");
            }
            CompletableDeferred completableDeferred2 = this.updateSignal;
            if (completableDeferred2 != null) {
                setCancelException(completableDeferred2, "Cancelled by another startFocusAndMetering()");
            }
            this.updateSignal = completableDeferredCompletableDeferred$default;
            Companion companion = Companion;
            List meteringPointsAe = action.getMeteringPointsAe();
            Intrinsics.checkNotNullExpressionValue(meteringPointsAe, "getMeteringPointsAe(...)");
            Integer maxAeRegionCount = this.maxAeRegionCount;
            Intrinsics.checkNotNullExpressionValue(maxAeRegionCount, "maxAeRegionCount");
            List listMeteringRegionsFromMeteringPoints = companion.meteringRegionsFromMeteringPoints(meteringPointsAe, maxAeRegionCount.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 2, this.meteringRegionCorrection);
            List meteringPointsAf = action.getMeteringPointsAf();
            Intrinsics.checkNotNullExpressionValue(meteringPointsAf, "getMeteringPointsAf(...)");
            Integer maxAfRegionCount = this.maxAfRegionCount;
            Intrinsics.checkNotNullExpressionValue(maxAfRegionCount, "maxAfRegionCount");
            List listMeteringRegionsFromMeteringPoints2 = companion.meteringRegionsFromMeteringPoints(meteringPointsAf, maxAfRegionCount.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 1, this.meteringRegionCorrection);
            List meteringPointsAwb = action.getMeteringPointsAwb();
            Intrinsics.checkNotNullExpressionValue(meteringPointsAwb, "getMeteringPointsAwb(...)");
            Integer maxAwbRegionCount = this.maxAwbRegionCount;
            Intrinsics.checkNotNullExpressionValue(maxAwbRegionCount, "maxAwbRegionCount");
            List listMeteringRegionsFromMeteringPoints3 = companion.meteringRegionsFromMeteringPoints(meteringPointsAwb, maxAwbRegionCount.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 4, this.meteringRegionCorrection);
            if (listMeteringRegionsFromMeteringPoints.isEmpty() && listMeteringRegionsFromMeteringPoints2.isEmpty() && listMeteringRegionsFromMeteringPoints3.isEmpty()) {
                completableDeferredCompletableDeferred$default.completeExceptionally(new IllegalArgumentException("None of the specified AF/AE/AWB MeteringPoints is supported on this camera."));
                return CoroutineAdaptersKt.asListenableFuture$default((Deferred) completableDeferredCompletableDeferred$default, (Object) null, 1, (Object) null);
            }
            List list4 = listMeteringRegionsFromMeteringPoints2;
            if (!list4.isEmpty()) {
                this.state3AControl.setPreferredFocusModeAsync(1);
            }
            if (this.maxAeRegionCount.intValue() > 0) {
                List list5 = listMeteringRegionsFromMeteringPoints;
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
                List list6 = listMeteringRegionsFromMeteringPoints3;
                if (list6.isEmpty()) {
                    list6 = ArraysKt.toList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                list3 = list6;
            } else {
                list3 = null;
            }
            if (listMeteringRegionsFromMeteringPoints2.isEmpty() || !this.supportsAutoFocusTrigger) {
                List list7 = list2;
                List list8 = list3;
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "startFocusAndMetering: updating 3A regions only");
                }
                deferredUpdate3aRegions = requestControl.update3aRegions(list, list7, list8);
            } else {
                long autoCancelDurationInMillis = (!action.isAutoCancelEnabled() || action.getAutoCancelDurationInMillis() >= j) ? j : action.getAutoCancelDurationInMillis();
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "startFocusAndMetering: updating 3A regions & triggering AF");
                }
                deferredUpdate3aRegions = UseCaseCameraRequestControl.CC.m1471startFocusAndMeteringAsyncNxRnBj4$default(requestControl, list, list2, list3, null, this.maxAfRegionCount.intValue() > 0 ? Lock3ABehavior.m1655boximpl(Lock3ABehavior.Companion.m1664getIMMEDIATEhRqSH3k()) : null, null, AeMode.m1484boximpl(m1448getSupportedAeModerTgdhRc(AeMode.Companion.m1494getONbOjpiJc())), TimeUnit.NANOSECONDS.convert(autoCancelDurationInMillis, TimeUnit.MILLISECONDS), 40, null);
            }
            propagateToFocusMeteringResultDeferred(deferredUpdate3aRegions, completableDeferredCompletableDeferred$default, !listMeteringRegionsFromMeteringPoints2.isEmpty());
            triggerFocusTimeout(j, completableDeferredCompletableDeferred$default);
            if (action.isAutoCancelEnabled()) {
                triggerAutoCancel(action.getAutoCancelDurationInMillis(), completableDeferredCompletableDeferred$default, requestControl);
            }
        } else {
            completableDeferredCompletableDeferred$default.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return CoroutineAdaptersKt.asListenableFuture$default((Deferred) completableDeferredCompletableDeferred$default, (Object) null, 1, (Object) null);
    }

    private final void triggerAutoCancel(long j, CompletableDeferred completableDeferred, UseCaseCameraRequestControl useCaseCameraRequestControl) {
        Job job = this.autoCancelJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.autoCancelJob = BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01631(j, this, useCaseCameraRequestControl, completableDeferred, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FocusMeteringControl$triggerAutoCancel$1 */
    static final class C01631 extends SuspendLambda implements Function2 {
        final /* synthetic */ long $delayMillis;
        final /* synthetic */ UseCaseCameraRequestControl $requestControl;
        final /* synthetic */ CompletableDeferred $resultToCancel;
        int label;
        final /* synthetic */ FocusMeteringControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01631(long j, FocusMeteringControl focusMeteringControl, UseCaseCameraRequestControl useCaseCameraRequestControl, CompletableDeferred completableDeferred, Continuation continuation) {
            super(2, continuation);
            this.$delayMillis = j;
            this.this$0 = focusMeteringControl;
            this.$requestControl = useCaseCameraRequestControl;
            this.$resultToCancel = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01631(this.$delayMillis, this.this$0, this.$requestControl, this.$resultToCancel, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01631) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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

    private final void triggerFocusTimeout(long j, CompletableDeferred completableDeferred) {
        Job job = this.focusTimeoutJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.focusTimeoutJob = BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01641(j, completableDeferred, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FocusMeteringControl$triggerFocusTimeout$1 */
    static final class C01641 extends SuspendLambda implements Function2 {
        final /* synthetic */ long $delayMillis;
        final /* synthetic */ CompletableDeferred $resultToComplete;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01641(long j, CompletableDeferred completableDeferred, Continuation continuation) {
            super(2, continuation);
            this.$delayMillis = j;
            this.$resultToComplete = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01641(this.$delayMillis, this.$resultToComplete, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01641) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            long j2 = this.$delayMillis;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "triggerFocusTimeout: completing with focus result unsuccessful after " + j2 + " ms");
            }
            CompletableDeferred completableDeferred = this.$resultToComplete;
            FocusMeteringResult focusMeteringResultCreate = FocusMeteringResult.create(false);
            Intrinsics.checkNotNullExpressionValue(focusMeteringResultCreate, "create(...)");
            completableDeferred.complete(focusMeteringResultCreate);
            return Unit.INSTANCE;
        }
    }

    private final void propagateToFocusMeteringResultDeferred(final Deferred deferred, final CompletableDeferred completableDeferred, final boolean z) {
        deferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.FocusMeteringControl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FocusMeteringControl.propagateToFocusMeteringResultDeferred$lambda$0(completableDeferred, deferred, this, z, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit propagateToFocusMeteringResultDeferred$lambda$0(CompletableDeferred completableDeferred, Deferred deferred, FocusMeteringControl focusMeteringControl, boolean z, Throwable th) {
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
            int iM1761getStatusJvTi9ms = result3A.m1761getStatusJvTi9ms();
            Result3A.Status.Companion companion = Result3A.Status.Companion;
            if (Result3A.Status.m1763equalsimpl0(iM1761getStatusJvTi9ms, companion.m1769getSUBMIT_FAILEDJvTi9ms())) {
                completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
            } else if (Result3A.Status.m1763equalsimpl0(result3A.m1761getStatusJvTi9ms(), companion.m1770getTIME_LIMIT_REACHEDJvTi9ms())) {
                FocusMeteringResult focusMeteringResultCreate = FocusMeteringResult.create(false);
                Intrinsics.checkNotNullExpressionValue(focusMeteringResultCreate, "create(...)");
                completableDeferred.complete(focusMeteringResultCreate);
            } else {
                completableDeferred.complete(focusMeteringControl.toFocusMeteringResult(result3A, z));
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: getSupportedAeMode-rTgdhRc, reason: not valid java name */
    private final int m1448getSupportedAeModerTgdhRc(int i) {
        List list = this.availableAeModes;
        if (list == null) {
            return AeMode.Companion.m1493getOFFbOjpiJc();
        }
        if (list.contains(AeMode.m1484boximpl(i))) {
            return i;
        }
        List list2 = this.availableAeModes;
        AeMode.Companion companion = AeMode.Companion;
        if (list2.contains(AeMode.m1484boximpl(companion.m1494getONbOjpiJc()))) {
            return companion.m1494getONbOjpiJc();
        }
        return companion.m1493getOFFbOjpiJc();
    }

    public final Deferred cancelFocusAndMeteringAsync() {
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl != null) {
            Job job = this.focusTimeoutJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            Job job2 = this.autoCancelJob;
            if (job2 != null) {
                Job.DefaultImpls.cancel$default(job2, null, 1, null);
            }
            CompletableDeferred completableDeferred = this.cancelSignal;
            if (completableDeferred != null) {
                setCancelException(completableDeferred, "Cancelled by another cancelFocusAndMetering()");
            }
            this.cancelSignal = completableDeferredCompletableDeferred$default;
            CoroutineAdaptersKt.propagateTo(cancelFocusAndMeteringNowAsync(requestControl, this.updateSignal), completableDeferredCompletableDeferred$default);
            return completableDeferredCompletableDeferred$default;
        }
        completableDeferredCompletableDeferred$default.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Deferred cancelFocusAndMeteringNowAsync(UseCaseCameraRequestControl useCaseCameraRequestControl, CompletableDeferred completableDeferred) {
        if (completableDeferred != null) {
            setCancelException(completableDeferred, "Cancelled by cancelFocusAndMetering()");
        }
        this.state3AControl.setPreferredFocusModeAsync(null);
        return useCaseCameraRequestControl.cancelFocusAndMeteringAsync();
    }

    private final void setCancelException(CompletableDeferred completableDeferred, String str) {
        completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException(str));
    }

    private final FocusMeteringResult toFocusMeteringResult(Result3A result3A, boolean z) {
        Integer num;
        boolean z2 = false;
        if (!Result3A.Status.m1763equalsimpl0(result3A.m1761getStatusJvTi9ms(), Result3A.Status.Companion.m1767getOKJvTi9ms())) {
            FocusMeteringResult focusMeteringResultCreate = FocusMeteringResult.create(false);
            Intrinsics.checkNotNullExpressionValue(focusMeteringResultCreate, "create(...)");
            return focusMeteringResultCreate;
        }
        FrameMetadata frameMetadata = result3A.getFrameMetadata();
        if (frameMetadata != null) {
            CaptureResult.Key CONTROL_AF_STATE = CaptureResult.CONTROL_AF_STATE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AF_STATE, "CONTROL_AF_STATE");
            num = (Integer) frameMetadata.get(CONTROL_AF_STATE);
        } else {
            num = null;
        }
        if (z && (!m1449isAfModeSupportedwvCmZyc(AfMode.Companion.m1504getAUTOvHZNRtE()) || (result3A.getFrameMetadata() != null && (num == null || num.intValue() == 4)))) {
            z2 = true;
        }
        FocusMeteringResult focusMeteringResultCreate2 = FocusMeteringResult.create(z2);
        Intrinsics.checkNotNullExpressionValue(focusMeteringResultCreate2, "create(...)");
        return focusMeteringResultCreate2;
    }

    /* JADX INFO: renamed from: isAfModeSupported-wvCmZyc, reason: not valid java name */
    private final boolean m1449isAfModeSupportedwvCmZyc(int i) {
        List list = this.availableAfModes;
        if (list == null) {
            return false;
        }
        return list.contains(AfMode.m1495boximpl(i));
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List meteringRegionsFromMeteringPoints(List meteringPoints, int i, Rect cropSensorRegion, Rational defaultAspectRatio, int i2, MeteringRegionCorrection meteringRegionCorrection) {
            Intrinsics.checkNotNullParameter(meteringPoints, "meteringPoints");
            Intrinsics.checkNotNullParameter(cropSensorRegion, "cropSensorRegion");
            Intrinsics.checkNotNullParameter(defaultAspectRatio, "defaultAspectRatio");
            Intrinsics.checkNotNullParameter(meteringRegionCorrection, "meteringRegionCorrection");
            if (meteringPoints.isEmpty() || i == 0) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            Rational rational = new Rational(cropSensorRegion.width(), cropSensorRegion.height());
            Iterator it = meteringPoints.iterator();
            while (it.hasNext()) {
                MeteringPoint meteringPoint = (MeteringPoint) it.next();
                if (arrayList.size() >= i) {
                    break;
                }
                if (isValid(meteringPoint)) {
                    Rational rational2 = defaultAspectRatio;
                    int i3 = i2;
                    arrayList.add(getMeteringRect(getFovAdjustedPoint(meteringPoint, rational, rational2, i3, meteringRegionCorrection), meteringPoint.getSize(), cropSensorRegion));
                    defaultAspectRatio = rational2;
                    i2 = i3;
                }
            }
            return arrayList;
        }

        private final PointF getFovAdjustedPoint(MeteringPoint meteringPoint, Rational rational, Rational rational2, int i, MeteringRegionCorrection meteringRegionCorrection) {
            Rational surfaceAspectRatio = meteringPoint.getSurfaceAspectRatio();
            if (surfaceAspectRatio != null) {
                rational2 = surfaceAspectRatio;
            }
            PointF correctedPoint = meteringRegionCorrection.getCorrectedPoint(meteringPoint, i);
            if (!Intrinsics.areEqual(rational2, rational)) {
                if (rational2.compareTo(rational) > 0) {
                    PointF pointF = new PointF(correctedPoint.x, correctedPoint.y);
                    float fDoubleValue = (float) (rational2.doubleValue() / rational.doubleValue());
                    pointF.y = (((float) ((((double) fDoubleValue) - 1.0d) / ((double) 2))) + pointF.y) * (1.0f / fDoubleValue);
                    return pointF;
                }
                PointF pointF2 = new PointF(correctedPoint.x, correctedPoint.y);
                float fDoubleValue2 = (float) (rational.doubleValue() / rational2.doubleValue());
                pointF2.x = (((float) ((((double) fDoubleValue2) - 1.0d) / ((double) 2))) + pointF2.x) * (1.0f / fDoubleValue2);
                return pointF2;
            }
            return new PointF(correctedPoint.x, correctedPoint.y);
        }

        private final MeteringRectangle getMeteringRect(PointF pointF, float f, Rect rect) {
            int iWidth = (int) (rect.left + (pointF.x * rect.width()));
            int iHeight = (int) (rect.top + (pointF.y * rect.height()));
            int iWidth2 = ((int) (rect.width() * f)) / 2;
            int iHeight2 = ((int) (f * rect.height())) / 2;
            Rect rect2 = new Rect(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
            rect2.left = RangesKt.coerceIn(rect2.left, rect.left, rect.right);
            rect2.right = RangesKt.coerceIn(rect2.right, rect.left, rect.right);
            rect2.top = RangesKt.coerceIn(rect2.top, rect.top, rect.bottom);
            rect2.bottom = RangesKt.coerceIn(rect2.bottom, rect.top, rect.bottom);
            return new MeteringRectangle(rect2, MediaDataController.MAX_STYLE_RUNS_COUNT);
        }

        private final boolean isValid(MeteringPoint meteringPoint) {
            return meteringPoint.getX() >= 0.0f && meteringPoint.getX() <= 1.0f && meteringPoint.getY() >= 0.0f && meteringPoint.getY() <= 1.0f;
        }
    }
}
