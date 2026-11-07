package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhk extends zzhp {
    private final long zza;

    public zzhk(long j) {
        this.zza = j;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        if (zza() != zzhpVar.zza()) {
            return zza() - zzhpVar.zza();
        }
        long jAbs = Math.abs(this.zza);
        long jAbs2 = Math.abs(((zzhk) zzhpVar).zza);
        if (jAbs < jAbs2) {
            return -1;
        }
        return jAbs > jAbs2 ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzhk.class == obj.getClass() && this.zza == ((zzhk) obj).zza;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zza()), Long.valueOf(this.zza)});
    }

    public final String toString() {
        return Long.toString(this.zza);
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.zzd(this.zza >= 0 ? (byte) 0 : (byte) 32);
    }

    public final long zzc() {
        return this.zza;
    }
}
