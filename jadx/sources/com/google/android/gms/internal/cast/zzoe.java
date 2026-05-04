package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoe extends zztp implements zzuy {
    private static final zzoe zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzoe zzoeVar = new zzoe();
        zzb = zzoeVar;
        zztp.zzH(zzoe.class, zzoeVar);
    }

    private zzoe() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzd", "zze", zzib.zza(), "zzf", zzhy.zza()});
        }
        if (i2 == 3) {
            return new zzoe();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzod(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
