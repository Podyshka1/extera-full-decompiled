package androidx.car.app.media;

import android.annotation.SuppressLint;
import android.os.ParcelFileDescriptor;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class OpenMicrophoneResponse {
    private final CarAudioCallbackDelegate mCarAudioCallbackDelegate;
    private final ParcelFileDescriptor mCarMicrophoneDescriptor;

    public OpenMicrophoneResponse(Builder builder) {
        this.mCarAudioCallbackDelegate = builder.mCarAudioCallbackDelegate;
        this.mCarMicrophoneDescriptor = builder.mCarMicrophoneDescriptor;
    }

    private OpenMicrophoneResponse() {
        this.mCarMicrophoneDescriptor = null;
        this.mCarAudioCallbackDelegate = null;
    }

    public CarAudioCallbackDelegate getCarAudioCallback() {
        CarAudioCallbackDelegate carAudioCallbackDelegate = this.mCarAudioCallbackDelegate;
        Objects.requireNonNull(carAudioCallbackDelegate);
        return carAudioCallbackDelegate;
    }

    public InputStream getCarMicrophoneInputStream() {
        ParcelFileDescriptor parcelFileDescriptor = this.mCarMicrophoneDescriptor;
        if (parcelFileDescriptor == null) {
            try {
                ParcelFileDescriptor[] parcelFileDescriptorArrCreateReliablePipe = ParcelFileDescriptor.createReliablePipe();
                parcelFileDescriptorArrCreateReliablePipe[1].close();
                parcelFileDescriptor = parcelFileDescriptorArrCreateReliablePipe[0];
            } catch (IOException e) {
                UnsafeUtil$$ExternalSyntheticBUOutline0.m483m(e);
                return null;
            }
        }
        return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
    }

    public static final class Builder {
        final CarAudioCallbackDelegate mCarAudioCallbackDelegate;
        ParcelFileDescriptor mCarMicrophoneDescriptor;

        @SuppressLint({"ExecutorRegistration"})
        public Builder(CarAudioCallback carAudioCallback) {
            Objects.requireNonNull(carAudioCallback);
            this.mCarAudioCallbackDelegate = CarAudioCallbackDelegate.create(carAudioCallback);
        }

        public OpenMicrophoneResponse build() {
            return new OpenMicrophoneResponse(this);
        }
    }
}
