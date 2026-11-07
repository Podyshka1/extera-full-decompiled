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
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0007\u0018\u0000 62\u00020\u0001:\u00016B/\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0015\u001a\u00020\u00122\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017JT\u0010#\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u001f0\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001bH\u0096@¢\u0006\u0004\b!\u0010\"R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010$R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010%R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010&R\u001b\u0010)\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010\u0017R#\u0010.\u001a\n **\u0004\u0018\u00010\u00050\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010(\u001a\u0004\b,\u0010-R*\u00100\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u001b8\u0016@VX\u0096\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u00067"}, d2 = {"Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;", "Landroidx/camera/camera2/impl/CapturePipeline;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/impl/CapturePipelineImpl;", "capturePipelineImplProvider", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/impl/TorchControl;", "torchControl", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/CaptureConfig;", "captureConfigs", "Landroidx/camera/camera2/pipe/RequestTemplate;", "requestTemplate", _UrlKt.FRAGMENT_ENCODE_SET, "isCorrectionRequired-0UCm73U", "(Ljava/util/List;I)Z", "isCorrectionRequired", "isTorchOn", "()Z", "configs", "Landroidx/camera/core/impl/Config;", "sessionConfigOptions", _UrlKt.FRAGMENT_ENCODE_SET, "captureMode", "flashType", "flashMode", "Lkotlinx/coroutines/Deferred;", "Ljava/lang/Void;", "submitStillCaptures-BvXKQx0", "(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "submitStillCaptures", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/impl/TorchControl;", "isLegacyDevice$delegate", "Lkotlin/Lazy;", "isLegacyDevice", "kotlin.jvm.PlatformType", "capturePipelineImpl$delegate", "getCapturePipelineImpl", "()Landroidx/camera/camera2/impl/CapturePipelineImpl;", "capturePipelineImpl", "value", "template", "I", "getTemplate", "()I", "setTemplate", "(I)V", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCapturePipelineTorchCorrection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturePipelineTorchCorrection.kt\nandroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1761#2,3:132\n*S KotlinDebug\n*F\n+ 1 CapturePipelineTorchCorrection.kt\nandroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection\n*L\n118#1:132,3\n*E\n"})
public final class CapturePipelineTorchCorrection implements CapturePipeline {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final boolean isEnabled;
    private final Provider<CapturePipelineImpl> capturePipelineImplProvider;

    /* JADX INFO: renamed from: isLegacyDevice$delegate, reason: from kotlin metadata */
    private final Lazy isLegacyDevice;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;

    /* JADX INFO: renamed from: capturePipelineImpl$delegate, reason: from kotlin metadata */
    private final Lazy capturePipelineImpl = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f$0.capturePipelineImplProvider.get();
        }
    });
    private int template = 1;

    public CapturePipelineTorchCorrection(final CameraProperties cameraProperties, Provider<CapturePipelineImpl> provider, UseCaseThreads useCaseThreads, TorchControl torchControl) {
        this.capturePipelineImplProvider = provider;
        this.threads = useCaseThreads;
        this.torchControl = torchControl;
        this.isLegacyDevice = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(CameraMetadata.INSTANCE.isHardwareLevelLegacy(cameraProperties.getMetadata()));
            }
        });
    }

    private final boolean isLegacyDevice() {
        return ((Boolean) this.isLegacyDevice.getValue()).booleanValue();
    }

    private final CapturePipelineImpl getCapturePipelineImpl() {
        return (CapturePipelineImpl) this.capturePipelineImpl.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    @Override // androidx.camera.camera2.impl.CapturePipeline
    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo1104submitStillCapturesBvXKQx0(List<CaptureConfig> list, int i, Config config, int i2, int i3, int i4, Continuation<? super List<? extends Deferred<Void>>> continuation) {
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
            boolean zM1103isCorrectionRequired0UCm73U = m1103isCorrectionRequired0UCm73U(list, i);
            CapturePipelineImpl capturePipelineImpl = getCapturePipelineImpl();
            capturePipelineTorchCorrection$submitStillCaptures$12.Z$0 = zM1103isCorrectionRequired0UCm73U;
            capturePipelineTorchCorrection$submitStillCaptures$12.label = 1;
            Object objMo1104submitStillCapturesBvXKQx0 = capturePipelineImpl.mo1104submitStillCapturesBvXKQx0(list, i, config, i2, i3, i4, capturePipelineTorchCorrection$submitStillCaptures$12);
            if (objMo1104submitStillCapturesBvXKQx0 == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objMo1104submitStillCapturesBvXKQx0;
            z = zM1103isCorrectionRequired0UCm73U;
        } else {
            if (i6 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
    private final boolean m1103isCorrectionRequired0UCm73U(List<CaptureConfig> captureConfigs, int requestTemplate) {
        List<CaptureConfig> list = captureConfigs;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (CaptureConfigAdapter.INSTANCE.m1083getStillCaptureTemplateCMLptTo$camera_camera2((CaptureConfig) it.next(), requestTemplate, isLegacyDevice()) == 2) {
                return isTorchOn();
            }
        }
        return false;
    }

    private final boolean isTorchOn() {
        Integer value = this.torchControl.getTorchStateLiveData().getValue();
        return value != null && value.intValue() == 1;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
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
