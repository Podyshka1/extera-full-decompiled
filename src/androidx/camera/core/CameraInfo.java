package androidx.camera.core;

import android.util.Range;
import androidx.view.LiveData;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraInfo {
    CameraIdentifier getCameraIdentifier();

    LiveData<CameraState> getCameraState();

    float getIntrinsicZoomRatio();

    int getLensFacing();

    Set<CameraInfo> getPhysicalCameraInfos();

    int getSensorRotationDegrees();

    int getSensorRotationDegrees(int i);

    Set<Range<Integer>> getSupportedFrameRateRanges();

    LiveData<ZoomState> getZoomState();

    boolean hasFlashUnit();

    default boolean isSessionConfigSupported(SessionConfig sessionConfig) {
        return false;
    }

    default Set<Range<Integer>> getSupportedFrameRateRanges(SessionConfig sessionConfig) {
        return Collections.EMPTY_SET;
    }
}
