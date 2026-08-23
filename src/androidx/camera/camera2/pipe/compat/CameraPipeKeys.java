package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraPipeKeys {
    public static final CameraPipeKeys INSTANCE = new CameraPipeKeys();
    private static final Metadata.Key camera2CaptureRequestTag;
    private static final Metadata.Key camera2ExtensionMode;
    private static final Metadata.Key ignore3ARequiredParameters;

    private CameraPipeKeys() {
    }

    public final Metadata.Key getCamera2ExtensionMode() {
        return camera2ExtensionMode;
    }

    static {
        Metadata.Key.Companion companion = Metadata.Key.Companion;
        camera2ExtensionMode = companion.create("androidx.camera.camera2.pipe.extensionMode", Reflection.getOrCreateKotlinClass(Integer.class));
        camera2CaptureRequestTag = companion.create("androidx.camera.camera2.pipe.captureRequestTag", Reflection.getOrCreateKotlinClass(Object.class));
        ignore3ARequiredParameters = companion.create("androidx.camera.camera2.pipe.ignore3ARequiredParameters", Reflection.getOrCreateKotlinClass(Boolean.class));
    }

    public final Metadata.Key getCamera2CaptureRequestTag() {
        return camera2CaptureRequestTag;
    }

    public final Metadata.Key getIgnore3ARequiredParameters() {
        return ignore3ARequiredParameters;
    }
}
