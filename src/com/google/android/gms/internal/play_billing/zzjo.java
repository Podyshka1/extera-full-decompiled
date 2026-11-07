package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes.dex */
public final class zzjo extends zzfi implements zzgm {
    private static final zzjo zzb;
    private int zzd;
    private zzig zze;
    private long zzf;

    static {
        zzjo zzjoVar = new zzjo();
        zzb = zzjoVar;
        zzfi.zzw(zzjo.class, zzjoVar);
    }

    private zzjo() {
    }

    public static /* synthetic */ void zzA(zzjo zzjoVar, zzig zzigVar) {
        zzigVar.getClass();
        zzjoVar.zze = zzigVar;
        zzjoVar.zzd |= 1;
    }

    public static /* synthetic */ void zzB(zzjo zzjoVar, long j) {
        zzjoVar.zzd |= 2;
        zzjoVar.zzf = j;
    }

    public static zzjm zzc() {
        return (zzjm) zzb.zzl();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzjo();
        }
        zzjn zzjnVar = null;
        if (i2 == 4) {
            return new zzjm(zzjnVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
