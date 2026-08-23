package androidx.camera.core.impl;

import android.content.Context;
import android.util.Size;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraDeviceSurfaceManager extends InternalCameraPresenceListener {

    public interface Provider {
        CameraDeviceSurfaceManager newInstance(Context context, Object obj, Set set);
    }

    SurfaceStreamSpecQueryResult getSuggestedStreamSpecs(int i, String str, List list, Map map, VideoStabilization videoStabilization, boolean z, boolean z2, boolean z3);

    SurfaceConfig transformSurfaceConfig(int i, String str, int i2, Size size, StreamUseCase streamUseCase);
}
