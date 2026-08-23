package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpn extends zztp implements zzuy {
    private static final zzpn zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;

    static {
        zzpn zzpnVar = new zzpn();
        zzb = zzpnVar;
        zztp.zzH(zzpn.class, zzpnVar);
    }

    private zzpn() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005᠌\u0004\u0006ဆ\u0005", new Object[]{"zzd", "zze", "zzf", zzjr.zza(), "zzg", "zzh", "zzi", zzie.zza(), "zzj"});
        }
        if (i2 == 3) {
            return new zzpn();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpm(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
