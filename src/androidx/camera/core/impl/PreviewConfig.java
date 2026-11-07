package androidx.camera.core.impl;

import androidx.camera.core.Preview;

/* JADX INFO: loaded from: classes3.dex */
public final class PreviewConfig implements UseCaseConfig<Preview>, ImageOutputConfig, ReadableConfig {
    private final OptionsBundle mConfig;

    public PreviewConfig(OptionsBundle optionsBundle) {
        this.mConfig = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public Config getConfig() {
        return this.mConfig;
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public int getInputFormat() {
        return ((Integer) retrieveOption(ImageInputConfig.OPTION_INPUT_FORMAT)).intValue();
    }
}
