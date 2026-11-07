package androidx.car.app.notification;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.car.app.IStartCarApp;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class CarAppNotificationBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        IBinder binder;
        ComponentName componentName = (ComponentName) intent.getParcelableExtra("androidx.car.app.notification.COMPONENT_EXTRA_KEY");
        intent.removeExtra("androidx.car.app.notification.COMPONENT_EXTRA_KEY");
        intent.setComponent(componentName);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            binder = extras.getBinder("androidx.car.app.extra.START_CAR_APP_BINDER_KEY");
            extras.remove("androidx.car.app.extra.START_CAR_APP_BINDER_KEY");
        } else {
            binder = null;
        }
        if (binder == null) {
            Log.e("CarApp.NBR", "Notification intent missing expected extra: " + intent);
        } else {
            IStartCarApp iStartCarAppAsInterface = IStartCarApp.Stub.asInterface(binder);
            Objects.requireNonNull(iStartCarAppAsInterface);
            final IStartCarApp iStartCarApp = iStartCarAppAsInterface;
            RemoteUtils.dispatchCallToHost("startCarApp from notification", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.notification.CarAppNotificationBroadcastReceiver$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
                public final Object call() {
                    return CarAppNotificationBroadcastReceiver.m1769$r8$lambda$qh3KUTu1iDCbG2k9wImwtKNT7Q(iStartCarApp, intent);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$q-h3KUTu1iDCbG2k9wImwtKNT7Q, reason: not valid java name */
    public static /* synthetic */ Object m1769$r8$lambda$qh3KUTu1iDCbG2k9wImwtKNT7Q(IStartCarApp iStartCarApp, Intent intent) {
        iStartCarApp.startCarApp(intent);
        return null;
    }
}
