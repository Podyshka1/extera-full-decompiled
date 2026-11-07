package androidx.camera.core.internal;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ReadableConfig;

/* JADX INFO: loaded from: classes3.dex */
public interface TargetConfig<T> extends ReadableConfig {
    public static final Config.Option<String> OPTION_TARGET_NAME = Config.Option.create("camerax.core.target.name", String.class);
    public static final Config.Option<Class<?>> OPTION_TARGET_CLASS = Config.Option.create("camerax.core.target.class", Class.class);

    default String getTargetName(String str) {
        return (String) retrieveOption(OPTION_TARGET_NAME, str);
    }

    default String getTargetName() {
        return (String) retrieveOption(OPTION_TARGET_NAME);
    }
}
