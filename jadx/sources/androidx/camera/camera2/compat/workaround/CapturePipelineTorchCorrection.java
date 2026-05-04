package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.TorchIsClosedAfterImageCapturingQuirk;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.CapturePipeline;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes3.dex */
public final class CapturePipelineTorchCorrection implements CapturePipeline {
    public static final Companion Companion = new Companion(null);
    private static final boolean isEnabled;
    private final Lazy capturePipelineImpl$delegate;
    private final Provider capturePipelineImplProvider;
    private final Lazy isLegacyDevice$delegate;
    private int template;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;

    public CapturePipelineTorchCorrection(final CameraProperties cameraProperties, Provider capturePipelineImplProvider, UseCaseThreads threads, TorchControl torchControl) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(capturePipelineImplProvider, "capturePipelineImplProvider");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(torchControl, "torchControl");
        this.capturePipelineImplProvider = capturePipelineImplProvider;
        this.threads = threads;
        this.torchControl = torchControl;
        this.isLegacyDevice$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(CapturePipelineTorchCorrection.isLegacyDevice_delegate$lambda$0(cameraProperties));
            }
        });
        this.capturePipelineImpl$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CapturePipelineTorchCorrection.capturePipelineImpl_delegate$lambda$0(this.f$0);
            }
        });
        this.template = 1;
    }

    private final boolean isLegacyDevice() {
        return ((Boolean) this.isLegacyDevice$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLegacyDevice_delegate$lambda$0(CameraProperties cameraProperties) {
        return CameraMetadata.Companion.isHardwareLevelLegacy(cameraProperties.getMetadata());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CapturePipelineImpl capturePipelineImpl_delegate$lambda$0(CapturePipelineTorchCorrection capturePipelineTorchCorrection) {
        return (CapturePipelineImpl) capturePipelineTorchCorrection.capturePipelineImplProvider.get();
    }

    private final CapturePipelineImpl getCapturePipelineImpl() {
        return (CapturePipelineImpl) this.capturePipelineImpl$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    @Override // androidx.camera.camera2.impl.CapturePipeline
    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo1413submitStillCapturesBvXKQx0(List list, int i, Config config, int i2, int i3, int i4, Continuation continuation) {
        CapturePipelineTorchCorrection$submitStillCaptures$1 capturePipelineTorchCorrection$submitStillCaptures$1;
        boolean z;
        if (continuation instanceof CapturePipelineTorchCorrection$submitStillCaptures$1) {
            capturePipelineTorchCorrection$submitStillCaptures$1 = (CapturePipelineTorchCorrection$submitStillCaptures$1) continuation;
            int i5 = capturePipelineTorchCorrection$submitStillCaptures$1.label;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                capturePipelineTorchCorrection$submitStillCaptures$1.label = i5 - Integer.MIN_VALUE;
            } else {
                capturePipelineTorchCorrection$submitStillCaptures$1 = new CapturePipelineTorchCorrection$submitStillCaptures$1(this, continuation);
            }
        }
        CapturePipelineTorchCorrection$submitStillCaptures$1 capturePipelineTorchCorrection$submitStillCaptures$12 = capturePipelineTorchCorrection$submitStillCaptures$1;
        Object obj = capturePipelineTorchCorrection$submitStillCaptures$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = capturePipelineTorchCorrection$submitStillCaptures$12.label;
        if (i6 == 0) {
            ResultKt.throwOnFailure(obj);
            boolean zM1412isCorrectionRequired0UCm73U = m1412isCorrectionRequired0UCm73U(list, i);
            CapturePipelineImpl capturePipelineImpl = getCapturePipelineImpl();
            capturePipelineTorchCorrection$submitStillCaptures$12.Z$0 = zM1412isCorrectionRequired0UCm73U;
            capturePipelineTorchCorrection$submitStillCaptures$12.label = 1;
            Object objMo1413submitStillCapturesBvXKQx0 = capturePipelineImpl.mo1413submitStillCapturesBvXKQx0(list, i, config, i2, i3, i4, capturePipelineTorchCorrection$submitStillCaptures$12);
            if (objMo1413submitStillCapturesBvXKQx0 == coroutine_suspended) {
                return coroutine_suspended;
            }
            z = zM1412isCorrectionRequired0UCm73U;
            obj = objMo1413submitStillCapturesBvXKQx0;
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = capturePipelineTorchCorrection$submitStillCaptures$12.Z$0;
            ResultKt.throwOnFailure(obj);
        }
        List list2 = (List) obj;
        if (z) {
            BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new CapturePipelineTorchCorrection$submitStillCaptures$2(list2, this, null), 3, null);
        }
        return list2;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public void setTemplate(int i) {
        getCapturePipelineImpl().setTemplate(i);
        this.template = i;
    }

    /* JADX INFO: renamed from: isCorrectionRequired-0UCm73U, reason: not valid java name */
    private final boolean m1412isCorrectionRequired0UCm73U(List list, int i) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (CaptureConfigAdapter.Companion.m1386getStillCaptureTemplateCMLptTo$camera_camera2((CaptureConfig) it.next(), i, isLegacyDevice()) == 2) {
                return isTorchOn();
            }
        }
        return false;
    }

    private final boolean isTorchOn() {
        Integer num = (Integer) this.torchControl.getTorchStateLiveData().getValue();
        return num != null && num.intValue() == 1;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return CapturePipelineTorchCorrection.isEnabled;
        }
    }

    static {
        isEnabled = DeviceQuirks.INSTANCE.get(TorchIsClosedAfterImageCapturingQuirk.class) != null;
    }
}
