package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.util.Range;
import android.util.Rational;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class EvCompImpl implements EvCompCompat {
    private final CameraProperties cameraProperties;
    private final ComboRequestListener comboRequestListener;
    private final Range range;
    private final Rational step;
    private final boolean supported;
    private final UseCaseThreads threads;
    private Request.Listener updateListener;
    private CompletableDeferred updateSignal;

    public EvCompImpl(CameraProperties cameraProperties, UseCaseThreads threads, ComboRequestListener comboRequestListener) {
        Integer num;
        Rational rational;
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(comboRequestListener, "comboRequestListener");
        this.cameraProperties = cameraProperties;
        this.threads = threads;
        this.comboRequestListener = comboRequestListener;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key CONTROL_AE_COMPENSATION_RANGE = CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AE_COMPENSATION_RANGE, "CONTROL_AE_COMPENSATION_RANGE");
        Object orDefault = metadata.getOrDefault(CONTROL_AE_COMPENSATION_RANGE, EvCompCompatKt.getEMPTY_RANGE());
        Intrinsics.checkNotNullExpressionValue(orDefault, "getOrDefault(...)");
        this.range = (Range) orDefault;
        Integer num2 = (Integer) getRange().getUpper();
        this.supported = (num2 == null || num2.intValue() != 0) && ((num = (Integer) getRange().getLower()) == null || num.intValue() != 0);
        if (!getSupported()) {
            rational = Rational.ZERO;
            Intrinsics.checkNotNull(rational);
        } else {
            CameraMetadata metadata2 = cameraProperties.getMetadata();
            CameraCharacteristics.Key CONTROL_AE_COMPENSATION_STEP = CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AE_COMPENSATION_STEP, "CONTROL_AE_COMPENSATION_STEP");
            Object obj = metadata2.get(CONTROL_AE_COMPENSATION_STEP);
            Intrinsics.checkNotNull(obj);
            rational = (Rational) obj;
        }
        this.step = rational;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public Range getRange() {
        return this.range;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public boolean getSupported() {
        return this.supported;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public Rational getStep() {
        return this.step;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public void stopRunningTask(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        CompletableDeferred completableDeferred = this.updateSignal;
        if (completableDeferred != null) {
            completableDeferred.completeExceptionally(throwable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.camera.camera2.compat.EvCompImpl$applyAsync$3, androidx.camera.camera2.pipe.Request$Listener] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.camera.camera2.compat.EvCompCompat
    public Deferred applyAsync(final int i, UseCaseCameraRequestControl requestControl, boolean z) {
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        CompletableDeferred completableDeferred = this.updateSignal;
        if (completableDeferred != null) {
            if (z) {
                completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException("Cancelled by another setExposureCompensationIndex()"));
            } else {
                CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred);
            }
        }
        this.updateSignal = completableDeferredCompletableDeferred$default;
        Request.Listener listener = this.updateListener;
        if (listener != null) {
            this.comboRequestListener.removeListener(listener);
            this.updateListener = null;
        }
        UseCaseCameraRequestControl.CC.setParametersAsync$default(requestControl, MapsKt.mapOf(TuplesKt.m1081to(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(i))), null, null, 6, null);
        final ?? r9 = new Request.Listener() { // from class: androidx.camera.camera2.compat.EvCompImpl.applyAsync.3
            @Override // androidx.camera.camera2.pipe.Request.Listener
            public /* synthetic */ void onAborted(Request request) {
                Intrinsics.checkNotNullParameter(request, "request");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
            public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i2) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
            public /* synthetic */ void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i2, int i3) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            public /* synthetic */ void onCaptureProgress(RequestMetadata requestMetadata, int i2) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onFailed-CcXjc1I */
            public /* synthetic */ void mo1390onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                Request.Listener.CC.m1741$default$onFailedCcXjc1I(this, requestMetadata, j, requestFailure);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
            public /* synthetic */ void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
                Request.Listener.CC.m1742$default$onPartialCaptureResultCcXjc1I(this, requestMetadata, j, frameMetadata);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
            public /* synthetic */ void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            public /* synthetic */ void onRequestSequenceAborted(RequestMetadata requestMetadata) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
            public /* synthetic */ void mo1393onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            public /* synthetic */ void onRequestSequenceCreated(RequestMetadata requestMetadata) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            public /* synthetic */ void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onStarted-uGKBvU4 */
            public /* synthetic */ void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
            public /* synthetic */ void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                Request.Listener.CC.m1746$default$onTotalCaptureResultCcXjc1I(this, requestMetadata, j, frameInfo);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onComplete-CcXjc1I */
            public void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo result) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(result, "result");
                FrameMetadata metadata = result.getMetadata();
                CaptureResult.Key CONTROL_AE_STATE = CaptureResult.CONTROL_AE_STATE;
                Intrinsics.checkNotNullExpressionValue(CONTROL_AE_STATE, "CONTROL_AE_STATE");
                Integer num = (Integer) metadata.get(CONTROL_AE_STATE);
                FrameMetadata metadata2 = result.getMetadata();
                CaptureResult.Key CONTROL_AE_EXPOSURE_COMPENSATION = CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION;
                Intrinsics.checkNotNullExpressionValue(CONTROL_AE_EXPOSURE_COMPENSATION, "CONTROL_AE_EXPOSURE_COMPENSATION");
                Integer num2 = (Integer) metadata2.get(CONTROL_AE_EXPOSURE_COMPENSATION);
                if (num == null || num2 == null) {
                    if (num2 != null) {
                        if (num2.intValue() == i) {
                            completableDeferredCompletableDeferred$default.complete(Integer.valueOf(i));
                            return;
                        }
                        return;
                    }
                    return;
                }
                int iIntValue = num.intValue();
                if (iIntValue == 2 || iIntValue == 3 || iIntValue == 4) {
                    if (num2.intValue() == i) {
                        completableDeferredCompletableDeferred$default.complete(Integer.valueOf(i));
                    }
                }
            }
        };
        this.comboRequestListener.addListener(r9, this.threads.getSequentialExecutor());
        completableDeferredCompletableDeferred$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.compat.EvCompImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EvCompImpl.applyAsync$lambda$2$0(this.f$0, r9, (Throwable) obj);
            }
        });
        this.updateListener = r9;
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit applyAsync$lambda$2$0(EvCompImpl evCompImpl, C01173 c01173, Throwable th) {
        evCompImpl.comboRequestListener.removeListener(c01173);
        return Unit.INSTANCE;
    }
}
