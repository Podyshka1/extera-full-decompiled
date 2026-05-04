package androidx.camera.core.processing.util;

import androidx.camera.core.processing.util.GraphicDeviceInfo;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_GraphicDeviceInfo extends GraphicDeviceInfo {
    private final String eglExtensions;
    private final String eglVersion;
    private final String glExtensions;
    private final String glVersion;

    private AutoValue_GraphicDeviceInfo(String str, String str2, String str3, String str4) {
        this.glVersion = str;
        this.eglVersion = str2;
        this.glExtensions = str3;
        this.eglExtensions = str4;
    }

    @Override // androidx.camera.core.processing.util.GraphicDeviceInfo
    public String getGlVersion() {
        return this.glVersion;
    }

    @Override // androidx.camera.core.processing.util.GraphicDeviceInfo
    public String getEglVersion() {
        return this.eglVersion;
    }

    @Override // androidx.camera.core.processing.util.GraphicDeviceInfo
    public String getGlExtensions() {
        return this.glExtensions;
    }

    @Override // androidx.camera.core.processing.util.GraphicDeviceInfo
    public String getEglExtensions() {
        return this.eglExtensions;
    }

    public String toString() {
        return "GraphicDeviceInfo{glVersion=" + this.glVersion + ", eglVersion=" + this.eglVersion + ", glExtensions=" + this.glExtensions + ", eglExtensions=" + this.eglExtensions + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof GraphicDeviceInfo) {
            GraphicDeviceInfo graphicDeviceInfo = (GraphicDeviceInfo) obj;
            if (this.glVersion.equals(graphicDeviceInfo.getGlVersion()) && this.eglVersion.equals(graphicDeviceInfo.getEglVersion()) && this.glExtensions.equals(graphicDeviceInfo.getGlExtensions()) && this.eglExtensions.equals(graphicDeviceInfo.getEglExtensions())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.glVersion.hashCode() ^ 1000003) * 1000003) ^ this.eglVersion.hashCode()) * 1000003) ^ this.glExtensions.hashCode()) * 1000003) ^ this.eglExtensions.hashCode();
    }

    static final class Builder extends GraphicDeviceInfo.Builder {
        private String eglExtensions;
        private String eglVersion;
        private String glExtensions;
        private String glVersion;

        Builder() {
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public GraphicDeviceInfo.Builder setGlVersion(String str) {
            if (str == null) {
                throw new NullPointerException("Null glVersion");
            }
            this.glVersion = str;
            return this;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public GraphicDeviceInfo.Builder setEglVersion(String str) {
            if (str == null) {
                throw new NullPointerException("Null eglVersion");
            }
            this.eglVersion = str;
            return this;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public GraphicDeviceInfo.Builder setGlExtensions(String str) {
            if (str == null) {
                throw new NullPointerException("Null glExtensions");
            }
            this.glExtensions = str;
            return this;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public GraphicDeviceInfo.Builder setEglExtensions(String str) {
            if (str == null) {
                throw new NullPointerException("Null eglExtensions");
            }
            this.eglExtensions = str;
            return this;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public GraphicDeviceInfo build() {
            String str = this.glVersion;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (str == null) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET + " glVersion";
            }
            if (this.eglVersion == null) {
                str2 = str2 + " eglVersion";
            }
            if (this.glExtensions == null) {
                str2 = str2 + " glExtensions";
            }
            if (this.eglExtensions == null) {
                str2 = str2 + " eglExtensions";
            }
            if (!str2.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str2);
            }
            return new AutoValue_GraphicDeviceInfo(this.glVersion, this.eglVersion, this.glExtensions, this.eglExtensions);
        }
    }
}
