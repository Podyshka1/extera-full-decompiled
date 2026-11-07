package androidx.car.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.util.Log;
import androidx.car.app.ICarApp;
import androidx.car.app.navigation.NavigationManager;
import androidx.car.app.serialization.Bundleable;
import androidx.car.app.serialization.BundlerException;
import androidx.car.app.utils.RemoteUtils;
import androidx.car.app.utils.ThreadUtils;
import androidx.car.app.validation.HostValidator;
import androidx.car.app.versioning.CarAppApiLevels;
import androidx.view.Lifecycle;
import androidx.view.LifecycleRegistry;
import com.chaquo.python.internal.Common;
import java.security.InvalidParameterException;
import java.util.Objects;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
final class CarAppBinder extends ICarApp.Stub {
    private Session mCurrentSession;
    private final SessionInfo mCurrentSessionInfo;
    private HandshakeInfo mHandshakeInfo;
    private HostValidator mHostValidator;
    private CarAppService mService;

    public CarAppBinder(CarAppService carAppService, SessionInfo sessionInfo) {
        this.mService = carAppService;
        this.mCurrentSessionInfo = sessionInfo;
    }

    public void destroy() {
        onDestroyLifecycle();
        this.mCurrentSession = null;
        this.mHostValidator = null;
        this.mHandshakeInfo = null;
        this.mService = null;
    }

    public void onDestroyLifecycle() {
        Session session = this.mCurrentSession;
        if (session != null) {
            session.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        }
        this.mCurrentSession = null;
    }

    @Override // androidx.car.app.ICarApp
    public void onAppCreate(final ICarHost iCarHost, final Intent intent, final Configuration configuration, IOnDoneCallback iOnDoneCallback) {
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onAppCreate intent: " + intent);
        }
        RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onAppCreate", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda4
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.$r8$lambda$qV15wLbZchZqw7AYDWUTdB04thg(this.f$0, iCarHost, configuration, intent);
            }
        });
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onAppCreate completed");
        }
    }

    public static /* synthetic */ Object $r8$lambda$qV15wLbZchZqw7AYDWUTdB04thg(CarAppBinder carAppBinder, ICarHost iCarHost, Configuration configuration, Intent intent) {
        CarAppService carAppService = carAppBinder.mService;
        Objects.requireNonNull(carAppService);
        Session sessionOnCreateSession = carAppBinder.mCurrentSession;
        if (sessionOnCreateSession == null || sessionOnCreateSession.getLifecycle().getState() == Lifecycle.State.DESTROYED) {
            SessionInfo sessionInfo = carAppBinder.mCurrentSessionInfo;
            Objects.requireNonNull(sessionInfo);
            sessionOnCreateSession = carAppService.onCreateSession(sessionInfo);
            carAppBinder.mCurrentSession = sessionOnCreateSession;
        }
        HandshakeInfo handshakeInfo = carAppBinder.getHandshakeInfo();
        Objects.requireNonNull(handshakeInfo);
        HostInfo hostInfo = carAppService.getHostInfo();
        Objects.requireNonNull(hostInfo);
        sessionOnCreateSession.configure(carAppService, handshakeInfo, hostInfo, iCarHost, configuration);
        LifecycleRegistry lifecycleRegistry = (LifecycleRegistry) sessionOnCreateSession.getLifecycle();
        Lifecycle.State state = lifecycleRegistry.getState();
        int size = ((ScreenManager) sessionOnCreateSession.getCarContext().getCarService(ScreenManager.class)).getScreenStackInternal().size();
        if (!state.isAtLeast(Lifecycle.State.CREATED) || size < 1) {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "onAppCreate the app was not yet created or the screen stack was empty state: " + lifecycleRegistry.getState() + ", stack size: " + size);
            }
            sessionOnCreateSession.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
            ((ScreenManager) sessionOnCreateSession.getCarContext().getCarService(ScreenManager.class)).push(sessionOnCreateSession.onCreateScreen(intent));
            return null;
        }
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onAppCreate the app was already created");
        }
        carAppBinder.onNewIntentInternal(sessionOnCreateSession, intent);
        return null;
    }

    @Override // androidx.car.app.ICarApp
    public void onAppStart(IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onAppStart", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda2
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.$r8$lambda$PVFAimZMMIOaPhkV65sW3A2TlPU(this.f$0);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$PVFAimZMMIOaPhkV65sW3A2TlPU(CarAppBinder carAppBinder) {
        Session session = carAppBinder.mCurrentSession;
        Objects.requireNonNull(session);
        session.handleLifecycleEvent(Lifecycle.Event.ON_START);
        return null;
    }

    @Override // androidx.car.app.ICarApp
    public void onAppResume(IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onAppResume", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda7
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.$r8$lambda$7Uack6mc_KLNEQNXfnJY9SPsiFU(this.f$0);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$7Uack6mc_KLNEQNXfnJY9SPsiFU(CarAppBinder carAppBinder) {
        Session session = carAppBinder.mCurrentSession;
        Objects.requireNonNull(session);
        session.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
        return null;
    }

    @Override // androidx.car.app.ICarApp
    public void onAppPause(IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onAppPause", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda1
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.m1699$r8$lambda$9yqtiei5dqpkoINHKvUxBxuvs(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$9yq-tiei5dqpkoINH-KvUxBxuvs, reason: not valid java name */
    public static /* synthetic */ Object m1699$r8$lambda$9yqtiei5dqpkoINHKvUxBxuvs(CarAppBinder carAppBinder) {
        Session session = carAppBinder.mCurrentSession;
        Objects.requireNonNull(session);
        session.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        return null;
    }

    @Override // androidx.car.app.ICarApp
    public void onAppStop(IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onAppStop", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda3
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.m1698$r8$lambda$NmrdC46ynLALOfGH0FYY9n6M6o(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-NmrdC46ynLALOfGH0FYY9n6M6o, reason: not valid java name */
    public static /* synthetic */ Object m1698$r8$lambda$NmrdC46ynLALOfGH0FYY9n6M6o(CarAppBinder carAppBinder) {
        Session session = carAppBinder.mCurrentSession;
        Objects.requireNonNull(session);
        session.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        return null;
    }

    @Override // androidx.car.app.ICarApp
    public void onNewIntent(final Intent intent, IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onNewIntent", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda6
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.m1700$r8$lambda$r2GCoVHE6N83Ffmv4fYzhYrccc(this.f$0, intent);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$r2-GCoVHE6N83Ffmv4fYzhYrccc, reason: not valid java name */
    public static /* synthetic */ Object m1700$r8$lambda$r2GCoVHE6N83Ffmv4fYzhYrccc(CarAppBinder carAppBinder, Intent intent) {
        Session session = carAppBinder.mCurrentSession;
        Objects.requireNonNull(session);
        carAppBinder.onNewIntentInternal(session, intent);
        return null;
    }

    @Override // androidx.car.app.ICarApp
    public void onConfigurationChanged(final Configuration configuration, IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onConfigurationChanged", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda0
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.$r8$lambda$XEfwwvAnIshhGblecnxdG4sh6nQ(this.f$0, configuration);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$XEfwwvAnIshhGblecnxdG4sh6nQ(CarAppBinder carAppBinder, Configuration configuration) {
        Session session = carAppBinder.mCurrentSession;
        Objects.requireNonNull(session);
        carAppBinder.onConfigurationChangedInternal(session, configuration);
        return null;
    }

    @Override // androidx.car.app.ICarApp
    public void getManager(final String str, final IOnDoneCallback iOnDoneCallback) {
        ThreadUtils.runOnMain(new Runnable() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CarAppBinder.$r8$lambda$IlVDu2UN1ozorozvq1aLAqao2a8(this.f$0, str, iOnDoneCallback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$IlVDu2UN1ozorozvq1aLAqao2a8(CarAppBinder carAppBinder, String str, IOnDoneCallback iOnDoneCallback) {
        Session session = carAppBinder.mCurrentSession;
        Objects.requireNonNull(session);
        str.getClass();
        if (str.equals(Common.ASSET_APP)) {
            RemoteUtils.sendSuccessResponseToHost(iOnDoneCallback, "getManager", ((AppManager) session.getCarContext().getCarService(AppManager.class)).getIInterface());
        } else if (str.equals("navigation")) {
            RemoteUtils.sendSuccessResponseToHost(iOnDoneCallback, "getManager", ((NavigationManager) session.getCarContext().getCarService(NavigationManager.class)).getIInterface());
        } else {
            Log.e("CarApp", str.concat("%s is not a valid manager"));
            RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "getManager", new InvalidParameterException(str.concat(" is not a valid manager type")));
        }
    }

    @Override // androidx.car.app.ICarApp
    public void getAppInfo(IOnDoneCallback iOnDoneCallback) {
        try {
            CarAppService carAppService = this.mService;
            Objects.requireNonNull(carAppService);
            RemoteUtils.sendSuccessResponseToHost(iOnDoneCallback, "getAppInfo", carAppService.getAppInfo());
        } catch (IllegalArgumentException e) {
            RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "getAppInfo", e);
        }
    }

    @Override // androidx.car.app.ICarApp
    public void onHandshakeCompleted(Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
        CarAppService carAppService = this.mService;
        Objects.requireNonNull(carAppService);
        try {
            HandshakeInfo handshakeInfo = (HandshakeInfo) bundleable.get();
            String hostPackageName = handshakeInfo.getHostPackageName();
            int callingUid = Binder.getCallingUid();
            HostInfo hostInfo = new HostInfo(hostPackageName, callingUid);
            if (!getHostValidator().isValidHost(hostInfo)) {
                RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "onHandshakeCompleted", new IllegalArgumentException("Unknown host '" + hostPackageName + "', uid:" + callingUid));
                return;
            }
            AppInfo appInfo = carAppService.getAppInfo();
            int minCarAppApiLevel = appInfo.getMinCarAppApiLevel();
            int latestCarAppApiLevel = appInfo.getLatestCarAppApiLevel();
            int hostCarAppApiLevel = handshakeInfo.getHostCarAppApiLevel();
            if (minCarAppApiLevel > hostCarAppApiLevel) {
                RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "onHandshakeCompleted", new IllegalArgumentException("Host API level (" + hostCarAppApiLevel + ") is less than the app's min API level (" + minCarAppApiLevel + ")"));
                return;
            }
            if (latestCarAppApiLevel < hostCarAppApiLevel) {
                RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "onHandshakeCompleted", new IllegalArgumentException("Host API level (" + hostCarAppApiLevel + ") is greater than the app's max API level (" + latestCarAppApiLevel + ")"));
                return;
            }
            carAppService.setHostInfo(hostInfo);
            this.mHandshakeInfo = handshakeInfo;
            RemoteUtils.sendSuccessResponseToHost(iOnDoneCallback, "onHandshakeCompleted", null);
        } catch (BundlerException e) {
            e = e;
            carAppService.setHostInfo(null);
            RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "onHandshakeCompleted", e);
        } catch (IllegalArgumentException e2) {
            e = e2;
            carAppService.setHostInfo(null);
            RemoteUtils.sendFailureResponseToHost(iOnDoneCallback, "onHandshakeCompleted", e);
        }
    }

    private Lifecycle getCurrentLifecycle() {
        Session session = this.mCurrentSession;
        if (session == null) {
            return null;
        }
        return session.getLifecycle();
    }

    private HostValidator getHostValidator() {
        if (this.mHostValidator == null) {
            CarAppService carAppService = this.mService;
            Objects.requireNonNull(carAppService);
            this.mHostValidator = carAppService.createHostValidator();
        }
        return this.mHostValidator;
    }

    private void onNewIntentInternal(Session session, Intent intent) {
        ThreadUtils.checkMainThread();
        session.onNewIntent(intent);
    }

    private void onConfigurationChangedInternal(Session session, Configuration configuration) {
        ThreadUtils.checkMainThread();
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onCarConfigurationChanged configuration: " + configuration);
        }
        session.onCarConfigurationChangedInternal(configuration);
    }

    public void onAutoDriveEnabled() {
        Session session = this.mCurrentSession;
        if (session != null) {
            ((NavigationManager) session.getCarContext().getCarService(NavigationManager.class)).onAutoDriveEnabled();
        }
    }

    public void setHandshakeInfo(HandshakeInfo handshakeInfo) {
        int hostCarAppApiLevel = handshakeInfo.getHostCarAppApiLevel();
        if (!CarAppApiLevels.isValid(hostCarAppApiLevel)) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m860m("Invalid Car App API level received: ", hostCarAppApiLevel);
        } else {
            this.mHandshakeInfo = handshakeInfo;
        }
    }

    public HandshakeInfo getHandshakeInfo() {
        return this.mHandshakeInfo;
    }

    public Session getCurrentSession() {
        return this.mCurrentSession;
    }

    public SessionInfo getCurrentSessionInfo() {
        return this.mCurrentSessionInfo;
    }
}
