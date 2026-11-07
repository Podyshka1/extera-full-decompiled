package androidx.car.app.hardware;

import androidx.car.app.CarContext;
import androidx.car.app.HostDispatcher;
import androidx.car.app.hardware.climate.CarClimate;
import androidx.car.app.hardware.common.CarHardwareHostDispatcher;
import androidx.car.app.hardware.info.CarInfo;
import androidx.car.app.hardware.info.CarSensors;
import androidx.car.app.hardware.info.ProjectedCarInfo;
import androidx.car.app.hardware.info.ProjectedCarSensors;

/* JADX INFO: loaded from: classes3.dex */
public class ProjectedCarHardwareManager implements CarHardwareManager {
    private final ProjectedCarInfo mVehicleInfo;
    private final ProjectedCarSensors mVehicleSensors;

    @Override // androidx.car.app.hardware.CarHardwareManager
    public /* bridge */ /* synthetic */ CarClimate getCarClimate() {
        super.getCarClimate();
        return null;
    }

    public CarInfo getCarInfo() {
        return this.mVehicleInfo;
    }

    public CarSensors getCarSensors() {
        return this.mVehicleSensors;
    }

    public ProjectedCarHardwareManager(CarContext carContext, HostDispatcher hostDispatcher) {
        CarHardwareHostDispatcher carHardwareHostDispatcher = new CarHardwareHostDispatcher(hostDispatcher);
        this.mVehicleInfo = new ProjectedCarInfo(carHardwareHostDispatcher);
        this.mVehicleSensors = new ProjectedCarSensors(carHardwareHostDispatcher);
    }
}
