package androidx.car.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.display.DisplayManager;
import android.util.Log;
import androidx.car.app.IOnRequestPermissionsListener;
import androidx.car.app.constraints.ConstraintManager;
import androidx.car.app.hardware.CarHardwareManager;
import androidx.car.app.managers.Manager;
import androidx.car.app.managers.ManagerCache;
import androidx.car.app.managers.ManagerFactory;
import androidx.car.app.managers.ResultManager;
import androidx.car.app.media.MediaPlaybackManager;
import androidx.car.app.navigation.NavigationManager;
import androidx.car.app.suggestion.SuggestionManager;
import androidx.car.app.utils.ThreadUtils;
import androidx.view.DefaultLifecycleObserver;
import androidx.view.Lifecycle;
import androidx.view.LifecycleOwner;
import androidx.view.OnBackPressedDispatcher;
import com.chaquo.python.internal.Common;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public class CarContext extends ContextWrapper {
    private int mCarAppApiLevel;
    private final HostDispatcher mHostDispatcher;
    private HostInfo mHostInfo;
    private final Lifecycle mLifecycle;
    private final ManagerCache mManagers;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;

    public static CarContext create(Lifecycle lifecycle) {
        return new CarContext(lifecycle, new HostDispatcher());
    }

    public <T> T getCarService(Class<T> cls) {
        Objects.requireNonNull(cls);
        return (T) this.mManagers.getOrCreate(cls);
    }

    public OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    public int getCarAppApiLevel() {
        int i = this.mCarAppApiLevel;
        if (i != 0) {
            return i;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Car App API level hasn't been established yet");
        return 0;
    }

    /* JADX INFO: renamed from: androidx.car.app.CarContext$1 */
    class BinderC03011 extends IOnRequestPermissionsListener.Stub {
        final /* synthetic */ Executor val$executor;
        final /* synthetic */ Lifecycle val$lifecycle;
        final /* synthetic */ OnRequestPermissionsListener val$listener;

        public BinderC03011(Lifecycle lifecycle, Executor executor, OnRequestPermissionsListener onRequestPermissionsListener) {
            this.val$lifecycle = lifecycle;
            this.val$executor = executor;
        }

        @Override // androidx.car.app.IOnRequestPermissionsListener
        public void onRequestPermissionsResult(String[] strArr, String[] strArr2) {
            if (this.val$lifecycle.getState().isAtLeast(Lifecycle.State.CREATED)) {
                final List listAsList = Arrays.asList(strArr);
                final List listAsList2 = Arrays.asList(strArr2);
                final OnRequestPermissionsListener onRequestPermissionsListener = null;
                this.val$executor.execute(new Runnable(onRequestPermissionsListener, listAsList, listAsList2) { // from class: androidx.car.app.CarContext$1$$ExternalSyntheticLambda0
                    public final /* synthetic */ List f$1;
                    public final /* synthetic */ List f$2;

                    {
                        this.f$1 = listAsList;
                        this.f$2 = listAsList2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        ((OnRequestPermissionsListener) null).onRequestPermissionsResult(this.f$1, this.f$2);
                    }
                });
            }
        }
    }

    public void setCarHost(ICarHost iCarHost) {
        ThreadUtils.checkMainThread();
        HostDispatcher hostDispatcher = this.mHostDispatcher;
        Objects.requireNonNull(iCarHost);
        hostDispatcher.setCarHost(iCarHost);
    }

    public void onCarConfigurationChanged(Configuration configuration) {
        ThreadUtils.checkMainThread();
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Car configuration changed, configuration: " + configuration + ", displayMetrics: " + getResources().getDisplayMetrics());
        }
        Resources resources = getResources();
        Objects.requireNonNull(configuration);
        resources.updateConfiguration(configuration, getResources().getDisplayMetrics());
    }

    public void updateHandshakeInfo(HandshakeInfo handshakeInfo) {
        this.mCarAppApiLevel = handshakeInfo.getHostCarAppApiLevel();
    }

    public void updateHostInfo(HostInfo hostInfo) {
        this.mHostInfo = hostInfo;
    }

    public void attachBaseContext(Context context, Configuration configuration) {
        ThreadUtils.checkMainThread();
        if (getBaseContext() == null) {
            Object systemService = context.getSystemService("display");
            Objects.requireNonNull(systemService);
            attachBaseContext(context.createDisplayContext(((DisplayManager) systemService).createVirtualDisplay("CarAppService", configuration.screenWidthDp, configuration.screenHeightDp, configuration.densityDpi, null, 8).getDisplay()).createConfigurationContext(configuration));
        }
        onCarConfigurationChanged(configuration);
    }

    public CarContext(final Lifecycle lifecycle, final HostDispatcher hostDispatcher) {
        super(null);
        ManagerCache managerCache = new ManagerCache();
        this.mManagers = managerCache;
        this.mCarAppApiLevel = 0;
        this.mHostInfo = null;
        this.mHostDispatcher = hostDispatcher;
        managerCache.addFactory(AppManager.class, Common.ASSET_APP, new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda0
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                return CarContext.m1702$r8$lambda$Oge6vCqhd2R3YU4xmfvqs0fkwo(this.f$0, hostDispatcher, lifecycle);
            }
        });
        managerCache.addFactory(NavigationManager.class, "navigation", new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda1
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                return CarContext.$r8$lambda$VoMvO9zmKiD220_sh3u0fxFT3G0(this.f$0, hostDispatcher, lifecycle);
            }
        });
        managerCache.addFactory(ScreenManager.class, "screen", new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda2
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                return CarContext.$r8$lambda$uI7jlReeLpvE9gQT_cKxXLPvj4w(this.f$0, lifecycle);
            }
        });
        managerCache.addFactory(ConstraintManager.class, "constraints", new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda3
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                return CarContext.$r8$lambda$rWkxYj29lgUN5flLv3OH1oavxkw(this.f$0, hostDispatcher);
            }
        });
        managerCache.addFactory(CarHardwareManager.class, "hardware", new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda4
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                return CarContext.$r8$lambda$oRslYWvJSzlVhA1P74n6gPzrVNw(this.f$0, hostDispatcher);
            }
        });
        managerCache.addFactory(ResultManager.class, null, new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda5
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                CarContext.$r8$lambda$PLFyesAEudIcWeAhSdKCU9rg_lM(this.f$0);
                return null;
            }
        });
        managerCache.addFactory(SuggestionManager.class, "suggestion", new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda6
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                return CarContext.$r8$lambda$1IuE5DcaI6ei0ccTfAZBaHqwYWc(this.f$0, hostDispatcher, lifecycle);
            }
        });
        managerCache.addFactory(MediaPlaybackManager.class, "media_playback", new ManagerFactory() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda7
            @Override // androidx.car.app.managers.ManagerFactory
            public final Manager create() {
                return CarContext.$r8$lambda$7CC6CVHCHo4nEigSvYlAvcSVOH4(this.f$0, hostDispatcher, lifecycle);
            }
        });
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() { // from class: androidx.car.app.CarContext$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ((ScreenManager) this.f$0.getCarService(ScreenManager.class)).pop();
            }
        });
        this.mLifecycle = lifecycle;
        lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: androidx.car.app.CarContext.2
            @Override // androidx.view.DefaultLifecycleObserver
            public void onDestroy(LifecycleOwner lifecycleOwner) {
                hostDispatcher.resetHosts();
                lifecycleOwner.getLifecycle().removeObserver(this);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Oge6vCqhd2R3YU4xmfvqs-0fkwo, reason: not valid java name */
    public static /* synthetic */ AppManager m1702$r8$lambda$Oge6vCqhd2R3YU4xmfvqs0fkwo(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        carContext.getClass();
        return AppManager.create(carContext, hostDispatcher, lifecycle);
    }

    public static /* synthetic */ NavigationManager $r8$lambda$VoMvO9zmKiD220_sh3u0fxFT3G0(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        carContext.getClass();
        return NavigationManager.create(carContext, hostDispatcher, lifecycle);
    }

    public static /* synthetic */ ScreenManager $r8$lambda$uI7jlReeLpvE9gQT_cKxXLPvj4w(CarContext carContext, Lifecycle lifecycle) {
        carContext.getClass();
        return ScreenManager.create(carContext, lifecycle);
    }

    public static /* synthetic */ ConstraintManager $r8$lambda$rWkxYj29lgUN5flLv3OH1oavxkw(CarContext carContext, HostDispatcher hostDispatcher) {
        carContext.getClass();
        return ConstraintManager.create(carContext, hostDispatcher);
    }

    public static /* synthetic */ CarHardwareManager $r8$lambda$oRslYWvJSzlVhA1P74n6gPzrVNw(CarContext carContext, HostDispatcher hostDispatcher) {
        carContext.getClass();
        return CarHardwareManager.create(carContext, hostDispatcher);
    }

    public static /* synthetic */ ResultManager $r8$lambda$PLFyesAEudIcWeAhSdKCU9rg_lM(CarContext carContext) {
        carContext.getClass();
        ResultManager.create(carContext);
        return null;
    }

    public static /* synthetic */ SuggestionManager $r8$lambda$1IuE5DcaI6ei0ccTfAZBaHqwYWc(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        carContext.getClass();
        return SuggestionManager.create(carContext, hostDispatcher, lifecycle);
    }

    public static /* synthetic */ MediaPlaybackManager $r8$lambda$7CC6CVHCHo4nEigSvYlAvcSVOH4(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        carContext.getClass();
        return MediaPlaybackManager.create(carContext, hostDispatcher, lifecycle);
    }
}
