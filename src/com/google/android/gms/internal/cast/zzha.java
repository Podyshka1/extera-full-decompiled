package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzha extends zzhc {
    static final zzha zza = new zzha();

    private zzha() {
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.cast.zzhc
    public final Object zza(Object obj) {
        zzhd.zza(obj, "use Optional.orNull() instead of Optional.or(null)");
        return obj;
    }
}
