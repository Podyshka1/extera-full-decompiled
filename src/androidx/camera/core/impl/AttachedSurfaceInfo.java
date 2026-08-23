package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AttachedSurfaceInfo {
    public abstract List<UseCaseConfigFactory.CaptureType> getCaptureTypes();

    public abstract int getCustomMaxFrameRate();

    public abstract DynamicRange getDynamicRange();

    public abstract int getImageFormat();

    public abstract Config getImplementationOptions();

    public abstract int getSessionType();

    public abstract Size getSize();

    public abstract SurfaceConfig getSurfaceConfig();

    public abstract Range<Integer> getTargetFrameRate();

    public abstract boolean isStrictFrameRateRequired();

    public static AttachedSurfaceInfo create(SurfaceConfig surfaceConfig, int i, Size size, DynamicRange dynamicRange, List<UseCaseConfigFactory.CaptureType> list, Config config, int i2, Range<Integer> range, boolean z, int i3) {
        return new AutoValue_AttachedSurfaceInfo(surfaceConfig, i, size, dynamicRange, list, config, i2, range, z, i3);
    }

    public StreamSpec toStreamSpec(Config config) {
        return StreamSpec.builder(getSize()).setSessionType(getSessionType()).setExpectedFrameRateRange(getTargetFrameRate()).setDynamicRange(getDynamicRange()).setImplementationOptions(config).build();
    }
}
