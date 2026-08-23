package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmy extends zztp implements zzuy {
    private static final zztv zzb = new zzmw();
    private static final zzmy zzd;
    private int zze;
    private zzne zzf;
    private zzpj zzg;
    private zztx zzh = zztp.zzA();
    private zztu zzi = zztp.zzy();

    static {
        zzmy zzmyVar = new zzmy();
        zzd = zzmyVar;
        zztp.zzH(zzmy.class, zzmyVar);
    }

    private zzmy() {
    }

    public static zzmx zza() {
        return (zzmx) zzd.zzv();
    }

    static /* synthetic */ void zzd(zzmy zzmyVar, zzne zzneVar) {
        zzneVar.getClass();
        zzmyVar.zzf = zzneVar;
        zzmyVar.zze |= 1;
    }

    static /* synthetic */ void zze(zzmy zzmyVar, Iterable iterable) {
        zztu zztuVar = zzmyVar.zzi;
        if (!zztuVar.zzc()) {
            int size = zztuVar.size();
            zzmyVar.zzi = zztuVar.zzg(size == 0 ? 10 : size + size);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzmyVar.zzi.zzh(((zzml) it.next()).zza());
        }
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ࠞ", new Object[]{"zze", "zzf", "zzg", "zzh", zzpf.class, "zzi", zzml.zzb()});
        }
        if (i2 == 3) {
            return new zzmy();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzmx(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzd;
    }
}
