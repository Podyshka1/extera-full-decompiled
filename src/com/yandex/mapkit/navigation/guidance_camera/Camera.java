package com.yandex.mapkit.navigation.guidance_camera;

import com.yandex.mapkit.Animation;
import com.yandex.mapkit.ScreenRect;
import com.yandex.mapkit.geometry.Point;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Camera {
    void addListener(CameraListener cameraListener);

    CameraMode cameraMode();

    boolean isSwitchModesAutomatically();

    boolean isValid();

    void removeListener(CameraListener cameraListener);

    void setAutoRotation(boolean z, Animation animation);

    void setAutoZoom(boolean z, Animation animation);

    void setCameraMode(CameraMode cameraMode, Animation animation);

    void setExtraOverviewPoints(List<Point> list);

    void setFollowingModeZoomOffset(float f, Animation animation);

    void setOverviewRect(ScreenRect screenRect, Animation animation);

    void setSwitchModesAutomatically(boolean z);
}
