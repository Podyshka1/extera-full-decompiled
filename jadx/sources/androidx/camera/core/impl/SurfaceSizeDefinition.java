package androidx.camera.core.impl;

import android.util.Size;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SurfaceSizeDefinition {
    public abstract Size getAnalysisSize();

    public abstract Map getMaximum16x9SizeMap();

    public abstract Map getMaximum4x3SizeMap();

    public abstract Map getMaximumSizeMap();

    public abstract Size getPreviewSize();

    public abstract Size getRecordSize();

    public abstract Map getS1440pSizeMap();

    public abstract Map getS720pSizeMap();

    public abstract Map getUltraMaximumSizeMap();

    SurfaceSizeDefinition() {
    }

    public static SurfaceSizeDefinition create(Size size, Map map, Size size2, Map map2, Size size3, Map map3, Map map4, Map map5, Map map6) {
        return new AutoValue_SurfaceSizeDefinition(size, map, size2, map2, size3, map3, map4, map5, map6);
    }

    public Size getS720pSize(int i) {
        return (Size) getS720pSizeMap().get(Integer.valueOf(i));
    }

    public Size getS1440pSize(int i) {
        return (Size) getS1440pSizeMap().get(Integer.valueOf(i));
    }

    public Size getMaximumSize(int i) {
        return (Size) getMaximumSizeMap().get(Integer.valueOf(i));
    }

    public Size getMaximum4x3Size(int i) {
        return (Size) getMaximumSizeMap().get(Integer.valueOf(i));
    }

    public Size getMaximum16x9Size(int i) {
        return (Size) getMaximumSizeMap().get(Integer.valueOf(i));
    }

    public Size getUltraMaximumSize(int i) {
        return (Size) getUltraMaximumSizeMap().get(Integer.valueOf(i));
    }
}
