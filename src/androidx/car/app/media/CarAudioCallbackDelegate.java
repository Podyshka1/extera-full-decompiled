package androidx.car.app.media;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.media.ICarAudioCallback;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class CarAudioCallbackDelegate {
    private final ICarAudioCallback mCallback;

    public void onStopRecording() {
        try {
            ICarAudioCallback iCarAudioCallback = this.mCallback;
            Objects.requireNonNull(iCarAudioCallback);
            iCarAudioCallback.onStopRecording();
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
        }
    }

    @SuppressLint({"ExecutorRegistration"})
    public static CarAudioCallbackDelegate create(CarAudioCallback carAudioCallback) {
        return new CarAudioCallbackDelegate(carAudioCallback);
    }

    private CarAudioCallbackDelegate(CarAudioCallback carAudioCallback) {
        this.mCallback = new CarAudioCallbackStub(carAudioCallback);
    }

    private CarAudioCallbackDelegate() {
        this.mCallback = null;
    }

    public static class CarAudioCallbackStub extends ICarAudioCallback.Stub {
        private final CarAudioCallback mCarAudioCallback;

        public CarAudioCallbackStub(CarAudioCallback carAudioCallback) {
            this.mCarAudioCallback = carAudioCallback;
        }

        public CarAudioCallbackStub() {
            this.mCarAudioCallback = null;
        }

        @Override // androidx.car.app.media.ICarAudioCallback
        public void onStopRecording() {
            CarAudioCallback carAudioCallback = this.mCarAudioCallback;
            Objects.requireNonNull(carAudioCallback);
            carAudioCallback.onStopRecording();
        }
    }
}
