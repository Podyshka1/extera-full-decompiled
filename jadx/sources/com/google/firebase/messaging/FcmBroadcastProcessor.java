package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class FcmBroadcastProcessor {
    private static WithinAppServiceConnection fcmServiceConn;
    private static final Object lock = new Object();
    private final Context context;
    private final Executor executor = new CredentialManager$$ExternalSyntheticLambda0();

    public FcmBroadcastProcessor(Context context) {
        this.context = context;
    }

    public Task process(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return startMessagingService(this.context, intent);
    }

    public Task startMessagingService(final Context context, final Intent intent) {
        boolean z = PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26;
        final boolean z2 = (intent.getFlags() & 268435456) != 0;
        if (z && !z2) {
            return bindToMessagingService(context, intent, z2);
        }
        return Tasks.call(this.executor, new Callable() { // from class: com.google.firebase.messaging.FcmBroadcastProcessor$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Integer.valueOf(ServiceStarter.getInstance().startMessagingService(context, intent));
            }
        }).continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.messaging.FcmBroadcastProcessor$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return FcmBroadcastProcessor.m3543$r8$lambda$7tuBEF0Y9HKYiHL1KguBHpRmY(context, intent, z2, task);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-7tuBEF0Y9HKY-iHL1KguBHpRmY, reason: not valid java name */
    public static /* synthetic */ Task m3543$r8$lambda$7tuBEF0Y9HKYiHL1KguBHpRmY(Context context, Intent intent, boolean z, Task task) {
        return (PlatformVersion.isAtLeastO() && ((Integer) task.getResult()).intValue() == 402) ? bindToMessagingService(context, intent, z).continueWith(new CredentialManager$$ExternalSyntheticLambda0(), new Continuation() { // from class: com.google.firebase.messaging.FcmBroadcastProcessor$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return FcmBroadcastProcessor.$r8$lambda$gHDK62Zf5oWXQUZhN2QtKJuRFrs(task2);
            }
        }) : task;
    }

    public static /* synthetic */ Integer $r8$lambda$gHDK62Zf5oWXQUZhN2QtKJuRFrs(Task task) {
        return 403;
    }

    private static Task bindToMessagingService(Context context, Intent intent, boolean z) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        WithinAppServiceConnection serviceConnection = getServiceConnection(context, "com.google.firebase.MESSAGING_EVENT");
        if (z) {
            if (ServiceStarter.getInstance().hasWakeLockPermission(context)) {
                WakeLockHolder.sendWakefulServiceIntent(context, serviceConnection, intent);
            } else {
                serviceConnection.sendIntent(intent);
            }
            return Tasks.forResult(-1);
        }
        return serviceConnection.sendIntent(intent).continueWith(new CredentialManager$$ExternalSyntheticLambda0(), new Continuation() { // from class: com.google.firebase.messaging.FcmBroadcastProcessor$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return FcmBroadcastProcessor.$r8$lambda$cemJXu5yEt_ArhTsgQ0nOTd237E(task);
            }
        });
    }

    public static /* synthetic */ Integer $r8$lambda$cemJXu5yEt_ArhTsgQ0nOTd237E(Task task) {
        return -1;
    }

    private static WithinAppServiceConnection getServiceConnection(Context context, String str) {
        WithinAppServiceConnection withinAppServiceConnection;
        synchronized (lock) {
            try {
                if (fcmServiceConn == null) {
                    fcmServiceConn = new WithinAppServiceConnection(context, str);
                }
                withinAppServiceConnection = fcmServiceConn;
            } catch (Throwable th) {
                throw th;
            }
        }
        return withinAppServiceConnection;
    }
}
