package androidx.camera.core.impl;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.core.impl.Config;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraConfig extends ReadableConfig {
    public static final Config.Option OPTION_USECASE_CONFIG_FACTORY = Config.Option.create("camerax.core.camera.useCaseConfigFactory", UseCaseConfigFactory.class);
    public static final Config.Option OPTION_COMPATIBILITY_ID = Config.Option.create("camerax.core.camera.compatibilityId", Identifier.class);
    public static final Config.Option OPTION_USE_CASE_COMBINATION_REQUIRED_RULE = Config.Option.create("camerax.core.camera.useCaseCombinationRequiredRule", Integer.class);
    public static final Config.Option OPTION_SESSION_PROCESSOR = Config.Option.create("camerax.core.camera.SessionProcessor", SessionProcessor.class);
    public static final Config.Option OPTION_ZSL_DISABLED = Config.Option.create("camerax.core.camera.isZslDisabled", Boolean.class);
    public static final Config.Option OPTION_POSTVIEW_SUPPORTED = Config.Option.create("camerax.core.camera.isPostviewSupported", Boolean.class);
    public static final Config.Option OPTION_POSTVIEW_FORMAT_SELECTOR = Config.Option.create("camerax.core.camera.PostviewFormatSelector", PostviewFormatSelector.class);
    public static final Config.Option OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED = Config.Option.create("camerax.core.camera.isCaptureProcessProgressSupported", Boolean.class);
    public static final PostviewFormatSelector DEFAULT_POSTVIEW_FORMAT_SELECTOR = new PostviewFormatSelector() { // from class: androidx.camera.core.impl.CameraConfig$$ExternalSyntheticLambda0
    };

    public interface PostviewFormatSelector {
    }

    Identifier getCompatibilityId();

    SessionProcessor getSessionProcessor(SessionProcessor sessionProcessor);

    int getUseCaseCombinationRequiredRule();

    UseCaseConfigFactory getUseCaseConfigFactory();

    boolean isCaptureProcessProgressSupported();

    boolean isPostviewSupported();

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraConfig$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Config.Option option = CameraConfig.OPTION_USECASE_CONFIG_FACTORY;
        }

        public static UseCaseConfigFactory $default$getUseCaseConfigFactory(CameraConfig cameraConfig) {
            return (UseCaseConfigFactory) cameraConfig.retrieveOption(CameraConfig.OPTION_USECASE_CONFIG_FACTORY, UseCaseConfigFactory.EMPTY_INSTANCE);
        }

        public static SessionProcessor $default$getSessionProcessor(CameraConfig cameraConfig, SessionProcessor sessionProcessor) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(cameraConfig.retrieveOption(CameraConfig.OPTION_SESSION_PROCESSOR, sessionProcessor));
            return null;
        }
    }
}
