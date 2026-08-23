package androidx.car.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.util.Log;
import androidx.car.app.ICarApp;
import androidx.car.app.serialization.Bundleable;
import androidx.car.app.utils.RemoteUtils;
import androidx.car.app.utils.ThreadUtils;
import androidx.car.app.validation.HostValidator;
import androidx.car.app.versioning.CarAppApiLevels;
import androidx.view.Lifecycle;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
final class CarAppBinder extends ICarApp.Stub {
    private Session mCurrentSession;
    private final SessionInfo mCurrentSessionInfo;
    private HandshakeInfo mHandshakeInfo;
    private HostValidator mHostValidator;
    private CarAppService mService;

    private Lifecycle getCurrentLifecycle() {
        return null;
    }

    public Session getCurrentSession() {
        return null;
    }

    public void onAutoDriveEnabled() {
    }

    public void onDestroyLifecycle() {
    }

    public CarAppBinder(CarAppService carAppService, SessionInfo sessionInfo) {
        this.mCurrentSessionInfo = sessionInfo;
    }

    public void destroy() {
        onDestroyLifecycle();
        this.mHandshakeInfo = null;
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
        carAppBinder.getClass();
        throw null;
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
        carAppBinder.getClass();
        throw null;
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
        carAppBinder.getClass();
        throw null;
    }

    @Override // androidx.car.app.ICarApp
    public void onAppPause(IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onAppPause", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda1
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.m1608$r8$lambda$9yqtiei5dqpkoINHKvUxBxuvs(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$9yq-tiei5dqpkoINH-KvUxBxuvs, reason: not valid java name */
    public static /* synthetic */ Object m1608$r8$lambda$9yqtiei5dqpkoINHKvUxBxuvs(CarAppBinder carAppBinder) {
        carAppBinder.getClass();
        throw null;
    }

    @Override // androidx.car.app.ICarApp
    public void onAppStop(IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onAppStop", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda3
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.m1607$r8$lambda$NmrdC46ynLALOfGH0FYY9n6M6o(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-NmrdC46ynLALOfGH0FYY9n6M6o, reason: not valid java name */
    public static /* synthetic */ Object m1607$r8$lambda$NmrdC46ynLALOfGH0FYY9n6M6o(CarAppBinder carAppBinder) {
        carAppBinder.getClass();
        throw null;
    }

    @Override // androidx.car.app.ICarApp
    public void onNewIntent(final Intent intent, IOnDoneCallback iOnDoneCallback) {
        RemoteUtils.dispatchCallFromHost(getCurrentLifecycle(), iOnDoneCallback, "onNewIntent", new RemoteUtils.HostCall() { // from class: androidx.car.app.CarAppBinder$$ExternalSyntheticLambda6
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarAppBinder.m1609$r8$lambda$r2GCoVHE6N83Ffmv4fYzhYrccc(this.f$0, intent);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$r2-GCoVHE6N83Ffmv4fYzhYrccc, reason: not valid java name */
    public static /* synthetic */ Object m1609$r8$lambda$r2GCoVHE6N83Ffmv4fYzhYrccc(CarAppBinder carAppBinder, Intent intent) {
        carAppBinder.getClass();
        throw null;
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
        carAppBinder.getClass();
        throw null;
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
        carAppBinder.getClass();
        throw null;
    }

    @Override // androidx.car.app.ICarApp
    public void getAppInfo(IOnDoneCallback iOnDoneCallback) {
        throw null;
    }

    @Override // androidx.car.app.ICarApp
    public void onHandshakeCompleted(Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
        throw null;
    }

    private HostValidator getHostValidator() {
        Object obj = null;
        obj.getClass();
        return null;
    }

    private void onNewIntentInternal(Session session, Intent intent) {
        ThreadUtils.checkMainThread();
        throw null;
    }

    private void onConfigurationChangedInternal(Session session, Configuration configuration) {
        ThreadUtils.checkMainThread();
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onCarConfigurationChanged configuration: " + configuration);
        }
        throw null;
    }

    public void setHandshakeInfo(HandshakeInfo handshakeInfo) {
        int hostCarAppApiLevel = handshakeInfo.getHostCarAppApiLevel();
        if (!CarAppApiLevels.isValid(hostCarAppApiLevel)) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Invalid Car App API level received: ", hostCarAppApiLevel);
        } else {
            this.mHandshakeInfo = handshakeInfo;
        }
    }

    public HandshakeInfo getHandshakeInfo() {
        return this.mHandshakeInfo;
    }

    public SessionInfo getCurrentSessionInfo() {
        return this.mCurrentSessionInfo;
    }
}
