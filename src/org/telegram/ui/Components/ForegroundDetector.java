package org.telegram.ui.Components;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ForegroundDetector implements Application.ActivityLifecycleCallbacks {
    private static ForegroundDetector Instance;
    private int refs;
    private boolean wasInBackground = true;
    private long enterBackgroundTime = 0;
    private CopyOnWriteArrayList<Listener> listeners = new CopyOnWriteArrayList<>();
    private final ArrayList<WeakReference<Activity>> resumedActivities = new ArrayList<>();

    public interface Listener {
        void onBecameBackground();

        void onBecameForeground();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public static ForegroundDetector getInstance() {
        return Instance;
    }

    public Activity getForegroundActivity() {
        Activity activity = null;
        for (int size = this.resumedActivities.size() - 1; size >= 0; size--) {
            Activity activity2 = this.resumedActivities.get(size).get();
            if (activity2 == null || activity2.isFinishing() || activity2.isDestroyed()) {
                this.resumedActivities.remove(size);
            } else {
                if (activity2.hasWindowFocus()) {
                    return activity2;
                }
                if (activity == null) {
                    activity = activity2;
                }
            }
        }
        return activity;
    }

    private void removeActivity(Activity activity) {
        for (int size = this.resumedActivities.size() - 1; size >= 0; size--) {
            Activity activity2 = this.resumedActivities.get(size).get();
            if (activity2 == null || activity2 == activity) {
                this.resumedActivities.remove(size);
            }
        }
    }

    public ForegroundDetector(Application application) {
        Instance = this;
        application.registerActivityLifecycleCallbacks(this);
    }

    public boolean isForeground() {
        return this.refs > 0;
    }

    public boolean isBackground() {
        return this.refs == 0;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        int i = this.refs + 1;
        this.refs = i;
        if (i == 1) {
            if (SystemClock.elapsedRealtime() - this.enterBackgroundTime < 200) {
                this.wasInBackground = false;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("switch to foreground");
            }
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onBecameForeground();
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
        }
    }

    public boolean isWasInBackground(boolean z) {
        if (z && SystemClock.elapsedRealtime() - this.enterBackgroundTime < 200) {
            this.wasInBackground = false;
        }
        return this.wasInBackground;
    }

    public void resetBackgroundVar() {
        this.wasInBackground = false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i = this.refs - 1;
        this.refs = i;
        if (i == 0) {
            this.enterBackgroundTime = SystemClock.elapsedRealtime();
            this.wasInBackground = true;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("switch to background");
            }
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onBecameBackground();
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        removeActivity(activity);
        this.resumedActivities.add(new WeakReference<>(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        removeActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        removeActivity(activity);
    }
}
