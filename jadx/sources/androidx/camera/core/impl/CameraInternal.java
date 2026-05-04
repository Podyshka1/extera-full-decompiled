package androidx.camera.core.impl;

import androidx.camera.core.Camera;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraInternal extends Camera, UseCase.StateChangeCallback {
    void attachUseCases(Collection collection);

    void detachUseCases(Collection collection);

    CameraControlInternal getCameraControlInternal();

    @Override // androidx.camera.core.Camera
    CameraInfo getCameraInfo();

    CameraInfoInternal getCameraInfoInternal();

    CameraConfig getExtendedConfig();

    boolean getHasTransform();

    boolean isFrontFacing();

    boolean isRemoved();

    void onRemoved();

    ListenableFuture release();

    void setActiveResumingMode(boolean z);

    void setExtendedConfig(CameraConfig cameraConfig);

    void setPrimary(boolean z);

    public enum State {
        RELEASED(false),
        RELEASING(true),
        CLOSED(false),
        PENDING_OPEN(false),
        CLOSING(true),
        OPENING(true),
        OPEN(true),
        CONFIGURED(true);

        private final boolean mHoldsCameraSlot;

        State(boolean z) {
            this.mHoldsCameraSlot = z;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraInternal$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$setActiveResumingMode(CameraInternal cameraInternal, boolean z) {
        }

        public static boolean $default$isFrontFacing(CameraInternal cameraInternal) {
            return cameraInternal.getCameraInfo().getLensFacing() == 0;
        }

        public static void $default$onRemoved(CameraInternal cameraInternal) {
        }

        public static boolean $default$isRemoved(CameraInternal cameraInternal) {
            return false;
        }

        public static boolean $default$getHasTransform(CameraInternal cameraInternal) {
            return true;
        }

        public static void $default$setPrimary(CameraInternal cameraInternal, boolean z) {
        }

        public static void $default$setExtendedConfig(CameraInternal cameraInternal, CameraConfig cameraConfig) {
        }
    }
}
