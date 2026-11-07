package com.google.android.gms.cloudmessaging;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzi {
    public static final Feature zza;
    public static final Feature zzb;
    public static final Feature[] zzc;

    static {
        Feature feature = new Feature("register", 1L, true);
        zza = feature;
        Feature feature2 = new Feature("unregister", 1L, true);
        zzb = feature2;
        zzc = new Feature[]{feature, feature2};
    }
}
