package androidx.car.app.hardware.common;

import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class CarResultStubMap<T, U> {
    private final CarHardwareHostDispatcher mHostDispatcher;
    private final int mResultType;
    private final HashMap<U, CarResultStub<T>> mStubMap = new HashMap<>();
    private final T mUnsupportedValue;

    public CarResultStubMap(int i, T t, CarHardwareHostDispatcher carHardwareHostDispatcher) {
        this.mResultType = i;
        Objects.requireNonNull(t);
        this.mUnsupportedValue = t;
        Objects.requireNonNull(carHardwareHostDispatcher);
        this.mHostDispatcher = carHardwareHostDispatcher;
    }
}
