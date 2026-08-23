package androidx.camera.camera2.interop;

import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.ReadableConfig;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class CaptureRequestOptions implements ReadableConfig {
    private final Config config;

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

    private CaptureRequestOptions(Config config, boolean z) {
        this.config = config;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CaptureRequestOptions(Config config) {
        this(config, false);
        Intrinsics.checkNotNullParameter(config, "config");
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public Config getConfig() {
        return this.config;
    }

    public static final class Builder implements ExtendableBuilder {
        public static final Companion Companion = new Companion(null);
        private final MutableOptionsBundle mutableOptionsBundle;

        public Builder() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            Intrinsics.checkNotNullExpressionValue(mutableOptionsBundleCreate, "create(...)");
            this.mutableOptionsBundle = mutableOptionsBundleCreate;
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Builder from(final Config config) {
                Intrinsics.checkNotNullParameter(config, "config");
                final Builder builder = new Builder();
                config.findOptions("camera2.captureRequest.option.", new Config.OptionMatcher() { // from class: androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0
                    @Override // androidx.camera.core.impl.Config.OptionMatcher
                    public final boolean onOptionMatched(Config.Option option) {
                        return CaptureRequestOptions.Builder.Companion.from$lambda$0(builder, config, option);
                    }
                });
                return builder;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final boolean from$lambda$0(Builder builder, Config config, Config.Option it) {
                Intrinsics.checkNotNullParameter(it, "it");
                builder.getMutableConfig().insertOption(it, config.getOptionPriority(it), config.retrieveOption(it));
                return true;
            }
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableConfig getMutableConfig() {
            return this.mutableOptionsBundle;
        }

        public CaptureRequestOptions build() {
            OptionsBundle optionsBundleFrom = OptionsBundle.from(this.mutableOptionsBundle);
            Intrinsics.checkNotNullExpressionValue(optionsBundleFrom, "from(...)");
            return new CaptureRequestOptions(optionsBundleFrom);
        }
    }
}
