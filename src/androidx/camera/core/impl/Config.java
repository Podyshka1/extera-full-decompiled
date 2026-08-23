package androidx.camera.core.impl;

import androidx.camera.core.impl.utils.ResolutionSelectorUtil;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import java.util.Iterator;
import java.util.Set;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public interface Config {

    public interface OptionMatcher {
        boolean onOptionMatched(Option option);
    }

    public enum OptionPriority {
        ALWAYS_OVERRIDE,
        HIGH_PRIORITY_REQUIRED,
        REQUIRED,
        OPTIONAL
    }

    boolean containsOption(Option option);

    void findOptions(String str, OptionMatcher optionMatcher);

    OptionPriority getOptionPriority(Option option);

    Set getPriorities(Option option);

    Set listOptions();

    Object retrieveOption(Option option);

    Object retrieveOption(Option option, Object obj);

    Object retrieveOptionWithPriority(Option option, OptionPriority optionPriority);

    public static abstract class Option {
        public abstract String getId();

        public abstract Object getToken();

        public abstract Class getValueClass();

        Option() {
        }

        public static Option create(String str, Class cls) {
            return create(str, cls, null);
        }

        public static Option create(String str, Class cls, Object obj) {
            return new AutoValue_Config_Option(str, cls, obj);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.impl.Config$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static boolean hasConflict(OptionPriority optionPriority, OptionPriority optionPriority2) {
            OptionPriority optionPriority3 = OptionPriority.REQUIRED;
            return optionPriority == optionPriority3 && optionPriority2 == optionPriority3;
        }

        public static Config mergeConfigs(Config config, Config config2) {
            MutableOptionsBundle mutableOptionsBundleCreate;
            if (config == null && config2 == null) {
                return OptionsBundle.emptyBundle();
            }
            if (config2 != null) {
                mutableOptionsBundleCreate = MutableOptionsBundle.from(config2);
            } else {
                mutableOptionsBundleCreate = MutableOptionsBundle.create();
            }
            if (config != null) {
                Iterator it = config.listOptions().iterator();
                while (it.hasNext()) {
                    mergeOptionValue(mutableOptionsBundleCreate, config2, config, (Option) it.next());
                }
            }
            return OptionsBundle.from(mutableOptionsBundleCreate);
        }

        public static void mergeOptionValue(MutableOptionsBundle mutableOptionsBundle, Config config, Config config2, Option option) {
            if (Objects.equals(option, ImageOutputConfig.OPTION_RESOLUTION_SELECTOR)) {
                ResolutionSelector resolutionSelector = (ResolutionSelector) config2.retrieveOption(option, null);
                mutableOptionsBundle.insertOption(option, config2.getOptionPriority(option), ResolutionSelectorUtil.overrideResolutionSelectors((ResolutionSelector) config.retrieveOption(option, null), resolutionSelector));
                return;
            }
            mutableOptionsBundle.insertOption(option, config2.getOptionPriority(option), config2.retrieveOption(option));
        }
    }
}
