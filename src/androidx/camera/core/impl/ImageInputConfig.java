package androidx.camera.core.impl;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.Config;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public interface ImageInputConfig extends ReadableConfig {
    public static final Config.Option OPTION_INPUT_DYNAMIC_RANGE;
    public static final Config.Option OPTION_INPUT_FORMAT;
    public static final Config.Option OPTION_SECONDARY_INPUT_FORMAT;

    DynamicRange getDynamicRange();

    int getInputFormat();

    boolean hasDynamicRange();

    static {
        Class cls = Integer.TYPE;
        OPTION_INPUT_FORMAT = Config.Option.create("camerax.core.imageInput.inputFormat", cls);
        OPTION_SECONDARY_INPUT_FORMAT = Config.Option.create("camerax.core.imageInput.secondaryInputFormat", cls);
        OPTION_INPUT_DYNAMIC_RANGE = Config.Option.create("camerax.core.imageInput.inputDynamicRange", DynamicRange.class);
    }

    /* JADX INFO: renamed from: androidx.camera.core.impl.ImageInputConfig$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static DynamicRange $default$getDynamicRange(ImageInputConfig imageInputConfig) {
            return (DynamicRange) Preconditions.checkNotNull((DynamicRange) imageInputConfig.retrieveOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.UNSPECIFIED));
        }
    }
}
