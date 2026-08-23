package com.yandex.mapkit.navigation.guidance_camera.internal;

import com.yandex.mapkit.Animation;
import com.yandex.mapkit.ScreenRect;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.navigation.guidance_camera.Camera;
import com.yandex.mapkit.navigation.guidance_camera.CameraListener;
import com.yandex.mapkit.navigation.guidance_camera.CameraMode;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CameraBinding implements Camera {
    protected Subscription<CameraListener> cameraListenerSubscription = new Subscription<CameraListener>() { // from class: com.yandex.mapkit.navigation.guidance_camera.internal.CameraBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(CameraListener cameraListener) {
            return CameraBinding.createCameraListener(cameraListener);
        }
    };
    private final NativeObject nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createCameraListener(CameraListener cameraListener);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void addListener(CameraListener cameraListener);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native CameraMode cameraMode();

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native boolean isSwitchModesAutomatically();

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native boolean isValid();

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void removeListener(CameraListener cameraListener);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void setAutoRotation(boolean z, Animation animation);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void setAutoZoom(boolean z, Animation animation);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void setCameraMode(CameraMode cameraMode, Animation animation);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void setExtraOverviewPoints(List<Point> list);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void setFollowingModeZoomOffset(float f, Animation animation);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void setOverviewRect(ScreenRect screenRect, Animation animation);

    @Override // com.yandex.mapkit.navigation.guidance_camera.Camera
    public native void setSwitchModesAutomatically(boolean z);

    public CameraBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
