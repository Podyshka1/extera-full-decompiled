package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpl extends zztp implements zzuy {
    private static final zzpl zzb;
    private int zzd;
    private int zze;
    private long zzf;
    private int zzg;

    static {
        zzpl zzplVar = new zzpl();
        zzb = zzplVar;
        zztp.zzH(zzpl.class, zzplVar);
    }

    private zzpl() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", zzjo.zza(), "zzf", "zzg", zzhj.zza()});
        }
        if (i2 == 3) {
            return new zzpl();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpk(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
