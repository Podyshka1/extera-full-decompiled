package androidx.camera.core;

import android.os.Handler;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.TargetConfig;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraXConfig implements TargetConfig {
    private final OptionsBundle mConfig;
    static final Config.Option OPTION_CAMERA_FACTORY_PROVIDER = Config.Option.create("camerax.core.appConfig.cameraFactoryProvider", CameraFactory.Provider.class);
    static final Config.Option OPTION_DEVICE_SURFACE_MANAGER_PROVIDER = Config.Option.create("camerax.core.appConfig.deviceSurfaceManagerProvider", CameraDeviceSurfaceManager.Provider.class);
    static final Config.Option OPTION_USECASE_CONFIG_FACTORY_PROVIDER = Config.Option.create("camerax.core.appConfig.useCaseConfigFactoryProvider", UseCaseConfigFactory.Provider.class);
    static final Config.Option OPTION_CAMERA_EXECUTOR = Config.Option.create("camerax.core.appConfig.cameraExecutor", Executor.class);
    static final Config.Option OPTION_SCHEDULER_HANDLER = Config.Option.create("camerax.core.appConfig.schedulerHandler", Handler.class);
    static final Config.Option OPTION_MIN_LOGGING_LEVEL = Config.Option.create("camerax.core.appConfig.minimumLoggingLevel", Integer.TYPE);
    static final Config.Option OPTION_AVAILABLE_CAMERAS_LIMITER = Config.Option.create("camerax.core.appConfig.availableCamerasLimiter", CameraSelector.class);
    static final Config.Option OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING = Config.Option.create("camerax.core.appConfig.cameraOpenRetryMaxTimeoutInMillisWhileResuming", Long.TYPE);
    static final Config.Option OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY = Config.Option.create("camerax.core.appConfig.cameraProviderInitRetryPolicy", RetryPolicy.class);
    static final Config.Option OPTION_QUIRK_SETTINGS = Config.Option.create("camerax.core.appConfig.quirksSettings", QuirkSettings.class);
    static final Config.Option OPTION_REPEATING_STREAM_FORCED = Config.Option.create("camerax.core.appConfig.repeatingStreamForced", Boolean.TYPE);

    public interface Provider {
        CameraXConfig getCameraXConfig();
    }

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

    @Override // androidx.camera.core.internal.TargetConfig
    public /* synthetic */ String getTargetName() {
        return TargetConfig.CC.$default$getTargetName(this);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public /* synthetic */ String getTargetName(String str) {
        return TargetConfig.CC.$default$getTargetName(this, str);
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

    CameraXConfig(OptionsBundle optionsBundle) {
        this.mConfig = optionsBundle;
    }

    public CameraFactory.Provider getCameraFactoryProvider(CameraFactory.Provider provider) {
        return (CameraFactory.Provider) this.mConfig.retrieveOption(OPTION_CAMERA_FACTORY_PROVIDER, provider);
    }

    public CameraDeviceSurfaceManager.Provider getDeviceSurfaceManagerProvider(CameraDeviceSurfaceManager.Provider provider) {
        return (CameraDeviceSurfaceManager.Provider) this.mConfig.retrieveOption(OPTION_DEVICE_SURFACE_MANAGER_PROVIDER, provider);
    }

    public UseCaseConfigFactory.Provider getUseCaseConfigFactoryProvider(UseCaseConfigFactory.Provider provider) {
        return (UseCaseConfigFactory.Provider) this.mConfig.retrieveOption(OPTION_USECASE_CONFIG_FACTORY_PROVIDER, provider);
    }

    public Executor getCameraExecutor(Executor executor) {
        return (Executor) this.mConfig.retrieveOption(OPTION_CAMERA_EXECUTOR, executor);
    }

    public Handler getSchedulerHandler(Handler handler) {
        return (Handler) this.mConfig.retrieveOption(OPTION_SCHEDULER_HANDLER, handler);
    }

    public CameraSelector getAvailableCamerasLimiter(CameraSelector cameraSelector) {
        return (CameraSelector) this.mConfig.retrieveOption(OPTION_AVAILABLE_CAMERAS_LIMITER, cameraSelector);
    }

    public long getCameraOpenRetryMaxTimeoutInMillisWhileResuming() {
        return ((Long) this.mConfig.retrieveOption(OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING, -1L)).longValue();
    }

    public RetryPolicy getCameraProviderInitRetryPolicy() {
        RetryPolicy retryPolicy = (RetryPolicy) this.mConfig.retrieveOption(OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY, RetryPolicy.DEFAULT);
        Objects.requireNonNull(retryPolicy);
        return retryPolicy;
    }

    public boolean isRepeatingStreamForced() {
        return ((Boolean) this.mConfig.retrieveOption(OPTION_REPEATING_STREAM_FORCED, Boolean.TRUE)).booleanValue();
    }

    public QuirkSettings getQuirkSettings() {
        return (QuirkSettings) this.mConfig.retrieveOption(OPTION_QUIRK_SETTINGS, null);
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public Config getConfig() {
        return this.mConfig;
    }

    public static final class Builder {
        private final MutableOptionsBundle mMutableConfig;

        public Builder() {
            this(MutableOptionsBundle.create());
        }

        private Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.mMutableConfig = mutableOptionsBundle;
            Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
            if (cls != null && !cls.equals(CameraX.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            setTargetClass(CameraX.class);
        }

        public Builder setCameraFactoryProvider(CameraFactory.Provider provider) {
            getMutableConfig().insertOption(CameraXConfig.OPTION_CAMERA_FACTORY_PROVIDER, provider);
            return this;
        }

        public Builder setDeviceSurfaceManagerProvider(CameraDeviceSurfaceManager.Provider provider) {
            getMutableConfig().insertOption(CameraXConfig.OPTION_DEVICE_SURFACE_MANAGER_PROVIDER, provider);
            return this;
        }

        public Builder setUseCaseConfigFactoryProvider(UseCaseConfigFactory.Provider provider) {
            getMutableConfig().insertOption(CameraXConfig.OPTION_USECASE_CONFIG_FACTORY_PROVIDER, provider);
            return this;
        }

        public Builder setRepeatingStreamForced(boolean z) {
            getMutableConfig().insertOption(CameraXConfig.OPTION_REPEATING_STREAM_FORCED, Boolean.valueOf(z));
            return this;
        }

        public MutableConfig getMutableConfig() {
            return this.mMutableConfig;
        }

        public CameraXConfig build() {
            return new CameraXConfig(OptionsBundle.from(this.mMutableConfig));
        }

        public Builder setTargetClass(Class cls) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_CLASS, cls);
            if (getMutableConfig().retrieveOption(TargetConfig.OPTION_TARGET_NAME, null) == null) {
                setTargetName(cls.getCanonicalName() + "-" + UUID.randomUUID());
            }
            return this;
        }

        public Builder setTargetName(String str) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_NAME, str);
            return this;
        }
    }
}
