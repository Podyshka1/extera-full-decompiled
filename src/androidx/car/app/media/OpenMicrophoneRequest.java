package androidx.car.app.media;

import android.annotation.SuppressLint;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class OpenMicrophoneRequest {
    private final CarAudioCallbackDelegate mCarAudioCallbackDelegate;

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

    public static final class Builder {
        final CarAudioCallbackDelegate mCarAudioCallbackDelegate;

        @SuppressLint({"ExecutorRegistration"})
        public Builder(CarAudioCallback carAudioCallback) {
            Objects.requireNonNull(carAudioCallback);
            this.mCarAudioCallbackDelegate = CarAudioCallbackDelegate.create(carAudioCallback);
        }

        public OpenMicrophoneRequest build() {
            return new OpenMicrophoneRequest(this);
        }
    }
}
