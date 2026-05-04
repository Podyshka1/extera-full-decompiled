package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhi extends zzhp {
    private final zzgx zza;

    zzhi(zzgx zzgxVar) {
        this.zza = zzgxVar;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        if (zzhp.zzd((byte) 64) != zzhpVar.zza()) {
            return zzhp.zzd((byte) 64) - zzhpVar.zza();
        }
        zzhi zzhiVar = (zzhi) zzhpVar;
        zzgx zzgxVar = this.zza;
        int iZzd = zzgxVar.zzd();
        zzgx zzgxVar2 = zzhiVar.zza;
        if (iZzd != zzgxVar2.zzd()) {
            return zzgxVar.zzd() - zzgxVar2.zzd();
        }
        return zzgm.zza().compare(zzgxVar.zzm(), zzhiVar.zza.zzm());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhi.class == obj.getClass()) {
            return this.zza.equals(((zzhi) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.zzd((byte) 64)), this.zza});
    }

    public final String toString() {
        zzgf zzgfVarZzd = zzgf.zzf().zzd();
        byte[] bArrZzm = this.zza.zzm();
        return "h'" + zzgfVarZzd.zzg(bArrZzm, 0, bArrZzm.length) + "'";
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    protected final int zza() {
        return zzhp.zzd((byte) 64);
    }

    public final zzgx zzc() {
        return this.zza;
    }
}
