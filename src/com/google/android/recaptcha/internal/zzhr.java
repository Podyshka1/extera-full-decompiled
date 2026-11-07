package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhr {
    private final Context zza;
    private final GoogleApiAvailabilityLight zzb;

    public zzhr(Context context, GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.zza = context;
        this.zzb = googleApiAvailabilityLight;
    }

    public final boolean zza() {
        return zzd() == 3;
    }

    public final boolean zzb() {
        try {
            List<PackageInfo> installedPackages = this.zza.getPackageManager().getInstalledPackages(0);
            if ((installedPackages instanceof Collection) && installedPackages.isEmpty()) {
                return false;
            }
            Iterator<T> it = installedPackages.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((PackageInfo) it.next()).packageName, "com.android.vending")) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final String zzc() {
        try {
            Context context = this.zza;
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (Build.VERSION.SDK_INT >= 30) {
                String initiatingPackageName = packageManager.getInstallSourceInfo(packageName).getInitiatingPackageName();
                return initiatingPackageName == null ? _UrlKt.FRAGMENT_ENCODE_SET : initiatingPackageName;
            }
            String installerPackageName = packageManager.getInstallerPackageName(packageName);
            return installerPackageName == null ? _UrlKt.FRAGMENT_ENCODE_SET : installerPackageName;
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    public final int zzd() {
        int iIsGooglePlayServicesAvailable = this.zzb.isGooglePlayServicesAvailable(this.zza);
        return (iIsGooglePlayServicesAvailable == 1 || iIsGooglePlayServicesAvailable == 3 || iIsGooglePlayServicesAvailable == 9) ? 4 : 3;
    }
}
