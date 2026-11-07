package androidx.car.app;

import android.annotation.SuppressLint;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.util.Log;
import androidx.car.app.AppManager;
import androidx.car.app.IAppManager;
import androidx.car.app.managers.Manager;
import androidx.car.app.media.OpenMicrophoneRequest;
import androidx.car.app.media.OpenMicrophoneResponse;
import androidx.car.app.serialization.Bundleable;
import androidx.car.app.serialization.BundlerException;
import androidx.car.app.utils.RemoteUtils;
import androidx.core.location.LocationListenerCompat;
import androidx.view.Lifecycle;
import com.chaquo.python.internal.Common;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class AppManager implements Manager {
    private final IAppManager.Stub mAppManager;
    private final CarContext mCarContext;
    private final HostDispatcher mHostDispatcher;
    private final Lifecycle mLifecycle;
    final HandlerThread mLocationUpdateHandlerThread = new HandlerThread("LocationUpdateThread");
    private final LocationListenerCompat mLocationListener = new LocationListenerCompat() { // from class: androidx.car.app.AppManager$$ExternalSyntheticLambda2
        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            this.f$0.mHostDispatcher.dispatch(Common.ASSET_APP, "sendLocation", new HostCall() { // from class: androidx.car.app.AppManager$$ExternalSyntheticLambda3
                @Override // androidx.car.app.HostCall
                public final Object dispatch(Object obj) {
                    return AppManager.$r8$lambda$cN4HC8fuyfXod6lQ1qmuMXVVog4(location, (IAppHost) obj);
                }
            });
        }
    };

    public void invalidate() {
        this.mHostDispatcher.dispatch(Common.ASSET_APP, "invalidate", new HostCall() { // from class: androidx.car.app.AppManager$$ExternalSyntheticLambda1
            @Override // androidx.car.app.HostCall
            public final Object dispatch(Object obj) {
                return AppManager.$r8$lambda$m3Q_6T8MfMcf0F5Std_z_SjF1jA((IAppHost) obj);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$m3Q_6T8MfMcf0F5Std_z_SjF1jA(IAppHost iAppHost) {
        iAppHost.invalidate();
        return null;
    }

    public OpenMicrophoneResponse openMicrophone(final OpenMicrophoneRequest openMicrophoneRequest) {
        try {
            return (OpenMicrophoneResponse) this.mHostDispatcher.dispatchForResult(Common.ASSET_APP, "openMicrophone", new HostCall() { // from class: androidx.car.app.AppManager$$ExternalSyntheticLambda0
                @Override // androidx.car.app.HostCall
                public final Object dispatch(Object obj) {
                    return AppManager.m1750$r8$lambda$eRdGEweqivF9t3_swK7uQbdXz4(openMicrophoneRequest, (IAppHost) obj);
                }
            });
        } catch (RemoteException e) {
            Log.e("CarApp", "Error getting microphone bytes from host", e);
            return null;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-eRdGEweqivF9t3_swK7uQbdXz4, reason: not valid java name */
    public static /* synthetic */ OpenMicrophoneResponse m1750$r8$lambda$eRdGEweqivF9t3_swK7uQbdXz4(OpenMicrophoneRequest openMicrophoneRequest, IAppHost iAppHost) {
        try {
            Bundleable bundleableOpenMicrophone = iAppHost.openMicrophone(Bundleable.create(openMicrophoneRequest));
            if (bundleableOpenMicrophone == null) {
                return null;
            }
            return (OpenMicrophoneResponse) bundleableOpenMicrophone.get();
        } catch (BundlerException e) {
            Log.e("CarApp", "Cannot open microphone", e);
            return null;
        }
    }

    public IAppManager.Stub getIInterface() {
        return this.mAppManager;
    }

    public Lifecycle getLifecycle() {
        return this.mLifecycle;
    }

    @SuppressLint({"MissingPermission"})
    public void startLocationUpdates() {
        stopLocationUpdates();
        ((LocationManager) this.mCarContext.getSystemService("location")).requestLocationUpdates("fused", 1000L, 1.0f, this.mLocationListener, this.mLocationUpdateHandlerThread.getLooper());
    }

    public void stopLocationUpdates() {
        ((LocationManager) this.mCarContext.getSystemService("location")).removeUpdates(this.mLocationListener);
    }

    public static AppManager create(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        Objects.requireNonNull(carContext);
        Objects.requireNonNull(hostDispatcher);
        Objects.requireNonNull(lifecycle);
        return new AppManager(carContext, hostDispatcher, lifecycle);
    }

    public AppManager(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        this.mCarContext = carContext;
        this.mHostDispatcher = hostDispatcher;
        this.mLifecycle = lifecycle;
        this.mAppManager = new BinderC02991(carContext);
    }

    /* JADX INFO: renamed from: androidx.car.app.AppManager$1 */
    public class BinderC02991 extends IAppManager.Stub {
        final /* synthetic */ CarContext val$carContext;

        public BinderC02991(CarContext carContext) {
            this.val$carContext = carContext;
        }

        @Override // androidx.car.app.IAppManager
        public void getTemplate(IOnDoneCallback iOnDoneCallback) {
            Lifecycle lifecycle = AppManager.this.getLifecycle();
            final ScreenManager screenManager = (ScreenManager) this.val$carContext.getCarService(ScreenManager.class);
            Objects.requireNonNull(screenManager);
            RemoteUtils.dispatchCallFromHost(lifecycle, iOnDoneCallback, "getTemplate", new RemoteUtils.HostCall() { // from class: androidx.car.app.AppManager$1$$ExternalSyntheticLambda1
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return screenManager.getTopTemplate();
                }
            });
        }

        @Override // androidx.car.app.IAppManager
        public void onBackPressed(IOnDoneCallback iOnDoneCallback) {
            Lifecycle lifecycle = AppManager.this.getLifecycle();
            final CarContext carContext = this.val$carContext;
            RemoteUtils.dispatchCallFromHost(lifecycle, iOnDoneCallback, "onBackPressed", new RemoteUtils.HostCall() { // from class: androidx.car.app.AppManager$1$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return AppManager.BinderC02991.$r8$lambda$0BYIOBGeQufkvO0GpWbLJJAjwE8(carContext);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$0BYIOBGeQufkvO0GpWbLJJAjwE8(CarContext carContext) {
            carContext.getOnBackPressedDispatcher().onBackPressed();
            return null;
        }

        @Override // androidx.car.app.IAppManager
        public void startLocationUpdates(IOnDoneCallback iOnDoneCallback) {
            PackageManager packageManager = this.val$carContext.getPackageManager();
            boolean z = packageManager.checkPermission("android.permission.ACCESS_FINE_LOCATION", this.val$carContext.getPackageName()) == -1;
            boolean z2 = packageManager.checkPermission("android.permission.ACCESS_COARSE_LOCATION", this.val$carContext.getPackageName()) == -1;
            if (z && z2) {
                RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "startLocationUpdates", new SecurityException("Location permission(s) not granted."));
            }
            Lifecycle lifecycle = AppManager.this.getLifecycle();
            final CarContext carContext = this.val$carContext;
            RemoteUtils.dispatchCallFromHost(lifecycle, iOnDoneCallback, "startLocationUpdates", new RemoteUtils.HostCall() { // from class: androidx.car.app.AppManager$1$$ExternalSyntheticLambda3
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return AppManager.BinderC02991.$r8$lambda$kiPel4e4C6L1n4qbWD8qVxWes9Y(carContext);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$kiPel4e4C6L1n4qbWD8qVxWes9Y(CarContext carContext) {
            ((AppManager) carContext.getCarService(AppManager.class)).startLocationUpdates();
            return null;
        }

        @Override // androidx.car.app.IAppManager
        public void stopLocationUpdates(IOnDoneCallback iOnDoneCallback) {
            Lifecycle lifecycle = AppManager.this.getLifecycle();
            final CarContext carContext = this.val$carContext;
            RemoteUtils.dispatchCallFromHost(lifecycle, iOnDoneCallback, "stopLocationUpdates", new RemoteUtils.HostCall() { // from class: androidx.car.app.AppManager$1$$ExternalSyntheticLambda2
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return AppManager.BinderC02991.$r8$lambda$GRoiwQQxcfwY7PBpRDnZMPJPkh8(carContext);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$GRoiwQQxcfwY7PBpRDnZMPJPkh8(CarContext carContext) {
            ((AppManager) carContext.getCarService(AppManager.class)).stopLocationUpdates();
            return null;
        }
    }

    public static /* synthetic */ Object $r8$lambda$cN4HC8fuyfXod6lQ1qmuMXVVog4(Location location, IAppHost iAppHost) {
        iAppHost.sendLocation(location);
        return null;
    }
}
