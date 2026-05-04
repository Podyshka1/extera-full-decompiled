package androidx.camera.camera2.interop;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.Config;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2CaptureRequestConfiguratorKt {
    private static final Config.Option OPTION_CAPTURE_REQUEST_CONFIGURATOR;

    static {
        Config.Option optionCreate = Config.Option.create("camerax.core.appConfig.captureRequestConfigurator", Camera2CaptureRequestConfigurator.class);
        Intrinsics.checkNotNullExpressionValue(optionCreate, "create(...)");
        OPTION_CAPTURE_REQUEST_CONFIGURATOR = optionCreate;
    }

    public static final Camera2CaptureRequestConfigurator getCamera2CaptureRequestConfigurator(CameraXConfig cameraXConfig) {
        Intrinsics.checkNotNullParameter(cameraXConfig, "<this>");
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(cameraXConfig.getConfig().retrieveOption(OPTION_CAPTURE_REQUEST_CONFIGURATOR, null));
        return null;
    }
}
