package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarHardwareHostDispatcher;
import androidx.car.app.hardware.common.CarResultStubMap;
import androidx.car.app.hardware.common.CarValue;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class ProjectedCarSensors implements CarSensors {
    private static final CarValue<List<Float>> UNIMPLEMENTED_FLOAT_LIST = new CarValue<>(null, 0, 2);
    private final CarResultStubMap<Accelerometer, Integer> mAccelerometerCarResultStubMap;
    final CarHardwareHostDispatcher mCarHardwareHostDispatcher;
    private final CarResultStubMap<CarHardwareLocation, Integer> mCarHardwareLocationCarResultStubMap;
    private final CarResultStubMap<Compass, Integer> mCompassCarResultStubMap;
    private final CarResultStubMap<Gyroscope, Integer> mGyroscopeCarResultStubMap;

    public ProjectedCarSensors(CarHardwareHostDispatcher carHardwareHostDispatcher) {
        Objects.requireNonNull(carHardwareHostDispatcher);
        this.mCarHardwareHostDispatcher = carHardwareHostDispatcher;
        CarValue<List<Float>> carValue = UNIMPLEMENTED_FLOAT_LIST;
        this.mAccelerometerCarResultStubMap = new CarResultStubMap<>(20, new Accelerometer(carValue), carHardwareHostDispatcher);
        this.mGyroscopeCarResultStubMap = new CarResultStubMap<>(22, new Gyroscope(carValue), carHardwareHostDispatcher);
        this.mCompassCarResultStubMap = new CarResultStubMap<>(21, new Compass(carValue), carHardwareHostDispatcher);
        this.mCarHardwareLocationCarResultStubMap = new CarResultStubMap<>(23, new CarHardwareLocation(new CarValue(null, 0L, 2)), carHardwareHostDispatcher);
    }
}
