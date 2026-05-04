package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhk {
    final zzic zza;

    zzhk(zzpg zzpgVar) {
        this.zza = zzpgVar.zzag();
    }

    final boolean zza() {
        try {
            zzic zzicVar = this.zza;
            PackageManagerWrapper packageManagerWrapperPackageManager = Wrappers.packageManager(zzicVar.zzaY());
            if (packageManagerWrapperPackageManager != null) {
                return packageManagerWrapperPackageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            zzicVar.zzaV().zzk().zza("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            this.zza.zzaV().zzk().zzb("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
