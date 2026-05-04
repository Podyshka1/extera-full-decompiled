package androidx.camera.core.processing.util;

import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.SurfaceEdge;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OutConfig {
    public abstract Rect getCropRect();

    public abstract int getFormat();

    public abstract int getRotationDegrees();

    public abstract Size getSize();

    public abstract int getTargets();

    abstract UUID getUuid();

    public abstract boolean isMirroring();

    public abstract boolean shouldRespectInputCropRect();

    /* JADX INFO: renamed from: of */
    public static OutConfig m103of(SurfaceEdge surfaceEdge) {
        return m101of(surfaceEdge.getTargets(), surfaceEdge.getFormat(), surfaceEdge.getCropRect(), TransformUtils.getRotatedSize(surfaceEdge.getCropRect(), surfaceEdge.getRotationDegrees()), surfaceEdge.getRotationDegrees(), surfaceEdge.isMirroring());
    }

    /* JADX INFO: renamed from: of */
    public static OutConfig m101of(int i, int i2, Rect rect, Size size, int i3, boolean z) {
        return m102of(i, i2, rect, size, i3, z, false);
    }

    /* JADX INFO: renamed from: of */
    public static OutConfig m102of(int i, int i2, Rect rect, Size size, int i3, boolean z, boolean z2) {
        return new AutoValue_OutConfig(UUID.randomUUID(), i, i2, rect, size, i3, z, z2);
    }
}
