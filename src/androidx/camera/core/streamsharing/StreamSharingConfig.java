package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.ReadableConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class StreamSharingConfig implements UseCaseConfig<StreamSharing>, ImageOutputConfig, ReadableConfig {
    static final Config.Option<List<UseCaseConfigFactory.CaptureType>> OPTION_CAPTURE_TYPES = Config.Option.create("camerax.core.streamSharing.captureTypes", List.class);
    private final OptionsBundle mConfig;

    public StreamSharingConfig(OptionsBundle optionsBundle) {
        this.mConfig = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public Config getConfig() {
        return this.mConfig;
    }

    public List<UseCaseConfigFactory.CaptureType> getCaptureTypes() {
        return (List) retrieveOption(OPTION_CAPTURE_TYPES);
    }
}
