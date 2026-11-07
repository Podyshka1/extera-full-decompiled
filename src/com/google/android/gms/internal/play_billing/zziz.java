package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes.dex */
public final class zziz extends zzfi implements zzgm {
    private static final zziz zzb;
    private int zzd;
    private int zze;

    static {
        zziz zzizVar = new zziz();
        zzb = zzizVar;
        zzfi.zzw(zziz.class, zzizVar);
    }

    private zziz() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzix.zza});
        }
        if (i2 == 3) {
            return new zziz();
        }
        zziy zziyVar = null;
        if (i2 == 4) {
            return new zziw(zziyVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
