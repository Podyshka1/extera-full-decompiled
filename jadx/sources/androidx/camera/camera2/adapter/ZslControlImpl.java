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
import androidx.camera.core.internal.utils.RingBuffer;
import androidx.camera.core.internal.utils.ZslRingBuffer;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ZslControlImpl implements ZslControl {
    public static final Companion Companion = new Companion(null);
    private final CameraMetadata cameraMetadata;
    private final CameraProperties cameraProperties;
    private boolean isZslDisabledByFlashMode;
    private boolean isZslDisabledByQuirks;
    private boolean isZslDisabledByUseCaseConfig;
    private CameraCaptureCallback metadataMatchingCaptureCallback;
    private DeferrableSurface reprocessingImageDeferrableSurface;
    private SafeCloseImageReaderProxy reprocessingImageReader;
    private final Lazy streamConfigurationMap$delegate;
    private final ZslRingBuffer zslRingBuffer;

    public ZslControlImpl(CameraProperties cameraProperties) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        this.cameraProperties = cameraProperties;
        this.cameraMetadata = cameraProperties.getMetadata();
        this.streamConfigurationMap$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ZslControlImpl.streamConfigurationMap_delegate$lambda$0(this.f$0);
            }
        });
        this.zslRingBuffer = new ZslRingBuffer(3, new RingBuffer.OnRemoveCallback() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1
            @Override // androidx.camera.core.internal.utils.RingBuffer.OnRemoveCallback
            public final void onRemove(Object obj) {
                ZslControlImpl.zslRingBuffer$lambda$0((ImageProxy) obj);
            }
        });
        this.isZslDisabledByQuirks = DeviceQuirks.INSTANCE.get(ZslDisablerQuirk.class) != null;
    }

    private final StreamConfigurationMap getStreamConfigurationMap() {
        return (StreamConfigurationMap) this.streamConfigurationMap$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StreamConfigurationMap streamConfigurationMap_delegate$lambda$0(ZslControlImpl zslControlImpl) {
        CameraMetadata cameraMetadata = zslControlImpl.cameraMetadata;
        CameraCharacteristics.Key SCALER_STREAM_CONFIGURATION_MAP = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        Intrinsics.checkNotNullExpressionValue(SCALER_STREAM_CONFIGURATION_MAP, "SCALER_STREAM_CONFIGURATION_MAP");
        Object obj = cameraMetadata.get(SCALER_STREAM_CONFIGURATION_MAP);
        if (obj != null) {
            return (StreamConfigurationMap) obj;
        }
        throw new IllegalStateException("Required value was null.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zslRingBuffer$lambda$0(ImageProxy imageProxy) {
        Intrinsics.checkNotNullParameter(imageProxy, "imageProxy");
        imageProxy.close();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void addZslConfig(SessionConfig.Builder sessionConfigBuilder) {
        Intrinsics.checkNotNullParameter(sessionConfigBuilder, "sessionConfigBuilder");
        reset();
        if (this.isZslDisabledByUseCaseConfig) {
            sessionConfigBuilder.setTemplateType(1);
            return;
        }
        if (this.isZslDisabledByQuirks) {
            sessionConfigBuilder.setTemplateType(1);
            return;
        }
        if (!CameraMetadata.Companion.getSupportsPrivateReprocessing(this.cameraMetadata)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled("CXCP")) {
                Log.i(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Private reprocessing isn't supported");
            }
            sessionConfigBuilder.setTemplateType(1);
            return;
        }
        Size[] inputSizes = getStreamConfigurationMap().getInputSizes(34);
        Intrinsics.checkNotNullExpressionValue(inputSizes, "getInputSizes(...)");
        Iterator it = ArraysKt.toList(inputSizes).iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            Size size = (Size) next;
            Intrinsics.checkNotNull(size);
            int iArea = SizesKt.area(size);
            do {
                Object next2 = it.next();
                Size size2 = (Size) next2;
                Intrinsics.checkNotNull(size2);
                int iArea2 = SizesKt.area(size2);
                if (iArea < iArea2) {
                    next = next2;
                    iArea = iArea2;
                }
            } while (it.hasNext());
        }
        Size size3 = (Size) next;
        if (size3 == null) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Unable to find a supported size for ZSL");
                return;
            }
            return;
        }
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Selected ZSL size: " + size3);
        }
        int[] validOutputFormatsForInput = getStreamConfigurationMap().getValidOutputFormatsForInput(34);
        Intrinsics.checkNotNullExpressionValue(validOutputFormatsForInput, "getValidOutputFormatsForInput(...)");
        if (!ArraysKt.contains(validOutputFormatsForInput, 256)) {
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: JPEG isn't valid output for ZSL format");
                return;
            }
            return;
        }
        MetadataImageReader metadataImageReader = new MetadataImageReader(size3.getWidth(), size3.getHeight(), 34, 9);
        CameraCaptureCallback cameraCaptureCallback = metadataImageReader.getCameraCaptureCallback();
        Intrinsics.checkNotNullExpressionValue(cameraCaptureCallback, "getCameraCaptureCallback(...)");
        final SafeCloseImageReaderProxy safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(metadataImageReader);
        metadataImageReader.setOnImageAvailableListener(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda3
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                ZslControlImpl.addZslConfig$lambda$5(this.f$0, imageReaderProxy);
            }
        }, CameraXExecutors.ioExecutor());
        Surface surface = safeCloseImageReaderProxy.getSurface();
        if (surface == null) {
            throw new IllegalStateException("Required value was null.");
        }
        ImmediateSurface immediateSurface = new ImmediateSurface(surface, new Size(safeCloseImageReaderProxy.getWidth(), safeCloseImageReaderProxy.getHeight()), 34);
        immediateSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda4
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addZslConfig$lambda$5(ZslControlImpl zslControlImpl, ImageReaderProxy reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        try {
            ImageProxy imageProxyAcquireLatestImage = reader.acquireLatestImage();
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
        Intrinsics.checkNotNullParameter(surface, "surface");
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        InputConfiguration inputConfiguration = sessionConfig.getInputConfiguration();
        return inputConfiguration != null && surface.getPrescribedStreamFormat() == inputConfiguration.getFormat() && surface.getPrescribedSize().getWidth() == inputConfiguration.getWidth() && surface.getPrescribedSize().getHeight() == inputConfiguration.getHeight();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByUserCaseConfig(boolean z) {
        if (this.isZslDisabledByUseCaseConfig != z && z) {
            clearRingBuffer();
        }
        this.isZslDisabledByUseCaseConfig = z;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByUserCaseConfig() {
        return this.isZslDisabledByUseCaseConfig;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByFlashMode(boolean z) {
        this.isZslDisabledByFlashMode = z;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByFlashMode() {
        return this.isZslDisabledByFlashMode;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public ImageProxy dequeueImageFromBuffer() {
        try {
            return (ImageProxy) this.zslRingBuffer.dequeue();
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
                deferrableSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda2
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
            ((ImageProxy) zslRingBuffer.dequeue()).close();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
