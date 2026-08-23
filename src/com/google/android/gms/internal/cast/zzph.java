package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzph extends zztp implements zzuy {
    private static final zzph zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private byte zzh = 2;

    static {
        zzph zzphVar = new zzph();
        zzb = zzphVar;
        zztp.zzH(zzph.class, zzphVar);
    }

    private zzph() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001ᴌ\u0000\u0002င\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", zzjl.zza(), "zzf", "zzg", zzmr.zza()});
        }
        if (i2 == 3) {
            return new zzph();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpg(zzmsVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzh = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
