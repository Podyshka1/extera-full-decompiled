package com.google.android.gms.internal.cast;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfr {
    public static final Feature zza;
    public static final Feature zzb;
    public static final Feature zzc;
    public static final Feature zzd;
    public static final Feature zze;
    public static final Feature zzf;
    public static final Feature[] zzg;

    static {
        Feature feature = new Feature("usage_and_diagnostics_listener", 1L, true);
        zza = feature;
        Feature feature2 = new Feature("usage_and_diagnostics_consents", 1L, true);
        zzb = feature2;
        Feature feature3 = new Feature("usage_and_diagnostics_check_consents", 1L, true);
        zzc = feature3;
        Feature feature4 = new Feature("usage_and_diagnostics_settings_access", 1L, true);
        zzd = feature4;
        Feature feature5 = new Feature("el_capitan", 1L, false);
        zze = feature5;
        Feature feature6 = new Feature("stats", 1L, true);
        zzf = feature6;
        zzg = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6};
    }
}
