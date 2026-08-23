package com.google.android.gms.cast;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public abstract class CastMediaControlIntent {
    public static String categoryForCast(String str) {
        if (str == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        }
        zzu zzuVar = new zzu(null);
        zzu.zza(zzuVar, str);
        return zzw.zza(zzu.zzd(zzuVar));
    }

    public static String categoryForCast(String str, Collection collection) {
        if (str == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        }
        if (collection != null) {
            zzu zzuVar = new zzu(null);
            zzu.zza(zzuVar, str);
            zzu.zzc(zzuVar, collection);
            return zzw.zza(zzu.zzd(zzuVar));
        }
        throw new IllegalArgumentException("namespaces cannot be null");
    }
}
