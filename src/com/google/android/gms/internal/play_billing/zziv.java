package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
public final class zziv extends zzfi implements zzgm {
    private static final zziv zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    static {
        zziv zzivVar = new zziv();
        zzb = zzivVar;
        zzfi.zzw(zziv.class, zzivVar);
    }

    private zziv() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zziv();
        }
        zziu zziuVar = null;
        if (i2 == 4) {
            return new zzit(zziuVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
