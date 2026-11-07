package androidx.mediarouter.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.os.Build;
import androidx.mediarouter.C0854R;

/* JADX INFO: loaded from: classes4.dex */
final class DeviceUtils {
    private static final String FEATURE_AUTO = "android.hardware.type.automotive";
    private static final String FEATURE_TV_1 = "com.google.android.tv";
    private static final String FEATURE_TV_2 = "android.hardware.type.television";
    private static final String FEATURE_TV_3 = "android.software.leanback";
    private static final int SEVEN_INCH_TABLET_MINIMUM_SCREEN_WIDTH_DP = 600;
    private static Boolean sIsAuto;
    private static Boolean sIsFoldable;
    private static Boolean sIsPhone;
    private static Boolean sIsSevenInchTablet;
    private static Boolean sIsTablet;
    private static Boolean sIsTv;
    private static Boolean sIsWearable;

    private DeviceUtils() {
    }

    public static String getDialogChooserWifiWarningDescription(Context context) {
        if (isPhone(context) || isFoldable(context)) {
            return context.getString(C0854R.string.mr_chooser_wifi_warning_description_phone);
        }
        if (isTablet(context) || isSevenInchTablet(context)) {
            return context.getString(C0854R.string.mr_chooser_wifi_warning_description_tablet);
        }
        if (isTv(context)) {
            return context.getString(C0854R.string.mr_chooser_wifi_warning_description_tv);
        }
        if (isWearable(context)) {
            return context.getString(C0854R.string.mr_chooser_wifi_warning_description_watch);
        }
        if (isAuto(context)) {
            return context.getString(C0854R.string.mr_chooser_wifi_warning_description_car);
        }
        return context.getString(C0854R.string.mr_chooser_wifi_warning_description_unknown);
    }

    private static boolean isPhone(Context context) {
        if (sIsPhone == null) {
            sIsPhone = Boolean.valueOf((isTablet(context) || isWearable(context) || isAuto(context) || isTv(context)) ? false : true);
        }
        return sIsPhone.booleanValue();
    }

    private static boolean isTablet(Context context) {
        return isTablet(context.getResources());
    }

    private static boolean isTablet(Resources resources) {
        if (resources == null) {
            return false;
        }
        if (sIsTablet == null) {
            sIsTablet = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || isSevenInchTablet(resources));
        }
        return sIsTablet.booleanValue();
    }

    private static boolean isFoldable(Context context) {
        if (sIsFoldable == null) {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            sIsFoldable = Boolean.valueOf((Build.VERSION.SDK_INT < 30 || sensorManager == null || sensorManager.getDefaultSensor(36) == null) ? false : true);
        }
        return sIsFoldable.booleanValue();
    }

    private static boolean isSevenInchTablet(Context context) {
        return isSevenInchTablet(context.getResources());
    }

    private static boolean isSevenInchTablet(Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (sIsSevenInchTablet == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z = true;
            }
            sIsSevenInchTablet = Boolean.valueOf(z);
        }
        return sIsSevenInchTablet.booleanValue();
    }

    private static boolean isWearable(Context context) {
        return isWearable(context.getPackageManager());
    }

    private static boolean isWearable(PackageManager packageManager) {
        if (sIsWearable == null) {
            sIsWearable = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return sIsWearable.booleanValue();
    }

    private static boolean isAuto(Context context) {
        return isAuto(context.getPackageManager());
    }

    private static boolean isAuto(PackageManager packageManager) {
        if (sIsAuto == null) {
            sIsAuto = Boolean.valueOf(Build.VERSION.SDK_INT >= 26 && packageManager.hasSystemFeature(FEATURE_AUTO));
        }
        return sIsAuto.booleanValue();
    }

    private static boolean isTv(Context context) {
        return isTv(context.getPackageManager());
    }

    private static boolean isTv(PackageManager packageManager) {
        if (sIsTv == null) {
            sIsTv = Boolean.valueOf(packageManager.hasSystemFeature(FEATURE_TV_1) || packageManager.hasSystemFeature(FEATURE_TV_2) || packageManager.hasSystemFeature(FEATURE_TV_3));
        }
        return sIsTv.booleanValue();
    }
}
