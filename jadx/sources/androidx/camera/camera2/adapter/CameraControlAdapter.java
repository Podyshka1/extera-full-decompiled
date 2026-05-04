package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraControlAdapter implements CameraControlInternal {
    private final Camera2CameraControl camera2cameraControl;
    private final CameraProperties cameraProperties;
    private final EvCompControl evCompControl;
    private final FlashControl flashControl;
    private final FocusMeteringControl focusMeteringControl;
    private final LowLightBoostControl lowLightBoostControl;
    private final StillCaptureRequestControl stillCaptureRequestControl;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private final UseCaseManager useCaseManager;
    private final VideoUsageControl videoUsageControl;
    private final ZoomControl zoomControl;
    private final ZslControl zslControl;

    public CameraControlAdapter(CameraProperties cameraProperties, EvCompControl evCompControl, FlashControl flashControl, FocusMeteringControl focusMeteringControl, StillCaptureRequestControl stillCaptureRequestControl, TorchControl torchControl, LowLightBoostControl lowLightBoostControl, ZoomControl zoomControl, ZslControl zslControl, Camera2CameraControl camera2cameraControl, UseCaseManager useCaseManager, UseCaseThreads threads, VideoUsageControl videoUsageControl) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(evCompControl, "evCompControl");
        Intrinsics.checkNotNullParameter(flashControl, "flashControl");
        Intrinsics.checkNotNullParameter(focusMeteringControl, "focusMeteringControl");
        Intrinsics.checkNotNullParameter(stillCaptureRequestControl, "stillCaptureRequestControl");
        Intrinsics.checkNotNullParameter(torchControl, "torchControl");
        Intrinsics.checkNotNullParameter(lowLightBoostControl, "lowLightBoostControl");
        Intrinsics.checkNotNullParameter(zoomControl, "zoomControl");
        Intrinsics.checkNotNullParameter(zslControl, "zslControl");
        Intrinsics.checkNotNullParameter(camera2cameraControl, "camera2cameraControl");
        Intrinsics.checkNotNullParameter(useCaseManager, "useCaseManager");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(videoUsageControl, "videoUsageControl");
        this.cameraProperties = cameraProperties;
        this.evCompControl = evCompControl;
        this.flashControl = flashControl;
        this.focusMeteringControl = focusMeteringControl;
        this.stillCaptureRequestControl = stillCaptureRequestControl;
        this.torchControl = torchControl;
        this.lowLightBoostControl = lowLightBoostControl;
        this.zoomControl = zoomControl;
        this.zslControl = zslControl;
        this.camera2cameraControl = camera2cameraControl;
        this.useCaseManager = useCaseManager;
        this.threads = threads;
        this.videoUsageControl = videoUsageControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addInteropConfig(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.camera2cameraControl.addCaptureRequestOptions(CaptureRequestOptions.Builder.Companion.from(config).build());
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearInteropConfig() {
        this.camera2cameraControl.clearCaptureRequestOptions();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public Config getInteropConfig() {
        return this.camera2cameraControl.getCaptureRequestOptions();
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture enableTorch(boolean z) {
        Integer num;
        if (CameraMetadata.Companion.getSupportsLowLightBoost(this.cameraProperties.getMetadata()) && ((num = (Integer) this.lowLightBoostControl.getLowLightBoostStateLiveData().getValue()) == null || num.intValue() != -1)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Unable to enable/disable torch when low-light boost is on.");
            }
            ListenableFuture listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(new IllegalStateException("Torch can not be enabled/disable when low-light boost is on!"));
            Intrinsics.checkNotNullExpressionValue(listenableFutureImmediateFailedFuture, "immediateFailedFuture(...)");
            return listenableFutureImmediateFailedFuture;
        }
        ListenableFuture listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asVoidListenableFuture(TorchControl.setTorchAsync$default(this.torchControl, z, false, false, 6, null)));
        Intrinsics.checkNotNullExpressionValue(listenableFutureNonCancellationPropagating, "nonCancellationPropagating(...)");
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture startFocusAndMetering(FocusMeteringAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ListenableFuture listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(FocusMeteringControl.startFocusAndMetering$default(this.focusMeteringControl, action, 0L, 2, null));
        Intrinsics.checkNotNullExpressionValue(listenableFutureNonCancellationPropagating, "nonCancellationPropagating(...)");
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture setZoomRatio(float f) {
        return this.zoomControl.setZoomRatio(f);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setFlashMode(int i) {
        FlashControl.setFlashAsync$default(this.flashControl, i, false, 2, null);
        this.zslControl.setZslDisabledByFlashMode(i == 1 || i == 0);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        this.flashControl.setScreenFlash(screenFlash);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addZslConfig(SessionConfig.Builder sessionConfigBuilder) {
        Intrinsics.checkNotNullParameter(sessionConfigBuilder, "sessionConfigBuilder");
        this.zslControl.addZslConfig(sessionConfigBuilder);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearZslConfig() {
        this.zslControl.clearZslConfig();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void incrementVideoUsage() {
        this.videoUsageControl.incrementUsage();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void decrementVideoUsage() {
        this.videoUsageControl.decrementUsage();
    }
}
