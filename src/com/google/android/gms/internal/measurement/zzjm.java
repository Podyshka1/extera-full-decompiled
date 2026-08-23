package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzjm {
    private static UserManager zza;
    private static volatile boolean zzb = !zza();

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean zzb(Context context) {
        return zza() && !zzd(context);
    }

    public static boolean zzc(Context context) {
        return !zza() || zzd(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003b, code lost:
    
        r5 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean zzd(Context context) {
        boolean z;
        if (zzb) {
            return true;
        }
        synchronized (zzjm.class) {
            try {
                if (zzb) {
                    return true;
                }
                int i = 1;
                while (true) {
                    z = false;
                    if (i > 2) {
                        break;
                    }
                    if (zza == null) {
                        zza = (UserManager) context.getSystemService(UserManager.class);
                    }
                    UserManager userManager = zza;
                    if (userManager == null) {
                        z = true;
                        break;
                    }
                    try {
                        if (userManager.isUserUnlocked()) {
                            break;
                        }
                        if (!userManager.isUserRunning(Process.myUserHandle())) {
                            break;
                        }
                    } catch (NullPointerException e) {
                        Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                        zza = null;
                        i++;
                    }
                }
                if (z) {
                    zza = null;
                }
                if (z) {
                    zzb = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
