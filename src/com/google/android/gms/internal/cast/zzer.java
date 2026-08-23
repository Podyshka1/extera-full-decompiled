package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
final class zzer extends zzev {
    static final zzer zza = new zzer();

    private zzer() {
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.cast.zzev
    public final Object zza(Object obj) {
        zzez.zzc(obj, "use Optional.orNull() instead of Optional.or(null)");
        return obj;
    }
}
