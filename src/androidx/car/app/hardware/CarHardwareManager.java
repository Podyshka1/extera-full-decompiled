package androidx.car.app.hardware;

import androidx.car.app.hardware.climate.CarClimate;

/* JADX INFO: loaded from: classes3.dex */
public interface CarHardwareManager {
    default CarClimate getCarClimate() {
        throw new UnsupportedOperationException();
    }
}
