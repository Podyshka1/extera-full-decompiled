package com.yandex.runtime.sensors.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;
import com.yandex.runtime.Runtime;

/* JADX INFO: loaded from: classes5.dex */
public class PermissionHelper {
    private static final String TAG = "com.yandex.runtime.sensors.internal.PermissionHelper";

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        r4 = r4 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean checkPermissions(String[] strArr) {
        if (strArr == null) {
            return true;
        }
        try {
            Context applicationContext = Runtime.getApplicationContext();
            PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096);
            if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                int length = strArr.length;
                int i = 0;
                while (i < length) {
                    String str = strArr[i];
                    int i2 = 0;
                    while (true) {
                        String[] strArr2 = packageInfo.requestedPermissions;
                        if (i2 >= strArr2.length) {
                            return false;
                        }
                        if ((packageInfo.requestedPermissionsFlags[i2] & 2) != 0 && strArr2[i2].equals(str)) {
                            break;
                        }
                        i2++;
                    }
                }
                return true;
            }
            return false;
        } catch (Exception e) {
            Log.e(TAG, "Exception of calling getPackageInfo", e);
            return false;
        }
    }
}
