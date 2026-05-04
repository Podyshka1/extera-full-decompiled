package androidx.mediarouter.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.media.MediaRouter2;
import android.os.Build;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SystemOutputSwitcherDialogController {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean showDialog(Context context) {
        boolean zShowDialogForAndroidR;
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            zShowDialogForAndroidR = showDialogForAndroidUAndAbove(context);
        } else if (i >= 31) {
            zShowDialogForAndroidR = showDialogForAndroidSAndT(context) || showDialogForAndroidR(context);
        } else if (i == 30) {
            zShowDialogForAndroidR = showDialogForAndroidR(context);
        }
        if (zShowDialogForAndroidR) {
            return true;
        }
        return isRunningOnWear(context) && showBluetoothSettingsFragment(context);
    }

    private static boolean showDialogForAndroidUAndAbove(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 30) {
            return false;
        }
        MediaRouter2 api30Impl = Api30Impl.getInstance(context);
        if (i >= 34) {
            return Api34Impl.showSystemOutputSwitcher(api30Impl);
        }
        return false;
    }

    private static boolean showDialogForAndroidSAndT(Context context) {
        ApplicationInfo applicationInfo;
        Intent intentPutExtra = new Intent().setAction("com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG").setPackage("com.android.systemui").putExtra("package_name", context.getPackageName());
        Iterator<ResolveInfo> it = context.getPackageManager().queryBroadcastReceivers(intentPutExtra, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && (applicationInfo = activityInfo.applicationInfo) != null && (applicationInfo.flags & 129) != 0) {
                context.sendBroadcast(intentPutExtra);
                return true;
            }
        }
        return false;
    }

    private static boolean showDialogForAndroidR(Context context) {
        ApplicationInfo applicationInfo;
        Intent intentPutExtra = new Intent().addFlags(268435456).setAction("com.android.settings.panel.action.MEDIA_OUTPUT").putExtra("com.android.settings.panel.extra.PACKAGE_NAME", context.getPackageName());
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intentPutExtra, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && (applicationInfo = activityInfo.applicationInfo) != null && (applicationInfo.flags & 129) != 0) {
                context.startActivity(intentPutExtra);
                return true;
            }
        }
        return false;
    }

    private static boolean showBluetoothSettingsFragment(Context context) {
        ApplicationInfo applicationInfo;
        Intent intentPutExtra = new Intent("android.settings.BLUETOOTH_SETTINGS").addFlags(268468224).putExtra("EXTRA_CONNECTION_ONLY", true).putExtra("android.bluetooth.devicepicker.extra.FILTER_TYPE", 1);
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intentPutExtra, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && (applicationInfo = activityInfo.applicationInfo) != null && (applicationInfo.flags & 129) != 0) {
                context.startActivity(intentPutExtra);
                return true;
            }
        }
        return false;
    }

    private static boolean isRunningOnWear(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    static class Api30Impl {
        static MediaRouter2 getInstance(Context context) {
            return MediaRouter2.getInstance(context);
        }
    }

    static class Api34Impl {
        static boolean showSystemOutputSwitcher(MediaRouter2 mediaRouter2) {
            return mediaRouter2.showSystemOutputSwitcher();
        }
    }
}
