package com.exteragram.messenger.camera;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.util.Range;
import android.util.Size;
import android.view.WindowManager;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.interop.Camera2Interop$Extender;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ConcurrentCamera;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.MeteringPointFactory;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.core.ZoomState;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.extensions.ExtensionsManager;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.FallbackStrategy;
import androidx.camera.video.Quality;
import androidx.camera.video.QualitySelector;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoCapture;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.exteragram.messenger.ExteraConfig;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import p022j$.util.Collection;
import p022j$.util.Objects;
import p022j$.util.Optional;
import p022j$.util.function.BiFunction$CC;
import p022j$.util.function.Function$CC;
import p022j$.util.function.IntPredicate$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class CameraXSession {
    private static Boolean isSeamlessSwitchingAvailableDefaultCache;
    private Camera camera;
    private Camera cameraBack;
    private CameraControl cameraControl;
    private CameraControl cameraControlBack;
    private CameraControl cameraControlFront;
    private Camera cameraFront;
    private CameraSelector cameraSelector;
    private boolean isFrontface;
    private final CameraLifecycle lifecycle;
    private final MeteringPointFactory meteringPointFactory;
    private Preview previewUseCase;
    private Preview previewUseCaseBack;
    private ProcessCameraProvider provider;
    private final Preview.SurfaceProvider surfaceProviderPrimary;
    private Preview.SurfaceProvider surfaceProviderSecondary;
    private VideoCapture videoCapture;
    private VideoCapture videoCaptureBack;
    private static final Map stabilizationCache = new HashMap();
    private static final Map fpsRangesCache = new HashMap();
    private static final Map videoSizesCache = new HashMap();
    private boolean isInitiated = false;
    private boolean isDualMode = false;
    private boolean isBinding = false;
    private boolean isTorchOn = false;

    /* JADX INFO: loaded from: classes4.dex */
    public static class CameraLifecycle implements LifecycleOwner {
        private final LifecycleRegistry lifecycleRegistry;

        public CameraLifecycle() {
            LifecycleRegistry lifecycleRegistry = new LifecycleRegistry(this);
            this.lifecycleRegistry = lifecycleRegistry;
            lifecycleRegistry.setCurrentState(Lifecycle.State.CREATED);
        }

        public void start() {
            try {
                if (this.lifecycleRegistry.getCurrentState() != Lifecycle.State.DESTROYED) {
                    this.lifecycleRegistry.setCurrentState(Lifecycle.State.RESUMED);
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        public void stop() {
            try {
                this.lifecycleRegistry.setCurrentState(Lifecycle.State.DESTROYED);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        @Override // androidx.lifecycle.LifecycleOwner
        public Lifecycle getLifecycle() {
            return this.lifecycleRegistry;
        }
    }

    public CameraXSession(CameraLifecycle cameraLifecycle, MeteringPointFactory meteringPointFactory, Preview.SurfaceProvider surfaceProvider) {
        this.lifecycle = cameraLifecycle;
        this.meteringPointFactory = meteringPointFactory;
        this.surfaceProviderPrimary = surfaceProvider;
    }

    public void setSecondSurfaceProvider(Preview.SurfaceProvider surfaceProvider) {
        Preview preview;
        this.surfaceProviderSecondary = surfaceProvider;
        if (this.isInitiated && this.isDualMode && (preview = this.previewUseCaseBack) != null) {
            preview.setSurfaceProvider(surfaceProvider);
        }
    }

    public boolean isReady() {
        return (!this.isInitiated || this.isBinding || this.camera == null) ? false : true;
    }

    public boolean isDualMode() {
        return this.isDualMode;
    }

    public void initCamera(final Context context, boolean z, final boolean z2, final Runnable runnable) {
        this.isFrontface = z;
        final ListenableFuture processCameraProvider = ProcessCameraProvider.getInstance(context);
        processCameraProvider.addListener(new Runnable() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initCamera$1(processCameraProvider, z2, context, runnable);
            }
        }, ContextCompat.getMainExecutor(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initCamera$1(ListenableFuture listenableFuture, boolean z, Context context, final Runnable runnable) {
        try {
            this.provider = (ProcessCameraProvider) listenableFuture.get();
            checkConcurrentSupport(z);
            ExtensionsManager.getInstanceAsync(context, this.provider).addListener(new Runnable() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$initCamera$0(runnable);
                }
            }, ContextCompat.getMainExecutor(context));
        } catch (InterruptedException | ExecutionException e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initCamera$0(Runnable runnable) {
        if (this.lifecycle.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        prepareUseCases();
        bindUseCases();
        this.lifecycle.start();
        if (runnable != null) {
            runnable.run();
        }
        this.isInitiated = true;
    }

    private void checkConcurrentSupport(boolean z) {
        if (!z) {
            this.isDualMode = false;
            return;
        }
        ProcessCameraProvider processCameraProvider = this.provider;
        if (processCameraProvider != null) {
            Iterator it = processCameraProvider.getAvailableConcurrentCameraInfos().iterator();
            while (it.hasNext()) {
                boolean z2 = false;
                boolean z3 = false;
                for (CameraInfo cameraInfo : (List) it.next()) {
                    if (cameraInfo.getLensFacing() == 0) {
                        z2 = true;
                    }
                    if (cameraInfo.getLensFacing() == 1) {
                        z3 = true;
                    }
                }
                if (z2 && z3) {
                    this.isDualMode = true;
                    return;
                }
            }
        }
        this.isDualMode = false;
    }

    public void switchCamera() {
        boolean z = !this.isFrontface;
        this.isFrontface = z;
        if (this.isDualMode && this.cameraFront != null && this.cameraBack != null) {
            updateActiveControl(z);
            updateTorchState();
        } else {
            prepareUseCases();
            bindUseCases();
        }
    }

    private void updateActiveControl(boolean z) {
        if (z) {
            this.camera = this.cameraFront;
            this.cameraControl = this.cameraControlFront;
        } else {
            this.camera = this.cameraBack;
            this.cameraControl = this.cameraControlBack;
        }
    }

    public void closeCamera() {
        ProcessCameraProvider processCameraProvider = this.provider;
        if (processCameraProvider != null) {
            processCameraProvider.unbindAll();
        }
        this.lifecycle.stop();
        this.isInitiated = false;
    }

    public boolean isFlashAvailable() {
        Camera camera = this.camera;
        if (camera == null) {
            return false;
        }
        return camera.getCameraInfo().hasFlashUnit();
    }

    public void setTorchEnabled(boolean z) {
        this.isTorchOn = z;
        updateTorchState();
    }

    private void updateTorchState() {
        Camera camera;
        try {
            boolean z = true;
            if (this.isDualMode) {
                CameraControl cameraControl = this.cameraControlFront;
                if (cameraControl != null) {
                    cameraControl.enableTorch(false);
                }
                if (this.cameraControlBack == null || (camera = this.cameraBack) == null || !camera.getCameraInfo().hasFlashUnit()) {
                    return;
                }
                CameraControl cameraControl2 = this.cameraControlBack;
                if (!this.isTorchOn || this.isFrontface) {
                    z = false;
                }
                cameraControl2.enableTorch(z);
                return;
            }
            Camera camera2 = this.camera;
            if (camera2 == null || this.cameraControl == null) {
                return;
            }
            if (camera2.getCameraInfo().getLensFacing() == 1 && isFlashAvailable()) {
                this.cameraControl.enableTorch(this.isTorchOn);
            } else if (isFlashAvailable()) {
                this.cameraControl.enableTorch(false);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void prepareUseCases() {
        if (this.isDualMode) {
            prepareDualUseCases();
        } else {
            prepareSingleUseCases();
        }
    }

    private void prepareSingleUseCases() {
        CameraSelector cameraSelector = this.isFrontface ? CameraSelector.DEFAULT_FRONT_CAMERA : CameraSelector.DEFAULT_BACK_CAMERA;
        this.cameraSelector = cameraSelector;
        Preview previewBuildPreview = buildPreview(cameraSelector);
        this.previewUseCase = previewBuildPreview;
        previewBuildPreview.setSurfaceProvider(this.surfaceProviderPrimary);
        this.videoCapture = buildVideoCapture(this.cameraSelector);
    }

    private void prepareDualUseCases() {
        CameraSelector cameraSelector = CameraSelector.DEFAULT_FRONT_CAMERA;
        Preview previewBuildPreview = buildPreview(cameraSelector);
        this.previewUseCase = previewBuildPreview;
        previewBuildPreview.setSurfaceProvider(this.surfaceProviderPrimary);
        this.videoCapture = buildVideoCapture(cameraSelector);
        CameraSelector cameraSelector2 = CameraSelector.DEFAULT_BACK_CAMERA;
        Preview previewBuildPreview2 = buildPreview(cameraSelector2);
        this.previewUseCaseBack = previewBuildPreview2;
        Preview.SurfaceProvider surfaceProvider = this.surfaceProviderSecondary;
        if (surfaceProvider != null) {
            previewBuildPreview2.setSurfaceProvider(surfaceProvider);
        }
        this.videoCaptureBack = buildVideoCapture(cameraSelector2);
    }

    private Preview buildPreview(CameraSelector cameraSelector) {
        boolean zEquals;
        Preview.Builder resolutionSelector = new Preview.Builder().setResolutionSelector(new ResolutionSelector.Builder().setAspectRatioStrategy(SharedConfig.roundCamera16to9 ? AspectRatioStrategy.RATIO_16_9_FALLBACK_AUTO_STRATEGY : AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY).build());
        if (cameraSelector != null) {
            try {
                ProcessCameraProvider processCameraProvider = this.provider;
                if (processCameraProvider != null && processCameraProvider.hasCamera(cameraSelector)) {
                    Map map = stabilizationCache;
                    if (map.containsKey(cameraSelector)) {
                        zEquals = Boolean.TRUE.equals(map.get(cameraSelector));
                    } else {
                        boolean zIsStabilizationSupported = Preview.getPreviewCapabilities(this.provider.getCameraInfo(cameraSelector)).isStabilizationSupported();
                        map.put(cameraSelector, Boolean.valueOf(zIsStabilizationSupported));
                        zEquals = zIsStabilizationSupported;
                    }
                    if (zEquals && ExteraConfig.cameraStabilization) {
                        resolutionSelector.setPreviewStabilizationEnabled(true);
                    }
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        if (!ExteraConfig.cameraMirrorMode) {
            resolutionSelector.setMirrorMode(0);
        }
        applyFpsRange(cameraSelector, resolutionSelector);
        return resolutionSelector.build();
    }

    private VideoCapture buildVideoCapture(CameraSelector cameraSelector) {
        Quality videoQuality = getVideoQuality(this.provider, cameraSelector);
        VideoCapture.Builder builder = new VideoCapture.Builder(new Recorder.Builder().setQualitySelector(QualitySelector.from(videoQuality, FallbackStrategy.higherQualityOrLowerThan(videoQuality))).build());
        if (ExteraConfig.extendedFramesPerSecond && cameraSelector != null) {
            try {
                ProcessCameraProvider processCameraProvider = this.provider;
                if (processCameraProvider != null && processCameraProvider.hasCamera(cameraSelector)) {
                    Range[] fpsRanges = getFpsRanges(cameraSelector);
                    Range range = new Range(30, 60);
                    if (isRangeSupported(fpsRanges, range)) {
                        new Camera2Interop$Extender(builder).setCaptureRequestOption(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
                    }
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        return builder.build();
    }

    private void applyFpsRange(CameraSelector cameraSelector, Preview.Builder builder) {
        if (ExteraConfig.extendedFramesPerSecond && cameraSelector != null) {
            try {
                ProcessCameraProvider processCameraProvider = this.provider;
                if (processCameraProvider == null || !processCameraProvider.hasCamera(cameraSelector)) {
                    return;
                }
                Range[] fpsRanges = getFpsRanges(cameraSelector);
                Range range = new Range(30, 60);
                if (!isRangeSupported(fpsRanges, range) || builder == null) {
                    return;
                }
                new Camera2Interop$Extender(builder).setCaptureRequestOption(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    private Range[] getFpsRanges(CameraSelector cameraSelector) {
        Map map = fpsRangesCache;
        if (map.containsKey(cameraSelector)) {
            return (Range[]) map.get(cameraSelector);
        }
        try {
            Range[] rangeArr = (Range[]) Camera2CameraInfo.from(this.provider.getCameraInfo(cameraSelector)).getCameraCharacteristic(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
            map.put(cameraSelector, rangeArr);
            return rangeArr;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    private boolean isRangeSupported(Range[] rangeArr, Range range) {
        if (rangeArr == null) {
            return false;
        }
        for (Range range2 : rangeArr) {
            if (range2.equals(range)) {
                return true;
            }
        }
        return false;
    }

    public void bindUseCases() {
        if (this.provider == null || this.lifecycle.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED || this.isBinding) {
            return;
        }
        this.isBinding = true;
        this.camera = null;
        try {
            this.provider.unbindAll();
            if (this.isDualMode) {
                bindDualUseCases();
            } else {
                bindSingleUseCases();
            }
            this.isBinding = false;
        } catch (Throwable th) {
            this.isBinding = false;
            throw th;
        }
    }

    private void bindSingleUseCases() {
        try {
            CameraSelector cameraSelector = this.cameraSelector;
            if (cameraSelector != null && this.provider.hasCamera(cameraSelector)) {
                VideoCapture videoCapture = this.videoCapture;
                if (videoCapture != null) {
                    try {
                        this.camera = this.provider.bindToLifecycle(this.lifecycle, this.cameraSelector, this.previewUseCase, videoCapture);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                        this.camera = this.provider.bindToLifecycle(this.lifecycle, this.cameraSelector, this.previewUseCase);
                    }
                } else {
                    this.camera = this.provider.bindToLifecycle(this.lifecycle, this.cameraSelector, this.previewUseCase);
                }
                CameraControl cameraControl = this.camera.getCameraControl();
                this.cameraControl = cameraControl;
                cameraControl.setZoomRatio(1.0f);
                updateTorchState();
                return;
            }
            this.isInitiated = false;
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            this.isInitiated = false;
        }
    }

    private void bindDualUseCases() {
        if (SharedConfig.getDevicePerformanceClass() == 0) {
            bindDualUseCasesFallback();
            return;
        }
        try {
            UseCaseGroup.Builder builderAddUseCase = new UseCaseGroup.Builder().addUseCase(this.previewUseCase);
            VideoCapture videoCapture = this.videoCapture;
            if (videoCapture != null) {
                builderAddUseCase.addUseCase(videoCapture);
            }
            ConcurrentCamera.SingleCameraConfig singleCameraConfig = new ConcurrentCamera.SingleCameraConfig(CameraSelector.DEFAULT_FRONT_CAMERA, builderAddUseCase.build(), this.lifecycle);
            UseCaseGroup.Builder builderAddUseCase2 = new UseCaseGroup.Builder().addUseCase(this.previewUseCaseBack);
            VideoCapture videoCapture2 = this.videoCaptureBack;
            if (videoCapture2 != null) {
                builderAddUseCase2.addUseCase(videoCapture2);
            }
            ConcurrentCamera.SingleCameraConfig singleCameraConfig2 = new ConcurrentCamera.SingleCameraConfig(CameraSelector.DEFAULT_BACK_CAMERA, builderAddUseCase2.build(), this.lifecycle);
            ArrayList arrayList = new ArrayList();
            arrayList.add(singleCameraConfig);
            arrayList.add(singleCameraConfig2);
            for (Camera camera : this.provider.bindToLifecycle(arrayList).getCameras()) {
                if (camera.getCameraInfo().getLensFacing() == 0) {
                    this.cameraFront = camera;
                    CameraControl cameraControl = camera.getCameraControl();
                    this.cameraControlFront = cameraControl;
                    cameraControl.setZoomRatio(1.0f);
                } else {
                    this.cameraBack = camera;
                    CameraControl cameraControl2 = camera.getCameraControl();
                    this.cameraControlBack = cameraControl2;
                    cameraControl2.setZoomRatio(1.0f);
                }
            }
            updateActiveControl(this.isFrontface);
            updateTorchState();
        } catch (Exception e) {
            FileLog.m1136e(e);
            bindDualUseCasesFallback();
        }
    }

    private void bindDualUseCasesFallback() {
        try {
            ConcurrentCamera.SingleCameraConfig singleCameraConfig = new ConcurrentCamera.SingleCameraConfig(CameraSelector.DEFAULT_FRONT_CAMERA, new UseCaseGroup.Builder().addUseCase(this.previewUseCase).build(), this.lifecycle);
            ConcurrentCamera.SingleCameraConfig singleCameraConfig2 = new ConcurrentCamera.SingleCameraConfig(CameraSelector.DEFAULT_BACK_CAMERA, new UseCaseGroup.Builder().addUseCase(this.previewUseCaseBack).build(), this.lifecycle);
            ArrayList arrayList = new ArrayList();
            arrayList.add(singleCameraConfig);
            arrayList.add(singleCameraConfig2);
            for (Camera camera : this.provider.bindToLifecycle(arrayList).getCameras()) {
                if (camera.getCameraInfo().getLensFacing() == 0) {
                    this.cameraFront = camera;
                    CameraControl cameraControl = camera.getCameraControl();
                    this.cameraControlFront = cameraControl;
                    cameraControl.setZoomRatio(1.0f);
                } else {
                    this.cameraBack = camera;
                    CameraControl cameraControl2 = camera.getCameraControl();
                    this.cameraControlBack = cameraControl2;
                    cameraControl2.setZoomRatio(1.0f);
                }
            }
            updateActiveControl(this.isFrontface);
            updateTorchState();
        } catch (Exception e) {
            FileLog.m1136e(e);
            this.isDualMode = false;
            bindSingleUseCases();
        }
    }

    public float getLinearZoom() {
        ZoomState zoomState;
        Camera camera = this.camera;
        if (camera == null || (zoomState = (ZoomState) camera.getCameraInfo().getZoomState().getValue()) == null) {
            return 0.0f;
        }
        return zoomState.getLinearZoom();
    }

    public void setZoom(float f) {
        Camera camera;
        ZoomState zoomState;
        if (this.cameraControl == null || (camera = this.camera) == null || (zoomState = (ZoomState) camera.getCameraInfo().getZoomState().getValue()) == null) {
            return;
        }
        this.cameraControl.setZoomRatio(Utilities.clamp(zoomState.getZoomRatio() * f, zoomState.getMaxZoomRatio(), zoomState.getMinZoomRatio()));
    }

    public float getZoomRatio() {
        ZoomState zoomState;
        Camera camera = this.camera;
        if (camera == null || (zoomState = (ZoomState) camera.getCameraInfo().getZoomState().getValue()) == null) {
            return 1.0f;
        }
        return zoomState.getZoomRatio();
    }

    public void setZoomRatio(float f) {
        CameraControl cameraControl = this.cameraControl;
        if (cameraControl == null) {
            return;
        }
        cameraControl.setZoomRatio(f);
    }

    public float getMinZoomRatio() {
        ZoomState zoomState;
        Camera camera = this.camera;
        if (camera == null || (zoomState = (ZoomState) camera.getCameraInfo().getZoomState().getValue()) == null) {
            return 1.0f;
        }
        return zoomState.getMinZoomRatio();
    }

    public float getMaxZoomRatio() {
        ZoomState zoomState;
        Camera camera = this.camera;
        if (camera == null || (zoomState = (ZoomState) camera.getCameraInfo().getZoomState().getValue()) == null) {
            return 1.0f;
        }
        return zoomState.getMaxZoomRatio();
    }

    public void focusToPoint(float f, float f2) {
        if (this.cameraControl == null) {
            return;
        }
        this.cameraControl.startFocusAndMetering(new FocusMeteringAction.Builder(this.meteringPointFactory.createPoint(f, f2), 7).build());
    }

    public int getDisplayOrientation() {
        int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 0) {
            return 0;
        }
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    public static Map getAvailableVideoSizes(CameraSelector cameraSelector, ProcessCameraProvider processCameraProvider) {
        Map map = videoSizesCache;
        if (map.containsKey(cameraSelector)) {
            return (Map) map.get(cameraSelector);
        }
        Map map2 = (Map) Collection.EL.stream(cameraSelector.filter(processCameraProvider.getAvailableCameraInfos())).findFirst().map(new Function() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda8
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return CameraXSession.m2294$r8$lambda$WFM3GZVFUtiOPETySK3lZGOOCA((CameraInfo) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).orElse(new LinkedHashMap());
        map.put(cameraSelector, map2);
        return map2;
    }

    /* JADX INFO: renamed from: $r8$lambda$WFM3GZVFUtiOPET-ySK3lZGOOCA, reason: not valid java name */
    public static /* synthetic */ LinkedHashMap m2294$r8$lambda$WFM3GZVFUtiOPETySK3lZGOOCA(final CameraInfo cameraInfo) {
        return (LinkedHashMap) Collection.EL.stream(Recorder.getVideoCapabilities(cameraInfo).getSupportedQualities(DynamicRange.UNSPECIFIED)).collect(Collectors.toMap(Function$CC.identity(), new Function() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda9
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return CameraXSession.m2293$r8$lambda$01A6AphNT0EZ3ty8WLlv6PKG4(cameraInfo, (Quality) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new BinaryOperator() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda10
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return CameraXSession.m2296$r8$lambda$tZn9Vw7ajOvMRMMd42QgG7wMV8((Size) obj, (Size) obj2);
            }
        }, new Supplier() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda11
            @Override // java.util.function.Supplier
            public final Object get() {
                return new LinkedHashMap();
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$01A6A-phNT0-EZ3ty8WLlv6PKG4, reason: not valid java name */
    public static /* synthetic */ Size m2293$r8$lambda$01A6AphNT0EZ3ty8WLlv6PKG4(CameraInfo cameraInfo, Quality quality) {
        return (Size) Optional.ofNullable(QualitySelector.getResolution(cameraInfo, quality)).orElse(new Size(0, 0));
    }

    /* JADX INFO: renamed from: $r8$lambda$tZn9Vw-7ajOvMRMMd42QgG7wMV8, reason: not valid java name */
    public static /* synthetic */ Size m2296$r8$lambda$tZn9Vw7ajOvMRMMd42QgG7wMV8(Size size, Size size2) {
        throw new IllegalStateException(String.format("Duplicate key %s", size));
    }

    public static Quality getVideoQuality(ProcessCameraProvider processCameraProvider, CameraSelector cameraSelector) {
        Map availableVideoSizes = getAvailableVideoSizes(cameraSelector, processCameraProvider);
        if (availableVideoSizes.isEmpty()) {
            return Quality.f29SD;
        }
        final int suggestedResolution = getSuggestedResolution();
        final int iOrElse = Collection.EL.stream(availableVideoSizes.values()).mapToInt(new ToIntFunction() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda1
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Size) obj).getHeight();
            }
        }).filter(new IntPredicate() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda2
            public /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
                return IntPredicate$CC.$default$and(this, intPredicate);
            }

            public /* synthetic */ IntPredicate negate() {
                return IntPredicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ IntPredicate m228or(IntPredicate intPredicate) {
                return IntPredicate$CC.$default$or(this, intPredicate);
            }

            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return CameraXSession.$r8$lambda$vGDHxvnfSRLnK1Y72oTpmRqaYLU(suggestedResolution, i);
            }
        }).max().orElse(Collection.EL.stream(availableVideoSizes.values()).mapToInt(new ToIntFunction() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda1
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Size) obj).getHeight();
            }
        }).filter(new IntPredicate() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda3
            public /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
                return IntPredicate$CC.$default$and(this, intPredicate);
            }

            public /* synthetic */ IntPredicate negate() {
                return IntPredicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ IntPredicate m229or(IntPredicate intPredicate) {
                return IntPredicate$CC.$default$or(this, intPredicate);
            }

            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return CameraXSession.$r8$lambda$T4tWowZgGUKCS8bI_KCHpQKUyOM(i);
            }
        }).min().orElse(0));
        if (iOrElse == 0) {
            return Quality.LOWEST;
        }
        return (Quality) Collection.EL.stream(availableVideoSizes.entrySet()).filter(new Predicate() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda4
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m230or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return CameraXSession.$r8$lambda$ObvWR0kql5zK_bEzJdqCswEhh3Y(iOrElse, (Map.Entry) obj);
            }
        }).map(new Function() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda5
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (Quality) ((Map.Entry) obj).getKey();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).findFirst().orElse(Quality.HIGHEST);
    }

    public static /* synthetic */ boolean $r8$lambda$vGDHxvnfSRLnK1Y72oTpmRqaYLU(int i, int i2) {
        return i2 > 0 && i2 <= i;
    }

    public static /* synthetic */ boolean $r8$lambda$T4tWowZgGUKCS8bI_KCHpQKUyOM(int i) {
        return i > 0;
    }

    public static /* synthetic */ boolean $r8$lambda$ObvWR0kql5zK_bEzJdqCswEhh3Y(int i, Map.Entry entry) {
        return ((Size) entry.getValue()).getHeight() == i;
    }

    private static int getSuggestedResolution() {
        int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
        if (devicePerformanceClass == 0) {
            return 720;
        }
        if (devicePerformanceClass != 1) {
            return devicePerformanceClass != 2 ? 720 : 2160;
        }
        return 1080;
    }

    public static boolean isSeamlessSwitchingAvailable(final Context context) {
        return ((Boolean) Objects.requireNonNullElseGet(isSeamlessSwitchingAvailableDefaultCache, new Supplier() { // from class: com.exteragram.messenger.camera.CameraXSession$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return CameraXSession.$r8$lambda$fBxSD1FV2tUKCceSHJQOCC_V3Bo(context);
            }
        })).booleanValue();
    }

    public static /* synthetic */ Boolean $r8$lambda$fBxSD1FV2tUKCceSHJQOCC_V3Bo(Context context) {
        Boolean boolValueOf = Boolean.valueOf(SharedConfig.getDevicePerformanceClass() >= 1 && android.hardware.Camera.getNumberOfCameras() > 1 && SharedConfig.allowPreparingHevcPlayers() && context != null && context.getPackageManager().hasSystemFeature("android.hardware.camera.concurrent"));
        isSeamlessSwitchingAvailableDefaultCache = boolValueOf;
        return boolValueOf;
    }
}
