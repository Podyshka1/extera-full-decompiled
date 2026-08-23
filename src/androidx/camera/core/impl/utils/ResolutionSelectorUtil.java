package androidx.camera.core.impl.utils;

import androidx.camera.core.resolutionselector.ResolutionSelector;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ResolutionSelectorUtil {
    public static ResolutionSelector overrideResolutionSelectors(ResolutionSelector resolutionSelector, ResolutionSelector resolutionSelector2) {
        if (resolutionSelector2 == null) {
            return resolutionSelector;
        }
        if (resolutionSelector == null) {
            return resolutionSelector2;
        }
        ResolutionSelector.Builder builderFromResolutionSelector = ResolutionSelector.Builder.fromResolutionSelector(resolutionSelector);
        if (resolutionSelector2.getAspectRatioStrategy() != null) {
            builderFromResolutionSelector.setAspectRatioStrategy(resolutionSelector2.getAspectRatioStrategy());
        }
        if (resolutionSelector2.getResolutionStrategy() != null) {
            builderFromResolutionSelector.setResolutionStrategy(resolutionSelector2.getResolutionStrategy());
        }
        resolutionSelector2.getResolutionFilter();
        if (resolutionSelector2.getAllowedResolutionMode() != 0) {
            builderFromResolutionSelector.setAllowedResolutionMode(resolutionSelector2.getAllowedResolutionMode());
        }
        return builderFromResolutionSelector.build();
    }
}
