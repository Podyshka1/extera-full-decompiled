package androidx.camera.core.impl;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.core.impl.Config;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraConfig extends ReadableConfig {
    public static final Config.Option<UseCaseConfigFactory> OPTION_USECASE_CONFIG_FACTORY = Config.Option.create("camerax.core.camera.useCaseConfigFactory", UseCaseConfigFactory.class);
    public static final Config.Option<Identifier> OPTION_COMPATIBILITY_ID = Config.Option.create("camerax.core.camera.compatibilityId", Identifier.class);
    public static final Config.Option<Integer> OPTION_USE_CASE_COMBINATION_REQUIRED_RULE = Config.Option.create("camerax.core.camera.useCaseCombinationRequiredRule", Integer.class);
    public static final Config.Option<SessionProcessor> OPTION_SESSION_PROCESSOR = Config.Option.create("camerax.core.camera.SessionProcessor", SessionProcessor.class);
    public static final Config.Option<Boolean> OPTION_ZSL_DISABLED = Config.Option.create("camerax.core.camera.isZslDisabled", Boolean.class);
    public static final Config.Option<Boolean> OPTION_POSTVIEW_SUPPORTED = Config.Option.create("camerax.core.camera.isPostviewSupported", Boolean.class);
    public static final Config.Option<PostviewFormatSelector> OPTION_POSTVIEW_FORMAT_SELECTOR = Config.Option.create("camerax.core.camera.PostviewFormatSelector", PostviewFormatSelector.class);
    public static final Config.Option<Boolean> OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED = Config.Option.create("camerax.core.camera.isCaptureProcessProgressSupported", Boolean.class);
    public static final PostviewFormatSelector DEFAULT_POSTVIEW_FORMAT_SELECTOR = new PostviewFormatSelector() { // from class: androidx.camera.core.impl.CameraConfig$$ExternalSyntheticLambda0
    };

    public interface PostviewFormatSelector {
    }

    Identifier getCompatibilityId();

    default UseCaseConfigFactory getUseCaseConfigFactory() {
        return (UseCaseConfigFactory) retrieveOption(OPTION_USECASE_CONFIG_FACTORY, UseCaseConfigFactory.EMPTY_INSTANCE);
    }

    default int getUseCaseCombinationRequiredRule() {
        return ((Integer) retrieveOption(OPTION_USE_CASE_COMBINATION_REQUIRED_RULE, 0)).intValue();
    }

    default SessionProcessor getSessionProcessor(SessionProcessor sessionProcessor) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(retrieveOption(OPTION_SESSION_PROCESSOR, sessionProcessor));
        return null;
    }

    default boolean isPostviewSupported() {
        return ((Boolean) retrieveOption(OPTION_POSTVIEW_SUPPORTED, Boolean.FALSE)).booleanValue();
    }

    default boolean isCaptureProcessProgressSupported() {
        return ((Boolean) retrieveOption(OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED, Boolean.FALSE)).booleanValue();
    }
}
