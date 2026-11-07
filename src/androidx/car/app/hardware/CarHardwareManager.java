package androidx.car.app.hardware;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.car.app.CarAppMetadataHolderService;
import androidx.car.app.CarContext;
import androidx.car.app.HostDispatcher;
import androidx.car.app.HostException;
import androidx.car.app.hardware.climate.CarClimate;
import androidx.car.app.managers.Manager;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public interface CarHardwareManager extends Manager {
    default CarClimate getCarClimate() {
        throw new UnsupportedOperationException();
    }

    static CarHardwareManager create(CarContext carContext, HostDispatcher hostDispatcher) {
        if (carContext.getCarAppApiLevel() < 3) {
            throw new HostException("Create CarHardwareManager failed", new IllegalArgumentException("Attempted to retrieve CarHardwareManager service, but the host is less than 3"));
        }
        try {
            Bundle bundle = CarAppMetadataHolderService.getServiceInfo(carContext).metaData;
            String string = bundle != null ? bundle.getString("androidx.car.app.CarAppMetadataHolderService.CAR_HARDWARE_MANAGER") : null;
            if (string == null) {
                throw new ClassNotFoundException("CarHardwareManager metadata could not be found");
            }
            return (CarHardwareManager) Class.forName(string).getConstructor(CarContext.class, HostDispatcher.class).newInstance(carContext, hostDispatcher);
        } catch (PackageManager.NameNotFoundException | ReflectiveOperationException unused) {
            Segment$$ExternalSyntheticBUOutline1.m973m("CarHardwareManager not configured. Did you forget to add a dependency on app-automotive or app-projected artifacts?");
            return null;
        }
    }
}
