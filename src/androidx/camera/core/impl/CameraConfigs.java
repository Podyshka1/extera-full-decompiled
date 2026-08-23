package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraConfigs {
    private static final CameraConfig DEFAULT_CAMERA_CONFIG = new DefaultCameraConfig();

    public static CameraConfig defaultConfig() {
        return DEFAULT_CAMERA_CONFIG;
    }

    public static final class DefaultCameraConfig implements CameraConfig {
        private final Identifier mIdentifier = Identifier.create(new Object());

        @Override // androidx.camera.core.impl.CameraConfig
        public Identifier getCompatibilityId() {
            return this.mIdentifier;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        public Config getConfig() {
            return OptionsBundle.emptyBundle();
        }
    }
}
