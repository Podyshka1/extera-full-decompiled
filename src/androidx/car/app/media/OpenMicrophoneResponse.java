package androidx.car.app.media;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.internal.cast.zzaak$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class OpenMicrophoneResponse {
    private final CarAudioCallbackDelegate mCarAudioCallbackDelegate;
    private final ParcelFileDescriptor mCarMicrophoneDescriptor;

    public static final class Builder {
        final CarAudioCallbackDelegate mCarAudioCallbackDelegate;
        ParcelFileDescriptor mCarMicrophoneDescriptor;
    }

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
                zzaak$$ExternalSyntheticBUOutline0.m304m(e);
                return null;
            }
        }
        return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
    }
}
