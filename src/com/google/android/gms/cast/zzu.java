package com.google.android.gms.cast;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
final class zzu {
    private String zza = "com.google.android.gms.cast.CATEGORY_CAST";
    private String zzb;
    private Collection zzc;

    /* synthetic */ zzu(zzt zztVar) {
    }

    static /* synthetic */ zzu zza(zzu zzuVar, String str) {
        zzuVar.zzb = str;
        return zzuVar;
    }

    static /* synthetic */ zzu zzc(zzu zzuVar, Collection collection) {
        zzuVar.zzc = collection;
        return zzuVar;
    }

    static /* bridge */ /* synthetic */ zzw zzd(zzu zzuVar) {
        return new zzw(zzuVar.zza, zzuVar.zzb, zzuVar.zzc, false, true, null);
    }
}
