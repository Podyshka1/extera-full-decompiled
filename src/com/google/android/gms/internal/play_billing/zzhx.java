package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhx extends zzfi implements zzgm {
    private static final zzhx zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private zzig zzh;
    private int zzi;

    static {
        zzhx zzhxVar = new zzhx();
        zzb = zzhxVar;
        zzfi.zzw(zzhx.class, zzhxVar);
    }

    private zzhx() {
    }

    public static zzhx zzA(byte[] bArr, zzeu zzeuVar) {
        return (zzhx) zzfi.zzp(zzb, bArr, zzeuVar);
    }

    public static /* synthetic */ void zzC(zzhx zzhxVar, zzil zzilVar) {
        zzhxVar.zzi = zzilVar.zza();
        zzhxVar.zzd |= 4;
    }

    public static /* synthetic */ void zzD(zzhx zzhxVar, zzig zzigVar) {
        zzigVar.getClass();
        zzhxVar.zzh = zzigVar;
        zzhxVar.zzd |= 2;
    }

    public static /* synthetic */ void zzF(zzhx zzhxVar, zzjf zzjfVar) {
        zzjfVar.getClass();
        zzhxVar.zzf = zzjfVar;
        zzhxVar.zze = 7;
    }

    public static /* synthetic */ void zzG(zzhx zzhxVar, zzjv zzjvVar) {
        zzjvVar.getClass();
        zzhxVar.zzf = zzjvVar;
        zzhxVar.zze = 6;
    }

    public static /* synthetic */ void zzH(zzhx zzhxVar, int i) {
        zzhxVar.zzg = i - 1;
        zzhxVar.zzd |= 1;
    }

    public static zzhv zzc() {
        return (zzhv) zzb.zzl();
    }

    public final zzjf zzB() {
        return this.zze == 7 ? (zzjf) this.zzf : zzjf.zzd();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000\u0005᠌\u0002\u0006<\u0000\u0007<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", zzhy.zza, "zzh", zziz.class, "zzi", zzik.zza, zzjv.class, zzjf.class});
        }
        if (i2 == 3) {
            return new zzhx();
        }
        zzhw zzhwVar = null;
        if (i2 == 4) {
            return new zzhv(zzhwVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
