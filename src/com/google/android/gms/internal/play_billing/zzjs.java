package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjs extends zzfi implements zzgm {
    private static final zzjs zzb;
    private int zzd;
    private int zze;

    static {
        zzjs zzjsVar = new zzjs();
        zzb = zzjsVar;
        zzfi.zzw(zzjs.class, zzjsVar);
    }

    private zzjs() {
    }

    public static zzjs zzd() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzjq.zza});
        }
        if (i2 == 3) {
            return new zzjs();
        }
        zzjr zzjrVar = null;
        if (i2 == 4) {
            return new zzjp(zzjrVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
