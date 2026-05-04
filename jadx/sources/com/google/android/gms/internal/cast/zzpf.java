package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpf extends zztp implements zzuy {
    private static final zzpf zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzpf zzpfVar = new zzpf();
        zzb = zzpfVar;
        zztp.zzH(zzpf.class, zzpfVar);
    }

    private zzpf() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzd", "zze", zzik.zza(), "zzf"});
        }
        if (i2 == 3) {
            return new zzpf();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpe(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
