package androidx.car.app.navigation;

import android.util.Log;
import androidx.car.app.CarContext;
import androidx.car.app.HostDispatcher;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.managers.Manager;
import androidx.car.app.navigation.INavigationManager;
import androidx.car.app.navigation.NavigationManager;
import androidx.car.app.utils.RemoteUtils;
import androidx.car.app.utils.ThreadUtils;
import androidx.view.DefaultLifecycleObserver;
import androidx.view.Lifecycle;
import androidx.view.LifecycleOwner;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class NavigationManager implements Manager {
    private final CarContext mCarContext;
    private final HostDispatcher mHostDispatcher;
    private boolean mIsAutoDriveEnabled;
    private boolean mIsNavigating;
    private final INavigationManager.Stub mNavigationManager;
    private Executor mNavigationManagerCallbackExecutor;

    public static NavigationManager create(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        Objects.requireNonNull(carContext);
        Objects.requireNonNull(hostDispatcher);
        Objects.requireNonNull(lifecycle);
        return new NavigationManager(carContext, hostDispatcher, lifecycle);
    }

    public INavigationManager.Stub getIInterface() {
        return this.mNavigationManager;
    }

    public void onStopNavigation() {
        ThreadUtils.checkMainThread();
        if (this.mIsNavigating) {
            this.mIsNavigating = false;
            Executor executor = this.mNavigationManagerCallbackExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.car.app.navigation.NavigationManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.getClass();
                }
            });
        }
    }

    public void onAutoDriveEnabled() {
        ThreadUtils.checkMainThread();
        if (Log.isLoggable("CarApp.Nav", 3)) {
            Log.d("CarApp.Nav", "Executing onAutoDriveEnabled");
        }
        this.mIsAutoDriveEnabled = true;
        Log.w("CarApp.Nav", "NavigationManagerCallback not set, skipping onAutoDriveEnabled");
    }

    public NavigationManager(CarContext carContext, HostDispatcher hostDispatcher, final Lifecycle lifecycle) {
        Objects.requireNonNull(carContext);
        this.mCarContext = carContext;
        Objects.requireNonNull(hostDispatcher);
        this.mHostDispatcher = hostDispatcher;
        this.mNavigationManager = new BinderC03181(lifecycle);
        lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: androidx.car.app.navigation.NavigationManager.2
            @Override // androidx.view.DefaultLifecycleObserver
            public void onDestroy(LifecycleOwner lifecycleOwner) {
                NavigationManager.this.onStopNavigation();
                lifecycle.removeObserver(this);
            }
        });
    }

    /* JADX INFO: renamed from: androidx.car.app.navigation.NavigationManager$1 */
    public class BinderC03181 extends INavigationManager.Stub {
        final /* synthetic */ Lifecycle val$lifecycle;

        public BinderC03181(Lifecycle lifecycle) {
            this.val$lifecycle = lifecycle;
        }

        @Override // androidx.car.app.navigation.INavigationManager
        public void onStopNavigation(IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(this.val$lifecycle, iOnDoneCallback, "onStopNavigation", new RemoteUtils.HostCall() { // from class: androidx.car.app.navigation.NavigationManager$1$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return NavigationManager.BinderC03181.$r8$lambda$GO2OrYvvWaXZTH1XkmNcVUSxmKU(this.f$0);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$GO2OrYvvWaXZTH1XkmNcVUSxmKU(BinderC03181 binderC03181) {
            NavigationManager.this.onStopNavigation();
            return null;
        }
    }
}
