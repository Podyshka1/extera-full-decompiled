package androidx.car.app;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import androidx.car.app.utils.ThreadUtils;
import androidx.car.app.validation.HostValidator;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CarAppService extends Service {
    private AppInfo mAppInfo;
    private final Map<SessionInfo, CarAppBinder> mBinders = new HashMap();
    private HostInfo mHostInfo;

    public abstract HostValidator createHostValidator();

    @Override // android.app.Service
    public void onDestroy() {
        synchronized (this.mBinders) {
            try {
                Iterator<CarAppBinder> it = this.mBinders.values().iterator();
                while (it.hasNext()) {
                    it.next().destroy();
                }
                this.mBinders.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        SessionInfo sessionInfoDecode;
        CarAppBinder carAppBinder;
        if (SessionInfoIntentEncoder.containsSessionInfo(intent)) {
            sessionInfoDecode = SessionInfoIntentEncoder.decode(intent);
        } else {
            sessionInfoDecode = SessionInfo.DEFAULT_SESSION_INFO;
        }
        synchronized (this.mBinders) {
            try {
                if (!this.mBinders.containsKey(sessionInfoDecode)) {
                    this.mBinders.put(sessionInfoDecode, new CarAppBinder(this, sessionInfoDecode));
                }
                CarAppBinder carAppBinder2 = this.mBinders.get(sessionInfoDecode);
                Objects.requireNonNull(carAppBinder2);
                carAppBinder = carAppBinder2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return carAppBinder;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        final SessionInfo sessionInfoDecode;
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onUnbind intent: " + intent);
        }
        if (SessionInfoIntentEncoder.containsSessionInfo(intent)) {
            sessionInfoDecode = SessionInfoIntentEncoder.decode(intent);
        } else {
            sessionInfoDecode = SessionInfo.DEFAULT_SESSION_INFO;
        }
        ThreadUtils.runOnMain(new Runnable() { // from class: androidx.car.app.CarAppService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CarAppService.$r8$lambda$BoF8lRhyLvMMyIqziQS6Yiscbqo(this.f$0, sessionInfoDecode);
            }
        });
        if (!Log.isLoggable("CarApp", 3)) {
            return true;
        }
        Log.d("CarApp", "onUnbind completed");
        return true;
    }

    public static /* synthetic */ void $r8$lambda$BoF8lRhyLvMMyIqziQS6Yiscbqo(CarAppService carAppService, SessionInfo sessionInfo) {
        synchronized (carAppService.mBinders) {
            try {
                CarAppBinder carAppBinderRemove = carAppService.mBinders.remove(sessionInfo);
                if (carAppBinderRemove != null) {
                    carAppBinderRemove.onDestroyLifecycle();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Session onCreateSession() {
        throw new RuntimeException("Please override and implement CarAppService#onCreateSession(SessionInfo).");
    }

    public Session onCreateSession(SessionInfo sessionInfo) {
        return onCreateSession();
    }

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
        for (String str : strArr) {
            if ("AUTO_DRIVE".equals(str)) {
                ThreadUtils.runOnMain(new Runnable() { // from class: androidx.car.app.CarAppService$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CarAppService.m1754$r8$lambda$qvBH8jOIRqebk_oQomZTKGMWMw(this.f$0);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$qvBH8jOIRq-ebk_oQomZTKGMWMw, reason: not valid java name */
    public static /* synthetic */ void m1754$r8$lambda$qvBH8jOIRqebk_oQomZTKGMWMw(CarAppService carAppService) {
        synchronized (carAppService.mBinders) {
            try {
                for (CarAppBinder carAppBinder : carAppService.mBinders.values()) {
                    if (Log.isLoggable("CarApp", 3)) {
                        Log.d("CarApp", "Executing onAutoDriveEnabled for " + carAppBinder.getCurrentSessionInfo());
                    }
                    carAppBinder.onAutoDriveEnabled();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final HostInfo getHostInfo() {
        return this.mHostInfo;
    }

    public void setHostInfo(HostInfo hostInfo) {
        this.mHostInfo = hostInfo;
    }

    public AppInfo getAppInfo() {
        if (this.mAppInfo == null) {
            this.mAppInfo = AppInfo.create(this);
        }
        return this.mAppInfo;
    }
}
