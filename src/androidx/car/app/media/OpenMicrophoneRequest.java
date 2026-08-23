package androidx.car.app.media;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class OpenMicrophoneRequest {
    private final CarAudioCallbackDelegate mCarAudioCallbackDelegate;

    public static final class Builder {
        final CarAudioCallbackDelegate mCarAudioCallbackDelegate;
    }

    public OpenMicrophoneRequest(Builder builder) {
        this.mCarAudioCallbackDelegate = builder.mCarAudioCallbackDelegate;
    }

    private OpenMicrophoneRequest() {
        this.mCarAudioCallbackDelegate = null;
    }

    public CarAudioCallbackDelegate getCarAudioCallbackDelegate() {
        CarAudioCallbackDelegate carAudioCallbackDelegate = this.mCarAudioCallbackDelegate;
        Objects.requireNonNull(carAudioCallbackDelegate);
        return carAudioCallbackDelegate;
    }
}
