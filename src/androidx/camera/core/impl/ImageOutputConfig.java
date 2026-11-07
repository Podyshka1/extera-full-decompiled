package androidx.camera.core.impl;

import android.util.Pair;
import android.util.Size;
import androidx.camera.core.AspectRatio;
import androidx.camera.core.impl.Config;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import java.util.ArrayList;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public interface ImageOutputConfig extends ReadableConfig {
    public static final Config.Option<Integer> OPTION_APP_TARGET_ROTATION;
    public static final Config.Option<List<Size>> OPTION_CUSTOM_ORDERED_RESOLUTIONS;
    public static final Config.Option<Size> OPTION_DEFAULT_RESOLUTION;
    public static final Config.Option<Size> OPTION_MAX_RESOLUTION;
    public static final Config.Option<Integer> OPTION_MIRROR_MODE;
    public static final Config.Option<ResolutionSelector> OPTION_RESOLUTION_SELECTOR;
    public static final Config.Option<List<Pair<Integer, Size[]>>> OPTION_SUPPORTED_RESOLUTIONS;
    public static final Config.Option<Integer> OPTION_TARGET_ASPECT_RATIO = Config.Option.create("camerax.core.imageOutput.targetAspectRatio", AspectRatio.class);
    public static final Config.Option<Size> OPTION_TARGET_RESOLUTION;
    public static final Config.Option<Integer> OPTION_TARGET_ROTATION;

    public interface Builder<B> {
        B setTargetResolution(Size size);

        B setTargetRotation(int i);
    }

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

    default boolean hasTargetAspectRatio() {
        return containsOption(OPTION_TARGET_ASPECT_RATIO);
    }

    default int getTargetAspectRatio() {
        return ((Integer) retrieveOption(OPTION_TARGET_ASPECT_RATIO)).intValue();
    }

    default int getTargetRotation(int i) {
        return ((Integer) retrieveOption(OPTION_TARGET_ROTATION, Integer.valueOf(i))).intValue();
    }

    default int getAppTargetRotation(int i) {
        return ((Integer) retrieveOption(OPTION_APP_TARGET_ROTATION, Integer.valueOf(i))).intValue();
    }

    default Size getTargetResolution(Size size) {
        return (Size) retrieveOption(OPTION_TARGET_RESOLUTION, size);
    }

    default int getMirrorMode(int i) {
        return ((Integer) retrieveOption(OPTION_MIRROR_MODE, Integer.valueOf(i))).intValue();
    }

    default Size getDefaultResolution(Size size) {
        return (Size) retrieveOption(OPTION_DEFAULT_RESOLUTION, size);
    }

    default Size getMaxResolution(Size size) {
        return (Size) retrieveOption(OPTION_MAX_RESOLUTION, size);
    }

    default List<Pair<Integer, Size[]>> getSupportedResolutions(List<Pair<Integer, Size[]>> list) {
        return (List) retrieveOption(OPTION_SUPPORTED_RESOLUTIONS, list);
    }

    default ResolutionSelector getResolutionSelector(ResolutionSelector resolutionSelector) {
        return (ResolutionSelector) retrieveOption(OPTION_RESOLUTION_SELECTOR, resolutionSelector);
    }

    default ResolutionSelector getResolutionSelector() {
        return (ResolutionSelector) retrieveOption(OPTION_RESOLUTION_SELECTOR);
    }

    default List<Size> getCustomOrderedResolutions(List<Size> list) {
        List list2 = (List) retrieveOption(OPTION_CUSTOM_ORDERED_RESOLUTIONS, list);
        if (list2 != null) {
            return new ArrayList(list2);
        }
        return null;
    }

    static void validateConfig(ImageOutputConfig imageOutputConfig) {
        boolean zHasTargetAspectRatio = imageOutputConfig.hasTargetAspectRatio();
        boolean z = imageOutputConfig.getTargetResolution(null) != null;
        if (zHasTargetAspectRatio && z) {
            f$$ExternalSyntheticBUOutline1.m212m("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
        } else if (imageOutputConfig.getResolutionSelector(null) != null) {
            if (zHasTargetAspectRatio || z) {
                f$$ExternalSyntheticBUOutline1.m212m("Cannot use setTargetResolution or setTargetAspectRatio with setResolutionSelector on the same config.");
            }
        }
    }
}
