package androidx.camera.core.impl;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.SessionConfig;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_SessionConfig_OutputConfig extends SessionConfig.OutputConfig {
    private final DynamicRange dynamicRange;
    private final int mirrorMode;
    private final String physicalCameraId;
    private final List<DeferrableSurface> sharedSurfaces;
    private final DeferrableSurface surface;
    private final int surfaceGroupId;

    private AutoValue_SessionConfig_OutputConfig(DeferrableSurface deferrableSurface, List<DeferrableSurface> list, String str, int i, int i2, DynamicRange dynamicRange) {
        this.surface = deferrableSurface;
        this.sharedSurfaces = list;
        this.physicalCameraId = str;
        this.mirrorMode = i;
        this.surfaceGroupId = i2;
        this.dynamicRange = dynamicRange;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public DeferrableSurface getSurface() {
        return this.surface;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public List<DeferrableSurface> getSharedSurfaces() {
        return this.sharedSurfaces;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public String getPhysicalCameraId() {
        return this.physicalCameraId;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public int getMirrorMode() {
        return this.mirrorMode;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public int getSurfaceGroupId() {
        return this.surfaceGroupId;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public DynamicRange getDynamicRange() {
        return this.dynamicRange;
    }

    public String toString() {
        return "OutputConfig{surface=" + this.surface + ", sharedSurfaces=" + this.sharedSurfaces + ", physicalCameraId=" + this.physicalCameraId + ", mirrorMode=" + this.mirrorMode + ", surfaceGroupId=" + this.surfaceGroupId + ", dynamicRange=" + this.dynamicRange + "}";
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof SessionConfig.OutputConfig) {
            SessionConfig.OutputConfig outputConfig = (SessionConfig.OutputConfig) obj;
            if (this.surface.equals(outputConfig.getSurface()) && this.sharedSurfaces.equals(outputConfig.getSharedSurfaces()) && ((str = this.physicalCameraId) != null ? str.equals(outputConfig.getPhysicalCameraId()) : outputConfig.getPhysicalCameraId() == null) && this.mirrorMode == outputConfig.getMirrorMode() && this.surfaceGroupId == outputConfig.getSurfaceGroupId() && this.dynamicRange.equals(outputConfig.getDynamicRange())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (((this.surface.hashCode() ^ 1000003) * 1000003) ^ this.sharedSurfaces.hashCode()) * 1000003;
        String str = this.physicalCameraId;
        return this.dynamicRange.hashCode() ^ ((((((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.mirrorMode) * 1000003) ^ this.surfaceGroupId) * 1000003);
    }

    public static final class Builder extends SessionConfig.OutputConfig.Builder {
        private DynamicRange dynamicRange;
        private Integer mirrorMode;
        private String physicalCameraId;
        private List<DeferrableSurface> sharedSurfaces;
        private DeferrableSurface surface;
        private Integer surfaceGroupId;

        public SessionConfig.OutputConfig.Builder setSurface(DeferrableSurface deferrableSurface) {
            if (deferrableSurface == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null surface");
                return null;
            }
            this.surface = deferrableSurface;
            return this;
        }

        @Override // androidx.camera.core.impl.SessionConfig.OutputConfig.Builder
        public SessionConfig.OutputConfig.Builder setSharedSurfaces(List<DeferrableSurface> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null sharedSurfaces");
                return null;
            }
            this.sharedSurfaces = list;
            return this;
        }

        @Override // androidx.camera.core.impl.SessionConfig.OutputConfig.Builder
        public SessionConfig.OutputConfig.Builder setPhysicalCameraId(String str) {
            this.physicalCameraId = str;
            return this;
        }

        @Override // androidx.camera.core.impl.SessionConfig.OutputConfig.Builder
        public SessionConfig.OutputConfig.Builder setMirrorMode(int i) {
            this.mirrorMode = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.core.impl.SessionConfig.OutputConfig.Builder
        public SessionConfig.OutputConfig.Builder setSurfaceGroupId(int i) {
            this.surfaceGroupId = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.core.impl.SessionConfig.OutputConfig.Builder
        public SessionConfig.OutputConfig.Builder setDynamicRange(DynamicRange dynamicRange) {
            if (dynamicRange == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null dynamicRange");
                return null;
            }
            this.dynamicRange = dynamicRange;
            return this;
        }

        @Override // androidx.camera.core.impl.SessionConfig.OutputConfig.Builder
        public SessionConfig.OutputConfig build() {
            String strConcat;
            if (this.surface != null) {
                strConcat = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                strConcat = " surface";
            }
            if (this.sharedSurfaces == null) {
                strConcat = strConcat.concat(" sharedSurfaces");
            }
            if (this.mirrorMode == null) {
                strConcat = strConcat.concat(" mirrorMode");
            }
            if (this.surfaceGroupId == null) {
                strConcat = strConcat.concat(" surfaceGroupId");
            }
            if (this.dynamicRange == null) {
                strConcat = strConcat.concat(" dynamicRange");
            }
            if (!strConcat.isEmpty()) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(strConcat));
                return null;
            }
            return new AutoValue_SessionConfig_OutputConfig(this.surface, this.sharedSurfaces, this.physicalCameraId, this.mirrorMode.intValue(), this.surfaceGroupId.intValue(), this.dynamicRange);
        }
    }
}
