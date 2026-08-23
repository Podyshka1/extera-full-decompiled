package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.stats.WakeLock;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
abstract class WakeLockHolder {
    static final long WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS = TimeUnit.MINUTES.toMillis(1);
    private static final Object syncObject = new Object();
    private static WakeLock wakeLock;

    private static void checkAndInitWakeLock(Context context) {
        if (wakeLock == null) {
            WakeLock wakeLock2 = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            wakeLock = wakeLock2;
            wakeLock2.setReferenceCounted(true);
        }
    }

    static ComponentName startWakefulService(Context context, Intent intent) {
        synchronized (syncObject) {
            try {
                checkAndInitWakeLock(context);
                boolean zIsWakefulIntent = isWakefulIntent(intent);
                setAsWakefulIntent(intent, true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!zIsWakefulIntent) {
                    wakeLock.acquire(WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS);
                }
                return componentNameStartService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void sendWakefulServiceIntent(Context context, WithinAppServiceConnection withinAppServiceConnection, final Intent intent) {
        synchronized (syncObject) {
            try {
                checkAndInitWakeLock(context);
                boolean zIsWakefulIntent = isWakefulIntent(intent);
                setAsWakefulIntent(intent, true);
                if (!zIsWakefulIntent) {
                    wakeLock.acquire(WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS);
                }
                withinAppServiceConnection.sendIntent(intent).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.firebase.messaging.WakeLockHolder$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        WakeLockHolder.completeWakefulIntent(intent);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void setAsWakefulIntent(Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }

    static boolean isWakefulIntent(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void completeWakefulIntent(Intent intent) {
        synchronized (syncObject) {
            try {
                if (wakeLock != null && isWakefulIntent(intent)) {
                    setAsWakefulIntent(intent, false);
                    wakeLock.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
