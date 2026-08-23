package androidx.camera.core.impl;

import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraControlInternal extends CameraControl {
    public static final CameraControlInternal DEFAULT_EMPTY_INSTANCE = new CameraControlInternal() { // from class: androidx.camera.core.impl.CameraControlInternal.2
        @Override // androidx.camera.core.impl.CameraControlInternal
        public void addInteropConfig(Config config) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void addZslConfig(SessionConfig.Builder builder) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void clearInteropConfig() {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void clearZslConfig() {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public /* synthetic */ void decrementVideoUsage() {
            CC.$default$decrementVideoUsage(this);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public Config getInteropConfig() {
            return null;
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public /* synthetic */ void incrementVideoUsage() {
            CC.$default$incrementVideoUsage(this);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void setFlashMode(int i) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public /* synthetic */ void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
            CC.$default$setScreenFlash(this, screenFlash);
        }

        @Override // androidx.camera.core.CameraControl
        public ListenableFuture enableTorch(boolean z) {
            return Futures.immediateFuture(null);
        }

        @Override // androidx.camera.core.CameraControl
        public ListenableFuture startFocusAndMetering(FocusMeteringAction focusMeteringAction) {
            return Futures.immediateFuture(FocusMeteringResult.emptyInstance());
        }

        @Override // androidx.camera.core.CameraControl
        public ListenableFuture setZoomRatio(float f) {
            return Futures.immediateFuture(null);
        }
    };

    void addInteropConfig(Config config);

    void addZslConfig(SessionConfig.Builder builder);

    void clearInteropConfig();

    void clearZslConfig();

    void decrementVideoUsage();

    Config getInteropConfig();

    void incrementVideoUsage();

    void setFlashMode(int i);

    void setScreenFlash(ImageCapture.ScreenFlash screenFlash);

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraControlInternal$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$setScreenFlash(CameraControlInternal cameraControlInternal, ImageCapture.ScreenFlash screenFlash) {
        }

        public static void $default$incrementVideoUsage(CameraControlInternal cameraControlInternal) {
        }

        public static void $default$decrementVideoUsage(CameraControlInternal cameraControlInternal) {
        }
    }
}
