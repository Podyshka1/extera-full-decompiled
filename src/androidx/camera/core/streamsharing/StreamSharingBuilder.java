package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.TargetConfig;
import java.util.UUID;
import retrofit2.Utils$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
class StreamSharingBuilder implements UseCaseConfig.Builder<StreamSharing, StreamSharingConfig, StreamSharingBuilder> {
    private final MutableOptionsBundle mMutableConfig;

    public StreamSharingBuilder() {
        this(MutableOptionsBundle.create());
    }

    public StreamSharingBuilder(MutableOptionsBundle mutableOptionsBundle) {
        this.mMutableConfig = mutableOptionsBundle;
        Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
        if (cls != null && !cls.equals(StreamSharing.class)) {
            Utils$$ExternalSyntheticBUOutline2.m980m("Invalid target class configuration for ", this, ": ", cls);
            throw null;
        }
        setCaptureType(UseCaseConfigFactory.CaptureType.STREAM_SHARING);
        setTargetClass(StreamSharing.class);
    }

    @Override // androidx.camera.core.ExtendableBuilder
    public MutableConfig getMutableConfig() {
        return this.mMutableConfig;
    }

    @Override // androidx.camera.core.impl.UseCaseConfig.Builder
    public StreamSharingConfig getUseCaseConfig() {
        return new StreamSharingConfig(OptionsBundle.from(this.mMutableConfig));
    }

    public StreamSharingBuilder setTargetClass(Class<StreamSharing> cls) {
        getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_CLASS, cls);
        if (getMutableConfig().retrieveOption(TargetConfig.OPTION_TARGET_NAME, null) == null) {
            setTargetName(cls.getCanonicalName() + "-" + UUID.randomUUID());
        }
        return this;
    }

    public StreamSharingBuilder setTargetName(String str) {
        getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_NAME, str);
        return this;
    }

    public StreamSharingBuilder setCaptureType(UseCaseConfigFactory.CaptureType captureType) {
        getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, captureType);
        return this;
    }
}
