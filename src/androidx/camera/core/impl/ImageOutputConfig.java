package androidx.camera.core.impl;

import android.util.Size;
import androidx.camera.core.AspectRatio;
import androidx.camera.core.impl.Config;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface ImageOutputConfig extends ReadableConfig {
    public static final Config.Option OPTION_APP_TARGET_ROTATION;
    public static final Config.Option OPTION_CUSTOM_ORDERED_RESOLUTIONS;
    public static final Config.Option OPTION_DEFAULT_RESOLUTION;
    public static final Config.Option OPTION_MAX_RESOLUTION;
    public static final Config.Option OPTION_MIRROR_MODE;
    public static final Config.Option OPTION_RESOLUTION_SELECTOR;
    public static final Config.Option OPTION_SUPPORTED_RESOLUTIONS;
    public static final Config.Option OPTION_TARGET_ASPECT_RATIO = Config.Option.create("camerax.core.imageOutput.targetAspectRatio", AspectRatio.class);
    public static final Config.Option OPTION_TARGET_RESOLUTION;
    public static final Config.Option OPTION_TARGET_ROTATION;

    public interface Builder {
        Object setTargetResolution(Size size);

        Object setTargetRotation(int i);
    }

    int getAppTargetRotation(int i);

    List getCustomOrderedResolutions(List list);

    Size getDefaultResolution(Size size);

    Size getMaxResolution(Size size);

    int getMirrorMode(int i);

    ResolutionSelector getResolutionSelector();

    ResolutionSelector getResolutionSelector(ResolutionSelector resolutionSelector);

    List getSupportedResolutions(List list);

    int getTargetAspectRatio();

    Size getTargetResolution(Size size);

    int getTargetRotation(int i);

    boolean hasTargetAspectRatio();

    static {
        Class cls = Integer.TYPE;
        OPTION_TARGET_ROTATION = Config.Option.create("camerax.core.imageOutput.targetRotation", cls);
        OPTION_APP_TARGET_ROTATION = Config.Option.create("camerax.core.imageOutput.appTargetRotation", cls);
        OPTION_MIRROR_MODE = Config.Option.create("camerax.core.imageOutput.mirrorMode", cls);
        OPTION_TARGET_RESOLUTION = Config.Option.create("camerax.core.imageOutput.targetResolution", Size.class);
        OPTION_DEFAULT_RESOLUTION = Config.Option.create("camerax.core.imageOutput.defaultResolution", Size.class);
        OPTION_MAX_RESOLUTION = Config.Option.create("camerax.core.imageOutput.maxResolution", Size.class);
        OPTION_SUPPORTED_RESOLUTIONS = Config.Option.create("camerax.core.imageOutput.supportedResolutions", List.class);
        OPTION_RESOLUTION_SELECTOR = Config.Option.create("camerax.core.imageOutput.resolutionSelector", ResolutionSelector.class);
        OPTION_CUSTOM_ORDERED_RESOLUTIONS = Config.Option.create("camerax.core.imageOutput.customOrderedResolutions", List.class);
    }

    /* JADX INFO: renamed from: androidx.camera.core.impl.ImageOutputConfig$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Config.Option option = ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO;
        }

        public static Size $default$getTargetResolution(ImageOutputConfig imageOutputConfig, Size size) {
            return (Size) imageOutputConfig.retrieveOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, size);
        }

        public static Size $default$getDefaultResolution(ImageOutputConfig imageOutputConfig, Size size) {
            return (Size) imageOutputConfig.retrieveOption(ImageOutputConfig.OPTION_DEFAULT_RESOLUTION, size);
        }

        public static Size $default$getMaxResolution(ImageOutputConfig imageOutputConfig, Size size) {
            return (Size) imageOutputConfig.retrieveOption(ImageOutputConfig.OPTION_MAX_RESOLUTION, size);
        }

        public static List $default$getSupportedResolutions(ImageOutputConfig imageOutputConfig, List list) {
            return (List) imageOutputConfig.retrieveOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, list);
        }

        public static ResolutionSelector $default$getResolutionSelector(ImageOutputConfig imageOutputConfig, ResolutionSelector resolutionSelector) {
            return (ResolutionSelector) imageOutputConfig.retrieveOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
        }

        public static ResolutionSelector $default$getResolutionSelector(ImageOutputConfig imageOutputConfig) {
            return (ResolutionSelector) imageOutputConfig.retrieveOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR);
        }

        public static List $default$getCustomOrderedResolutions(ImageOutputConfig imageOutputConfig, List list) {
            List list2 = (List) imageOutputConfig.retrieveOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS, list);
            if (list2 != null) {
                return new ArrayList(list2);
            }
            return null;
        }

        public static void validateConfig(ImageOutputConfig imageOutputConfig) {
            boolean zHasTargetAspectRatio = imageOutputConfig.hasTargetAspectRatio();
            boolean z = imageOutputConfig.getTargetResolution(null) != null;
            if (zHasTargetAspectRatio && z) {
                throw new IllegalArgumentException("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
            }
            if (imageOutputConfig.getResolutionSelector(null) != null) {
                if (zHasTargetAspectRatio || z) {
                    throw new IllegalArgumentException("Cannot use setTargetResolution or setTargetAspectRatio with setResolutionSelector on the same config.");
                }
            }
        }
    }
}
