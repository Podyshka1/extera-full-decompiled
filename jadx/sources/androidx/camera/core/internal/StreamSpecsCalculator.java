package androidx.camera.core.internal;

import android.util.Range;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraInfoInternal;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface StreamSpecsCalculator {
    StreamSpecQueryResult calculateSuggestedStreamSpecs(int i, CameraInfoInternal cameraInfoInternal, List list, List list2, CameraConfig cameraConfig, int i2, Range range, boolean z, boolean z2);

    void setCameraDeviceSurfaceManager(CameraDeviceSurfaceManager cameraDeviceSurfaceManager);
}
