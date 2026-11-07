package androidx.car.app.constraints;

import androidx.car.app.CarContext;
import androidx.car.app.HostDispatcher;
import androidx.car.app.managers.Manager;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class ConstraintManager implements Manager {
    private final CarContext mCarContext;
    private final HostDispatcher mHostDispatcher;

    public static ConstraintManager create(CarContext carContext, HostDispatcher hostDispatcher) {
        Objects.requireNonNull(carContext);
        Objects.requireNonNull(hostDispatcher);
        return new ConstraintManager(carContext, hostDispatcher);
    }

    private ConstraintManager(CarContext carContext, HostDispatcher hostDispatcher) {
        this.mCarContext = carContext;
        this.mHostDispatcher = hostDispatcher;
    }
}
