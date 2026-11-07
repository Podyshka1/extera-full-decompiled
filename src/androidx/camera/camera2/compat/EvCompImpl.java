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
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\f0 2\u0006\u0010!\u001a\u00020\f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Landroidx/camera/camera2/compat/EvCompImpl;", "Landroidx/camera/camera2/compat/EvCompCompat;", "cameraProperties", "Landroidx/camera/camera2/impl/CameraProperties;", "threads", "Landroidx/camera/camera2/impl/UseCaseThreads;", "comboRequestListener", "Landroidx/camera/camera2/impl/ComboRequestListener;", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V", "range", "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "getRange", "()Landroid/util/Range;", "supported", _UrlKt.FRAGMENT_ENCODE_SET, "getSupported", "()Z", "step", "Landroid/util/Rational;", "getStep", "()Landroid/util/Rational;", "updateSignal", "Lkotlinx/coroutines/CompletableDeferred;", "updateListener", "Landroidx/camera/camera2/pipe/Request$Listener;", "stopRunningTask", _UrlKt.FRAGMENT_ENCODE_SET, "throwable", _UrlKt.FRAGMENT_ENCODE_SET, "applyAsync", "Lkotlinx/coroutines/Deferred;", "evCompIndex", "requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "cancelPreviousTask", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class EvCompImpl implements EvCompCompat {
    private final CameraProperties cameraProperties;
    private final ComboRequestListener comboRequestListener;
    private final Range<Integer> range;
    private final Rational step;
    private final boolean supported;
    private final UseCaseThreads threads;
    private Request.Listener updateListener;
    private CompletableDeferred<Integer> updateSignal;

    public EvCompImpl(CameraProperties cameraProperties, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        Integer num;
        Rational rational;
        this.cameraProperties = cameraProperties;
        this.threads = useCaseThreads;
        this.comboRequestListener = comboRequestListener;
        this.range = (Range) cameraProperties.getMetadata().getOrDefault((CameraCharacteristics.Key<Range<Integer>>) CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE, EvCompCompatKt.getEMPTY_RANGE());
        Integer num2 = (Integer) getRange().getUpper();
        this.supported = (num2 == null || num2.intValue() != 0) && ((num = (Integer) getRange().getLower()) == null || num.intValue() != 0);
        if (!getSupported()) {
            rational = Rational.ZERO;
        } else {
            rational = (Rational) cameraProperties.getMetadata().get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
        }
        this.step = rational;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public Range<Integer> getRange() {
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
        CompletableDeferred<Integer> completableDeferred = this.updateSignal;
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
    public Deferred<Integer> applyAsync(final int evCompIndex, UseCaseCameraRequestControl requestControl, boolean cancelPreviousTask) {
        final CompletableDeferred<Integer> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        CompletableDeferred<Integer> completableDeferred = this.updateSignal;
        if (completableDeferred != null) {
            if (cancelPreviousTask) {
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
        UseCaseCameraRequestControl.setParametersAsync$default(requestControl, MapsKt.mapOf(TuplesKt.to(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(evCompIndex))), null, null, 6, null);
        final ?? r9 = new Request.Listener() { // from class: androidx.camera.camera2.compat.EvCompImpl.applyAsync.3
            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onComplete-CcXjc1I */
            public void mo1084onCompleteCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo result) {
                Integer num = (Integer) result.getMetadata().get(CaptureResult.CONTROL_AE_STATE);
                Integer num2 = (Integer) result.getMetadata().get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION);
                if (num == null || num2 == null) {
                    if (num2 != null) {
                        if (num2.intValue() == evCompIndex) {
                            completableDeferredCompletableDeferred$default.complete(Integer.valueOf(evCompIndex));
                            return;
                        }
                        return;
                    }
                    return;
                }
                int iIntValue = num.intValue();
                if (iIntValue == 2 || iIntValue == 3 || iIntValue == 4) {
                    if (num2.intValue() == evCompIndex) {
                        completableDeferredCompletableDeferred$default.complete(Integer.valueOf(evCompIndex));
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
    public static final Unit applyAsync$lambda$2$0(EvCompImpl evCompImpl, C01223 c01223, Throwable th) {
        evCompImpl.comboRequestListener.removeListener(c01223);
        return Unit.INSTANCE;
    }
}
