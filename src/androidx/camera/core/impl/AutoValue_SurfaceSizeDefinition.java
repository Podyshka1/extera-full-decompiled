package androidx.camera.core.impl;

import android.util.Size;
import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_SurfaceSizeDefinition extends SurfaceSizeDefinition {
    private final Size analysisSize;
    private final Map<Integer, Size> maximum16x9SizeMap;
    private final Map<Integer, Size> maximum4x3SizeMap;
    private final Map<Integer, Size> maximumSizeMap;
    private final Size previewSize;
    private final Size recordSize;
    private final Map<Integer, Size> s1440pSizeMap;
    private final Map<Integer, Size> s720pSizeMap;
    private final Map<Integer, Size> ultraMaximumSizeMap;

    public AutoValue_SurfaceSizeDefinition(Size size, Map<Integer, Size> map, Size size2, Map<Integer, Size> map2, Size size3, Map<Integer, Size> map3, Map<Integer, Size> map4, Map<Integer, Size> map5, Map<Integer, Size> map6) {
        if (size == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null analysisSize");
            throw null;
        }
        this.analysisSize = size;
        if (map == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null s720pSizeMap");
            throw null;
        }
        this.s720pSizeMap = map;
        if (size2 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null previewSize");
            throw null;
        }
        this.previewSize = size2;
        if (map2 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null s1440pSizeMap");
            throw null;
        }
        this.s1440pSizeMap = map2;
        if (size3 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null recordSize");
            throw null;
        }
        this.recordSize = size3;
        if (map3 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null maximumSizeMap");
            throw null;
        }
        this.maximumSizeMap = map3;
        if (map4 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null maximum4x3SizeMap");
            throw null;
        }
        this.maximum4x3SizeMap = map4;
        if (map5 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null maximum16x9SizeMap");
            throw null;
        }
        this.maximum16x9SizeMap = map5;
        if (map6 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null ultraMaximumSizeMap");
            throw null;
        }
        this.ultraMaximumSizeMap = map6;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Size getAnalysisSize() {
        return this.analysisSize;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Map<Integer, Size> getS720pSizeMap() {
        return this.s720pSizeMap;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Size getPreviewSize() {
        return this.previewSize;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Map<Integer, Size> getS1440pSizeMap() {
        return this.s1440pSizeMap;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Size getRecordSize() {
        return this.recordSize;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Map<Integer, Size> getMaximumSizeMap() {
        return this.maximumSizeMap;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Map<Integer, Size> getMaximum4x3SizeMap() {
        return this.maximum4x3SizeMap;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Map<Integer, Size> getMaximum16x9SizeMap() {
        return this.maximum16x9SizeMap;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public Map<Integer, Size> getUltraMaximumSizeMap() {
        return this.ultraMaximumSizeMap;
    }

    public String toString() {
        return "SurfaceSizeDefinition{analysisSize=" + this.analysisSize + ", s720pSizeMap=" + this.s720pSizeMap + ", previewSize=" + this.previewSize + ", s1440pSizeMap=" + this.s1440pSizeMap + ", recordSize=" + this.recordSize + ", maximumSizeMap=" + this.maximumSizeMap + ", maximum4x3SizeMap=" + this.maximum4x3SizeMap + ", maximum16x9SizeMap=" + this.maximum16x9SizeMap + ", ultraMaximumSizeMap=" + this.ultraMaximumSizeMap + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SurfaceSizeDefinition) {
            SurfaceSizeDefinition surfaceSizeDefinition = (SurfaceSizeDefinition) obj;
            if (this.analysisSize.equals(surfaceSizeDefinition.getAnalysisSize()) && this.s720pSizeMap.equals(surfaceSizeDefinition.getS720pSizeMap()) && this.previewSize.equals(surfaceSizeDefinition.getPreviewSize()) && this.s1440pSizeMap.equals(surfaceSizeDefinition.getS1440pSizeMap()) && this.recordSize.equals(surfaceSizeDefinition.getRecordSize()) && this.maximumSizeMap.equals(surfaceSizeDefinition.getMaximumSizeMap()) && this.maximum4x3SizeMap.equals(surfaceSizeDefinition.getMaximum4x3SizeMap()) && this.maximum16x9SizeMap.equals(surfaceSizeDefinition.getMaximum16x9SizeMap()) && this.ultraMaximumSizeMap.equals(surfaceSizeDefinition.getUltraMaximumSizeMap())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.ultraMaximumSizeMap.hashCode() ^ ((((((((((((((((this.analysisSize.hashCode() ^ 1000003) * 1000003) ^ this.s720pSizeMap.hashCode()) * 1000003) ^ this.previewSize.hashCode()) * 1000003) ^ this.s1440pSizeMap.hashCode()) * 1000003) ^ this.recordSize.hashCode()) * 1000003) ^ this.maximumSizeMap.hashCode()) * 1000003) ^ this.maximum4x3SizeMap.hashCode()) * 1000003) ^ this.maximum16x9SizeMap.hashCode()) * 1000003);
    }
}
