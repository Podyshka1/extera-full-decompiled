package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AttachedSurfaceInfo {
    public abstract List getCaptureTypes();

    public abstract int getCustomMaxFrameRate();

    public abstract DynamicRange getDynamicRange();

    public abstract int getImageFormat();

    public abstract Config getImplementationOptions();

    public abstract int getSessionType();

    public abstract Size getSize();

    public abstract SurfaceConfig getSurfaceConfig();

    public abstract Range getTargetFrameRate();

    public abstract boolean isStrictFrameRateRequired();

    AttachedSurfaceInfo() {
    }

    public static AttachedSurfaceInfo create(SurfaceConfig surfaceConfig, int i, Size size, DynamicRange dynamicRange, List list, Config config, int i2, Range range, boolean z, int i3) {
        return new AutoValue_AttachedSurfaceInfo(surfaceConfig, i, size, dynamicRange, list, config, i2, range, z, i3);
    }

    public StreamSpec toStreamSpec(Config config) {
        return StreamSpec.builder(getSize()).setSessionType(getSessionType()).setExpectedFrameRateRange(getTargetFrameRate()).setDynamicRange(getDynamicRange()).setImplementationOptions(config).build();
    }
}
