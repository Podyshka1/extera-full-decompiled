package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zznm extends zztp implements zzuy {
    private static final zznm zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private int zzi;

    static {
        zznm zznmVar = new zznm();
        zzb = zznmVar;
        zztp.zzH(zznm.class, zznmVar);
    }

    private zznm() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004ဇ\u0003\u0005င\u0004", new Object[]{"zzd", "zze", zzkj.zza(), "zzf", zzkd.zza(), "zzg", zzkg.zza(), "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zznm();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznl(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
