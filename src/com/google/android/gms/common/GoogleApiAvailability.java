package com.google.android.gms.common;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.cast.CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabr;
import com.google.android.gms.common.api.internal.zabs;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zac;
import com.google.android.gms.common.internal.zag;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.base.zak;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {
    private String zac;
    private static final Object zaa = new Object();
    private static final GoogleApiAvailability zab = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    public static GoogleApiAvailability getInstance() {
        return zab;
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public Intent getErrorResolutionIntent(Context context, int i, String str) {
        return super.getErrorResolutionIntent(context, i, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public int isGooglePlayServicesAvailable(Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    public void showErrorNotification(Context context, int i) {
        zac(context, i, null, getErrorResolutionPendingIntent(context, i, 0, "n"));
    }

    public final Dialog zaa(Context context, int i, zag zagVar, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnClickListener onClickListener) {
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(zac.zac(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String strZae = zac.zae(context, i);
        DialogInterface.OnClickListener onClickListener2 = zagVar;
        if (strZae != null) {
            if (zagVar == null) {
                onClickListener2 = onClickListener;
            }
            builder.setPositiveButton(strZae, onClickListener2);
        }
        String strZaa = zac.zaa(context, i);
        if (strZaa != null) {
            builder.setTitle(strZaa);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i)), new IllegalArgumentException());
        return builder.create();
    }

    public final boolean zab(Activity activity, LifecycleFragment lifecycleFragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogZaa = zaa(activity, i, zag.zad(lifecycleFragment, getErrorResolutionIntent(activity, i, "d"), 2), onCancelListener, null);
        if (dialogZaa == null) {
            return false;
        }
        zag(activity, dialogZaa, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    @TargetApi(20)
    public final void zac(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            zah(context);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strZab = zac.zab(context, i);
        String strZad = zac.zad(context, i);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) Preconditions.checkNotNull(context.getSystemService("notification"));
        NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(strZab).setStyle(new NotificationCompat.BigTextStyle().bigText(strZad));
        boolean zIsWearable = DeviceProperties.isWearable(context);
        int i3 = R.drawable.stat_sys_warning;
        if (zIsWearable) {
            Preconditions.checkState(PlatformVersion.isAtLeastKitKatWatch());
            int i4 = context.getApplicationInfo().icon;
            if (i4 != 0) {
                i3 = i4;
            }
            style.setSmallIcon(i3).setPriority(2);
            if (DeviceProperties.isWearableWithoutPlayStore(context)) {
                style.addAction(R$drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.base.R$string.common_open_on_phone), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
        } else {
            style.setSmallIcon(R.drawable.stat_sys_warning).setTicker(resources.getString(com.google.android.gms.base.R$string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(strZad);
        }
        if (PlatformVersion.isAtLeastO()) {
            Preconditions.checkState(PlatformVersion.isAtLeastO());
            synchronized (zaa) {
                str2 = this.zac;
            }
            if (str2 == null) {
                str2 = "com.google.android.gms.availability";
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                String string = context.getResources().getString(com.google.android.gms.base.R$string.common_google_play_services_notification_channel_name);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0.m280m("com.google.android.gms.availability", string, 4));
                } else if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            style.setChannelId(str2);
        }
        Notification notificationBuild = style.build();
        if (i == 1 || i == 2 || i == 3) {
            GooglePlayServicesUtilLight.sCanceledAvailabilityNotification.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        notificationManager.notify(i2, notificationBuild);
    }

    public final boolean zad(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent;
        if (InstantApps.isInstantApp(context) || (errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult)) == null) {
            return false;
        }
        zac(context, connectionResult.getErrorCode(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.zaa(context, errorResolutionPendingIntent, i, true), zak.zaa | 134217728));
        return true;
    }

    public final Dialog zae(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(zac.zac(activity, 18));
        builder.setPositiveButton(_UrlKt.FRAGMENT_ENCODE_SET, (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        zag(activity, alertDialogCreate, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return alertDialogCreate;
    }

    public final zabs zaf(Context context, zabr zabrVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabs zabsVar = new zabs(zabrVar);
        ContextCompat.registerReceiver(context, zabsVar, intentFilter, 2);
        zabsVar.zaa(context);
        if (isUninstalledAppPossiblyUpdating(context, "com.google.android.gms")) {
            return zabsVar;
        }
        zabrVar.zaa();
        zabsVar.zab();
        return null;
    }

    public final void zag(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    public final void zah(Context context) {
        new zad(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zaa(activity, i, zag.zab(activity, getErrorResolutionIntent(activity, i, "d"), i2), onCancelListener, null);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public int isGooglePlayServicesAvailable(Context context, int i) {
        return super.isGooglePlayServicesAvailable(context, i);
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        zag(activity, errorDialog, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }
}
