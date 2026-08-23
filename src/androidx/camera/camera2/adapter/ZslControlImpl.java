package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ZslDisablerQuirk;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.SizesKt;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.utils.RingBuffer$OnRemoveCallback;
import androidx.camera.core.internal.utils.ZslRingBuffer;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 @2\u00020\u0001:\u0001@B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u0017J\u000f\u0010\u001b\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R \u0010+\u001a\u00020*8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b+\u0010,\u0012\u0004\b/\u0010\b\u001a\u0004\b-\u0010.R\u0016\u00100\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u0010\u001b\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u00101R\u0016\u00102\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00101R*\u00104\u001a\u0004\u0018\u0001038\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b4\u00105\u0012\u0004\b:\u0010\b\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010>\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006A"}, d2 = {"Landroidx/camera/camera2/adapter/ZslControlImpl;", "Landroidx/camera/camera2/adapter/ZslControl;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;)V", _UrlKt.FRAGMENT_ENCODE_SET, "reset", "()V", "clearRingBuffer", "Landroidx/camera/core/impl/SessionConfig$Builder;", "sessionConfigBuilder", "addZslConfig", "(Landroidx/camera/core/impl/SessionConfig$Builder;)V", "Landroidx/camera/core/impl/DeferrableSurface;", "surface", "Landroidx/camera/core/impl/SessionConfig;", "sessionConfig", _UrlKt.FRAGMENT_ENCODE_SET, "isZslSurface", "(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/SessionConfig;)Z", "disabled", "setZslDisabledByUserCaseConfig", "(Z)V", "isZslDisabledByUserCaseConfig", "()Z", "setZslDisabledByFlashMode", "isZslDisabledByFlashMode", "Landroidx/camera/core/ImageProxy;", "dequeueImageFromBuffer", "()Landroidx/camera/core/ImageProxy;", "clearZslConfig", "Landroidx/camera/camera2/impl/CameraProperties;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroid/hardware/camera2/params/StreamConfigurationMap;", "streamConfigurationMap$delegate", "Lkotlin/Lazy;", "getStreamConfigurationMap", "()Landroid/hardware/camera2/params/StreamConfigurationMap;", "streamConfigurationMap", "Landroidx/camera/core/internal/utils/ZslRingBuffer;", "zslRingBuffer", "Landroidx/camera/core/internal/utils/ZslRingBuffer;", "getZslRingBuffer$camera_camera2", "()Landroidx/camera/core/internal/utils/ZslRingBuffer;", "getZslRingBuffer$camera_camera2$annotations", "isZslDisabledByUseCaseConfig", "Z", "isZslDisabledByQuirks", "Landroidx/camera/core/SafeCloseImageReaderProxy;", "reprocessingImageReader", "Landroidx/camera/core/SafeCloseImageReaderProxy;", "getReprocessingImageReader$camera_camera2", "()Landroidx/camera/core/SafeCloseImageReaderProxy;", "setReprocessingImageReader$camera_camera2", "(Landroidx/camera/core/SafeCloseImageReaderProxy;)V", "getReprocessingImageReader$camera_camera2$annotations", "Landroidx/camera/core/impl/CameraCaptureCallback;", "metadataMatchingCaptureCallback", "Landroidx/camera/core/impl/CameraCaptureCallback;", "reprocessingImageDeferrableSurface", "Landroidx/camera/core/impl/DeferrableSurface;", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZslControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZslControl.kt\nandroidx/camera/camera2/adapter/ZslControlImpl\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n102#2,4:316\n119#2,4:334\n85#2,4:338\n119#2,4:342\n119#2,4:346\n136#2,4:350\n1969#3,14:320\n*S KotlinDebug\n*F\n+ 1 ZslControl.kt\nandroidx/camera/camera2/adapter/ZslControlImpl\n*L\n150#1:316,4\n157#1:334,4\n160#1:338,4\n165#1:342,4\n247#1:346,4\n180#1:350,4\n155#1:320,14\n*E\n"})
public final class ZslControlImpl implements ZslControl {
    private final CameraMetadata cameraMetadata;
    private final CameraProperties cameraProperties;
    private boolean isZslDisabledByFlashMode;
    private boolean isZslDisabledByQuirks;
    private boolean isZslDisabledByUseCaseConfig;
    private CameraCaptureCallback metadataMatchingCaptureCallback;
    private DeferrableSurface reprocessingImageDeferrableSurface;
    private SafeCloseImageReaderProxy reprocessingImageReader;

    /* JADX INFO: renamed from: streamConfigurationMap$delegate, reason: from kotlin metadata */
    private final Lazy streamConfigurationMap = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ZslControlImpl.$r8$lambda$LKuaWDI4O8yhkS0DoPfPSTmRaJI(this.f$0);
        }
    });
    private final ZslRingBuffer zslRingBuffer = new ZslRingBuffer(3, new RingBuffer$OnRemoveCallback() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1
        @Override // androidx.camera.core.internal.utils.RingBuffer$OnRemoveCallback
        public final void onRemove(Object obj) {
            ((ImageProxy) obj).close();
        }
    });

    public ZslControlImpl(CameraProperties cameraProperties) {
        this.cameraProperties = cameraProperties;
        this.cameraMetadata = cameraProperties.getMetadata();
        this.isZslDisabledByQuirks = DeviceQuirks.INSTANCE.get(ZslDisablerQuirk.class) != null;
    }

    private final StreamConfigurationMap getStreamConfigurationMap() {
        return (StreamConfigurationMap) this.streamConfigurationMap.getValue();
    }

    public static StreamConfigurationMap $r8$lambda$LKuaWDI4O8yhkS0DoPfPSTmRaJI(ZslControlImpl zslControlImpl) {
        Object obj = zslControlImpl.cameraMetadata.get((CameraCharacteristics.Key<Object>) CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (obj != null) {
            return (StreamConfigurationMap) obj;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
        return null;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void addZslConfig(SessionConfig.Builder sessionConfigBuilder) {
        reset();
        if (this.isZslDisabledByUseCaseConfig) {
            sessionConfigBuilder.setTemplateType(1);
            return;
        }
        if (this.isZslDisabledByQuirks) {
            sessionConfigBuilder.setTemplateType(1);
            return;
        }
        if (!CameraMetadata.INSTANCE.getSupportsPrivateReprocessing(this.cameraMetadata)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled("CXCP")) {
                Log.i(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Private reprocessing isn't supported");
            }
            sessionConfigBuilder.setTemplateType(1);
            return;
        }
        Iterator it = ArraysKt.toList(getStreamConfigurationMap().getInputSizes(34)).iterator();
        if (!it.hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m978m();
            return;
        }
        Object next = it.next();
        if (it.hasNext()) {
            int iArea = SizesKt.area((Size) next);
            do {
                Object next2 = it.next();
                int iArea2 = SizesKt.area((Size) next2);
                if (iArea < iArea2) {
                    next = next2;
                    iArea = iArea2;
                }
            } while (it.hasNext());
        }
        Size size = (Size) next;
        if (size == null) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Unable to find a supported size for ZSL");
                return;
            }
            return;
        }
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Selected ZSL size: " + size);
        }
        if (!ArraysKt.contains(getStreamConfigurationMap().getValidOutputFormatsForInput(34), 256)) {
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: JPEG isn't valid output for ZSL format");
                return;
            }
            return;
        }
        MetadataImageReader metadataImageReader = new MetadataImageReader(size.getWidth(), size.getHeight(), 34, 9);
        CameraCaptureCallback cameraCaptureCallback = metadataImageReader.getCameraCaptureCallback();
        final SafeCloseImageReaderProxy safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(metadataImageReader);
        metadataImageReader.setOnImageAvailableListener(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda2
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                ZslControlImpl.m1006$r8$lambda$HjVdnBFbCz6juHIelcMFwa4YdI(this.f$0, imageReaderProxy);
            }
        }, CameraXExecutors.ioExecutor());
        Surface surface = safeCloseImageReaderProxy.getSurface();
        if (surface == null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
            return;
        }
        ImmediateSurface immediateSurface = new ImmediateSurface(surface, new Size(safeCloseImageReaderProxy.getWidth(), safeCloseImageReaderProxy.getHeight()), 34);
        immediateSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                safeCloseImageReaderProxy.safeClose();
            }
        }, CameraXExecutors.mainThreadExecutor());
        sessionConfigBuilder.addSurface(immediateSurface);
        sessionConfigBuilder.addCameraCaptureCallback(cameraCaptureCallback);
        sessionConfigBuilder.setInputConfiguration(new InputConfiguration(safeCloseImageReaderProxy.getWidth(), safeCloseImageReaderProxy.getHeight(), safeCloseImageReaderProxy.getImageFormat()));
        this.metadataMatchingCaptureCallback = cameraCaptureCallback;
        this.reprocessingImageReader = safeCloseImageReaderProxy;
        this.reprocessingImageDeferrableSurface = immediateSurface;
    }

    /* JADX INFO: renamed from: $r8$lambda$HjVdnBFbCz6juHI-elcMFwa4YdI, reason: not valid java name */
    public static void m1006$r8$lambda$HjVdnBFbCz6juHIelcMFwa4YdI(ZslControlImpl zslControlImpl, ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
            if (imageProxyAcquireLatestImage != null) {
                zslControlImpl.zslRingBuffer.enqueue(imageProxyAcquireLatestImage);
            }
        } catch (IllegalStateException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "Failed to acquire latest image");
            }
        }
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslSurface(DeferrableSurface surface, SessionConfig sessionConfig) {
        InputConfiguration inputConfiguration = sessionConfig.getInputConfiguration();
        return inputConfiguration != null && surface.getPrescribedStreamFormat() == inputConfiguration.getFormat() && surface.getPrescribedSize().getWidth() == inputConfiguration.getWidth() && surface.getPrescribedSize().getHeight() == inputConfiguration.getHeight();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByUserCaseConfig(boolean disabled) {
        if (this.isZslDisabledByUseCaseConfig != disabled && disabled) {
            clearRingBuffer();
        }
        this.isZslDisabledByUseCaseConfig = disabled;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    /* JADX INFO: renamed from: isZslDisabledByUserCaseConfig, reason: from getter */
    public boolean getIsZslDisabledByUseCaseConfig() {
        return this.isZslDisabledByUseCaseConfig;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByFlashMode(boolean disabled) {
        this.isZslDisabledByFlashMode = disabled;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    /* JADX INFO: renamed from: isZslDisabledByFlashMode, reason: from getter */
    public boolean getIsZslDisabledByFlashMode() {
        return this.isZslDisabledByFlashMode;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public ImageProxy dequeueImageFromBuffer() {
        try {
            return this.zslRingBuffer.dequeue();
        } catch (NoSuchElementException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isWarnEnabled("CXCP")) {
                return null;
            }
            Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl#dequeueImageFromBuffer: No such element");
            return null;
        }
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void clearZslConfig() {
        reset();
    }

    private final void reset() {
        DeferrableSurface deferrableSurface = this.reprocessingImageDeferrableSurface;
        if (deferrableSurface != null) {
            final SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.reprocessingImageReader;
            if (safeCloseImageReaderProxy != null) {
                deferrableSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        safeCloseImageReaderProxy.safeClose();
                    }
                }, CameraXExecutors.mainThreadExecutor());
                safeCloseImageReaderProxy.clearOnImageAvailableListener();
                this.reprocessingImageReader = null;
            }
            deferrableSurface.close();
            this.reprocessingImageDeferrableSurface = null;
        }
        clearRingBuffer();
    }

    private final void clearRingBuffer() {
        ZslRingBuffer zslRingBuffer = this.zslRingBuffer;
        while (!zslRingBuffer.isEmpty()) {
            zslRingBuffer.dequeue().close();
        }
    }
}
