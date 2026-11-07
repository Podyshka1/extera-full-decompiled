package com.google.android.gms.recaptchabase;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zze {
    public static final Feature zza;
    public static final Feature zzb;
    public static final Feature[] zzc;

    static {
        Feature feature = new Feature("EXECUTE", 1L);
        zza = feature;
        Feature feature2 = new Feature("INIT", 1L);
        zzb = feature2;
        zzc = new Feature[]{feature, feature2};
    }
}
