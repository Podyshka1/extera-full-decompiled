package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzhe extends zzhc {
    private final Object zza;

    public zzhe(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhe) {
            return this.zza.equals(((zzhe) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String string = this.zza.toString();
        StringBuilder sb = new StringBuilder(string.length() + 13);
        sb.append("Optional.of(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.cast.zzhc
    public final Object zza(Object obj) {
        zzhd.zza(obj, "use Optional.orNull() instead of Optional.or(null)");
        return this.zza;
    }
}
