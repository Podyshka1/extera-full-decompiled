package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdi extends zzfi implements zzgm {
    private static final zzdi zzb;
    private int zzd;
    private zzdn zze;
    private zzdn zzf;
    private int zzg;

    static {
        zzdi zzdiVar = new zzdi();
        zzb = zzdiVar;
        zzfi.zzw(zzdi.class, zzdiVar);
    }

    private zzdi() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", zzdq.zza()});
        }
        if (i2 == 3) {
            return new zzdi();
        }
        zzdl zzdlVar = null;
        if (i2 == 4) {
            return new zzdh(zzdlVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
