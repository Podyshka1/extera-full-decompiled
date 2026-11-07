package androidx.car.app.hardware.common;

import androidx.car.app.HostCall;
import androidx.car.app.HostDispatcher;
import androidx.car.app.ICarHost;
import androidx.car.app.hardware.ICarHardwareHost;
import androidx.car.app.hardware.ICarHardwareResult;
import androidx.car.app.serialization.Bundleable;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class CarHardwareHostDispatcher {
    private final HostDispatcher mHostDispatcher;
    private ICarHardwareHost mICarHardwareHost;

    public CarHardwareHostDispatcher(HostDispatcher hostDispatcher) {
        Objects.requireNonNull(hostDispatcher);
        this.mHostDispatcher = hostDispatcher;
    }

    public void dispatchGetCarHardwareResult(final int i, final Bundleable bundleable, final ICarHardwareResult iCarHardwareResult) {
        Objects.requireNonNull(iCarHardwareResult);
        RemoteUtils.dispatchCallToHost("getCarHardwareResult", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.hardware.common.CarHardwareHostDispatcher$$ExternalSyntheticLambda0
            @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
            public final Object call() {
                return CarHardwareHostDispatcher.m1709$r8$lambda$RWB_Hd3Wpqr7Y3FVmYXjxLusow(this.f$0, i, bundleable, iCarHardwareResult);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$RWB_Hd3Wpqr7Y3FVmYXjx-Lusow, reason: not valid java name */
    public static /* synthetic */ Object m1709$r8$lambda$RWB_Hd3Wpqr7Y3FVmYXjxLusow(CarHardwareHostDispatcher carHardwareHostDispatcher, int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult) {
        carHardwareHostDispatcher.getHost().getCarHardwareResult(i, bundleable, iCarHardwareResult);
        return null;
    }

    public void dispatchSubscribeCarHardwareResult(final int i, final Bundleable bundleable, final ICarHardwareResult iCarHardwareResult) {
        Objects.requireNonNull(iCarHardwareResult);
        RemoteUtils.dispatchCallToHost("subscribeCarHardwareResult", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.hardware.common.CarHardwareHostDispatcher$$ExternalSyntheticLambda1
            @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
            public final Object call() {
                return CarHardwareHostDispatcher.m1707$r8$lambda$uJPuf2SZKQG1LuTBzNl32gl8Cs(this.f$0, i, bundleable, iCarHardwareResult);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-uJPuf2SZKQG1LuTBzNl32gl8Cs, reason: not valid java name */
    public static /* synthetic */ Object m1707$r8$lambda$uJPuf2SZKQG1LuTBzNl32gl8Cs(CarHardwareHostDispatcher carHardwareHostDispatcher, int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult) {
        carHardwareHostDispatcher.getHost().subscribeCarHardwareResult(i, bundleable, iCarHardwareResult);
        return null;
    }

    public void dispatchUnsubscribeCarHardwareResult(final int i, final Bundleable bundleable) {
        RemoteUtils.dispatchCallToHost("unsubscribeCarHardwareResult", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.hardware.common.CarHardwareHostDispatcher$$ExternalSyntheticLambda2
            @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
            public final Object call() {
                return CarHardwareHostDispatcher.$r8$lambda$QGWz3y_oA7uH7F2k5epRAGxfhNo(this.f$0, i, bundleable);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$QGWz3y_oA7uH7F2k5epRAGxfhNo(CarHardwareHostDispatcher carHardwareHostDispatcher, int i, Bundleable bundleable) {
        carHardwareHostDispatcher.getHost().unsubscribeCarHardwareResult(i, bundleable);
        return null;
    }

    private ICarHardwareHost getHost() {
        ICarHardwareHost iCarHardwareHost = this.mICarHardwareHost;
        if (iCarHardwareHost != null) {
            return iCarHardwareHost;
        }
        ICarHardwareHost iCarHardwareHost2 = (ICarHardwareHost) this.mHostDispatcher.dispatchForResult("car", "getHost(CarHardware)", new HostCall() { // from class: androidx.car.app.hardware.common.CarHardwareHostDispatcher$$ExternalSyntheticLambda3
            @Override // androidx.car.app.HostCall
            public final Object dispatch(Object obj) {
                return ICarHardwareHost.Stub.asInterface(((ICarHost) obj).getHost("hardware"));
            }
        });
        Objects.requireNonNull(iCarHardwareHost2);
        ICarHardwareHost iCarHardwareHost3 = iCarHardwareHost2;
        this.mICarHardwareHost = iCarHardwareHost3;
        return iCarHardwareHost3;
    }
}
