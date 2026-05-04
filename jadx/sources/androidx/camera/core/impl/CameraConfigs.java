package androidx.camera.core.impl;

import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.Config;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CameraConfigs {
    private static final CameraConfig DEFAULT_CAMERA_CONFIG = new DefaultCameraConfig();

    public static CameraConfig defaultConfig() {
        return DEFAULT_CAMERA_CONFIG;
    }

    static final class DefaultCameraConfig implements CameraConfig {
        private final Identifier mIdentifier = Identifier.create(new Object());

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public /* synthetic */ boolean containsOption(Config.Option option) {
            return getConfig().containsOption(option);
        }

        @Override // androidx.camera.core.impl.Config
        public /* synthetic */ void findOptions(String str, Config.OptionMatcher optionMatcher) {
            getConfig().findOptions(str, optionMatcher);
        }

        @Override // androidx.camera.core.impl.Config
        public /* synthetic */ Config.OptionPriority getOptionPriority(Config.Option option) {
            return getConfig().getOptionPriority(option);
        }

        @Override // androidx.camera.core.impl.Config
        public /* synthetic */ Set getPriorities(Config.Option option) {
            return getConfig().getPriorities(option);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public /* synthetic */ SessionProcessor getSessionProcessor(SessionProcessor sessionProcessor) {
            CameraConfig.CC.$default$getSessionProcessor(this, sessionProcessor);
            return null;
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public /* synthetic */ int getUseCaseCombinationRequiredRule() {
            return ((Integer) retrieveOption(CameraConfig.OPTION_USE_CASE_COMBINATION_REQUIRED_RULE, 0)).intValue();
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public /* synthetic */ UseCaseConfigFactory getUseCaseConfigFactory() {
            return CameraConfig.CC.$default$getUseCaseConfigFactory(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public /* synthetic */ boolean isCaptureProcessProgressSupported() {
            return ((Boolean) retrieveOption(CameraConfig.OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED, Boolean.FALSE)).booleanValue();
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public /* synthetic */ boolean isPostviewSupported() {
            return ((Boolean) retrieveOption(CameraConfig.OPTION_POSTVIEW_SUPPORTED, Boolean.FALSE)).booleanValue();
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public /* synthetic */ Set listOptions() {
            return getConfig().listOptions();
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public /* synthetic */ Object retrieveOption(Config.Option option) {
            return getConfig().retrieveOption(option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public /* synthetic */ Object retrieveOption(Config.Option option, Object obj) {
            return getConfig().retrieveOption(option, obj);
        }

        @Override // androidx.camera.core.impl.Config
        public /* synthetic */ Object retrieveOptionWithPriority(Config.Option option, Config.OptionPriority optionPriority) {
            return getConfig().retrieveOptionWithPriority(option, optionPriority);
        }

        DefaultCameraConfig() {
        }

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
