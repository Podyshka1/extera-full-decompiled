package androidx.camera.core.internal;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ReadableConfig;

/* JADX INFO: loaded from: classes4.dex */
public interface TargetConfig extends ReadableConfig {
    public static final Config.Option OPTION_TARGET_NAME = Config.Option.create("camerax.core.target.name", String.class);
    public static final Config.Option OPTION_TARGET_CLASS = Config.Option.create("camerax.core.target.class", Class.class);

    String getTargetName();

    String getTargetName(String str);

    /* JADX INFO: renamed from: androidx.camera.core.internal.TargetConfig$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static String $default$getTargetName(TargetConfig targetConfig, String str) {
            return (String) targetConfig.retrieveOption(TargetConfig.OPTION_TARGET_NAME, str);
        }

        public static String $default$getTargetName(TargetConfig targetConfig) {
            return (String) targetConfig.retrieveOption(TargetConfig.OPTION_TARGET_NAME);
        }
    }
}
