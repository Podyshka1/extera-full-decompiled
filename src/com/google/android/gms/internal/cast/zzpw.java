package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpw extends zzyd implements zzzj {
    private static final zzpw zzh;
    private int zzb;
    private zzqc zzd;
    private zzsx zze;
    private zzyl zzf = zzyd.zzM();
    private zzyj zzg = zzyd.zzJ();

    static {
        zzpw zzpwVar = new zzpw();
        zzh = zzpwVar;
        zzyd.zzG(zzpw.class, zzpwVar);
    }

    private zzpw() {
    }

    public static zzpv zza() {
        return (zzpv) zzh.zzB();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ࠞ", new Object[]{"zzb", "zzd", "zze", "zzf", zzsr.class, "zzg", zzpm.zzb()});
        }
        if (i2 == 3) {
            return new zzpw();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzpv(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }

    public final /* synthetic */ void zzc(zzqc zzqcVar) {
        zzqcVar.getClass();
        this.zzd = zzqcVar;
        this.zzb |= 1;
    }

    public final /* synthetic */ void zzd(Iterable iterable) {
        zzyj zzyjVar = this.zzg;
        if (!zzyjVar.zza()) {
            int size = zzyjVar.size();
            this.zzg = zzyjVar.zzf(size + size);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.zzg.zzh(((zzpm) it.next()).zza());
        }
    }
}
