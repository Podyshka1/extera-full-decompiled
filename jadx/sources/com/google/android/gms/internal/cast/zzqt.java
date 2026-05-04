package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqt extends zztp implements zzuy {
    private static final zzqt zzb;
    private int zzd;
    private int zze;
    private zztx zzf = zztp.zzA();
    private zztx zzg = zztp.zzA();
    private int zzh;

    static {
        zzqt zzqtVar = new zzqt();
        zzb = zzqtVar;
        zztp.zzH(zzqt.class, zzqtVar);
    }

    private zzqt() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001᠌\u0000\u0002\u001b\u0003\u001b\u0004င\u0001", new Object[]{"zzd", "zze", zzlw.zza(), "zzf", zzpv.class, "zzg", zzpv.class, "zzh"});
        }
        if (i2 == 3) {
            return new zzqt();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqs(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
