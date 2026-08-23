package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zznk extends zztp implements zzuy {
    private static final zznk zzb;
    private int zzd;
    private int zze;

    static {
        zznk zznkVar = new zznk();
        zzb = zznkVar;
        zztp.zzH(zznk.class, zznkVar);
    }

    private zznk() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzhm.zza()});
        }
        if (i2 == 3) {
            return new zznk();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznj(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
