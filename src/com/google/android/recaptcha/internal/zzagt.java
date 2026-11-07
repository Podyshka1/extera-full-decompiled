package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzagt {
    public static final boolean zza(Object obj) {
        return !((zzags) obj).zze();
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzags zzagsVarZzc = (zzags) obj;
        zzags zzagsVar = (zzags) obj2;
        if (!zzagsVar.isEmpty()) {
            if (!zzagsVarZzc.zze()) {
                zzagsVarZzc = zzagsVarZzc.zzc();
            }
            zzagsVarZzc.zzb(zzagsVar);
        }
        return zzagsVarZzc;
    }
}
