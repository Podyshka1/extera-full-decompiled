package com.exteragram.messenger.security;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.biometrics.BiometricPrompt;
import android.hardware.biometrics.BiometricPrompt$AuthenticationCallback;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.core.app.NotificationChannelCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.utils.AppUtils;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class SensitiveRequestSwitch {
    private static Runnable pendingCredentialSuccess;
    private static final Runnable updateNotification = new Runnable() { // from class: com.exteragram.messenger.security.SensitiveRequestSwitch$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            SensitiveRequestSwitch.updateNotification();
        }
    };

    private static native long native_disableAt();

    private static native void native_enforce();

    private static native boolean native_init(String str);

    private static native long native_scheduleDisable();

    public static void init(Context context) {
        try {
            native_init(context.getFilesDir().getAbsolutePath());
            AndroidUtilities.runOnUIThread(updateNotification);
        } catch (Throwable th) {
            FileLog.m1040e(th);
        }
    }

    public static int getState() {
        long jNative_disableAt = native_disableAt();
        if (jNative_disableAt == 0) {
            return 0;
        }
        return System.currentTimeMillis() >= jNative_disableAt ? 2 : 1;
    }

    public static long getDisableAt() {
        return native_disableAt();
    }

    public static String formatDisableAt() {
        Date date = new Date(native_disableAt());
        return LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterDayMonth().format(date), LocaleController.getInstance().getFormatterDay().format(date));
    }

    public static void enforce() {
        native_enforce();
        preferences().edit().remove("notified_disable_at").apply();
        AndroidUtilities.cancelRunOnUIThread(updateNotification);
        cancelNotification();
    }

    public static void requestDisable(final BaseFragment baseFragment, final Runnable runnable) {
        Activity parentActivity = baseFragment != null ? baseFragment.getParentActivity() : null;
        if (parentActivity == null || getState() != 0) {
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(parentActivity, baseFragment.getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.SensitiveRequestsDisableTitle)).setMessage(LocaleController.getString(C2807R.string.SensitiveRequestsDisableText)).setPositiveButton(LocaleController.getString(C2807R.string.SensitiveRequestsDisableAction), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.security.SensitiveRequestSwitch$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                SensitiveRequestSwitch.authenticate(baseFragment, new Runnable() { // from class: com.exteragram.messenger.security.SensitiveRequestSwitch$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        SensitiveRequestSwitch.m3293$r8$lambda$z9ifTVYgpmfZPcuy2uHudzn3n4(runnable);
                    }
                });
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).create();
        baseFragment.showDialog(alertDialogCreate);
        alertDialogCreate.redPositive();
    }

    /* JADX INFO: renamed from: $r8$lambda$z9ifTVYgpmf-ZPcuy2uHudzn3n4, reason: not valid java name */
    public static /* synthetic */ void m3293$r8$lambda$z9ifTVYgpmfZPcuy2uHudzn3n4(Runnable runnable) {
        if (native_scheduleDisable() != 0) {
            updateNotification();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static boolean onActivityResult(int i, int i2) {
        if (i != 22400) {
            return false;
        }
        Runnable runnable = pendingCredentialSuccess;
        pendingCredentialSuccess = null;
        if (runnable == null || i2 != -1) {
            return true;
        }
        runnable.run();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void authenticate(BaseFragment baseFragment, Runnable runnable) {
        Activity parentActivity = baseFragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        KeyguardManager keyguardManager = (KeyguardManager) parentActivity.getSystemService("keyguard");
        if (keyguardManager == null || !keyguardManager.isDeviceSecure()) {
            baseFragment.showDialog(new AlertDialog.Builder(parentActivity, baseFragment.getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.SensitiveRequestsAuthTitle)).setMessage(LocaleController.getString(C2807R.string.SensitiveRequestsScreenLockRequired)).setPositiveButton(LocaleController.getString(C2807R.string.OK), null).create());
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                biometricPrompt(parentActivity, runnable);
            } else {
                deviceCredential(parentActivity, keyguardManager, runnable);
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private static void biometricPrompt(Activity activity, final Runnable runnable) {
        BiometricPrompt.Builder subtitle = SensitiveRequestSwitch$$ExternalSyntheticApiModelOutline0.m291m(activity).setTitle(LocaleController.getString(C2807R.string.SensitiveRequestsAuthTitle)).setSubtitle(LocaleController.getString(C2807R.string.SensitiveRequestsDisableTitle));
        if (Build.VERSION.SDK_INT >= 30) {
            subtitle.setAllowedAuthenticators(32783);
        } else {
            subtitle.setDeviceCredentialAllowed(true);
        }
        subtitle.build().authenticate(new CancellationSignal(), activity.getMainExecutor(), new BiometricPrompt$AuthenticationCallback() { // from class: com.exteragram.messenger.security.SensitiveRequestSwitch.1
            public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                runnable.run();
            }
        });
    }

    private static void deviceCredential(Activity activity, KeyguardManager keyguardManager, Runnable runnable) {
        Intent intentCreateConfirmDeviceCredentialIntent = keyguardManager.createConfirmDeviceCredentialIntent(LocaleController.getString(C2807R.string.SensitiveRequestsAuthTitle), LocaleController.getString(C2807R.string.SensitiveRequestsDisableTitle));
        if (intentCreateConfirmDeviceCredentialIntent == null) {
            return;
        }
        pendingCredentialSuccess = runnable;
        activity.startActivityForResult(intentCreateConfirmDeviceCredentialIntent, 22400);
    }

    private static SharedPreferences preferences() {
        return ApplicationLoader.applicationContext.getSharedPreferences("sensitive_requests", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateNotification() {
        Runnable runnable = updateNotification;
        AndroidUtilities.cancelRunOnUIThread(runnable);
        try {
            int state = getState();
            if (state == 1) {
                long disableAt = getDisableAt();
                AndroidUtilities.runOnUIThread(runnable, Math.max(1000L, (disableAt - System.currentTimeMillis()) + 1000));
                showNotification(createBuilder().setContentTitle(LocaleController.getString(C2807R.string.SensitiveRequestsPendingNotificationTitle)).setContentText(LocaleController.getString(C2807R.string.SensitiveRequestsPendingNotificationText)).setStyle(new NotificationCompat.BigTextStyle().bigText(LocaleController.getString(C2807R.string.SensitiveRequestsPendingNotificationText))).setWhen(disableAt).setShowWhen(true).setUsesChronometer(true).setChronometerCountDown(true).setTimeoutAfter(Math.max(1L, disableAt - System.currentTimeMillis())));
            } else {
                if (state == 2) {
                    long disableAt2 = getDisableAt();
                    SharedPreferences sharedPreferencesPreferences = preferences();
                    if (sharedPreferencesPreferences.getLong("notified_disable_at", 0L) != disableAt2) {
                        sharedPreferencesPreferences.edit().putLong("notified_disable_at", disableAt2).apply();
                        showNotification(createBuilder().setContentTitle(LocaleController.getString(C2807R.string.SensitiveRequestsDisabledNotificationTitle)).setContentText(LocaleController.getString(C2807R.string.SensitiveRequestsDisabledNotificationText)).setStyle(new NotificationCompat.BigTextStyle().bigText(LocaleController.getString(C2807R.string.SensitiveRequestsDisabledNotificationText))).setAutoCancel(true));
                        return;
                    }
                    return;
                }
                cancelNotification();
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private static NotificationCompat.Builder createBuilder() {
        Context context = ApplicationLoader.applicationContext;
        return new NotificationCompat.Builder(context, "sensitive_requests").setSmallIcon(IconManager.getNotificationIcon()).setColor(AppUtils.getNotificationColor()).setPriority(1).setCategory("status").setOnlyAlertOnce(true).setContentIntent(PendingIntent.getActivity(context, 4100, new Intent(context, (Class<?>) LaunchActivity.class).setFlags(268435456), 201326592));
    }

    @SuppressLint({"MissingPermission"})
    private static void showNotification(NotificationCompat.Builder builder) {
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
        notificationManagerCompatFrom.createNotificationChannel(new NotificationChannelCompat.Builder("sensitive_requests", 4).setName(LocaleController.getString(C2807R.string.SensitiveRequestsNotificationChannel)).build());
        notificationManagerCompatFrom.notify(4100, builder.build());
    }

    private static void cancelNotification() {
        try {
            NotificationManagerCompat.from(ApplicationLoader.applicationContext).cancel(4100);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }
}
