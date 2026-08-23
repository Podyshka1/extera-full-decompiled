package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgf extends zzmf implements zznn {
    private static final zzgf zzi;
    private int zzb;
    private boolean zzg;
    private zzmo zzd = zzmf.zzcv();
    private zzmo zze = zzmf.zzcv();
    private zzmo zzf = zzmf.zzcv();
    private zzmo zzh = zzmf.zzcv();

    static {
        zzgf zzgfVar = new zzgf();
        zzi = zzgfVar;
        zzmf.zzcp(zzgf.class, zzgfVar);
    }

    private zzgf() {
    }

    public static zzgf zzg() {
        return zzi;
    }

    public final List zza() {
        return this.zzd;
    }

    public final List zzb() {
        return this.zze;
    }

    public final List zzc() {
        return this.zzf;
    }

    public final boolean zzd() {
        return (this.zzb & 1) != 0;
    }

    public final boolean zze() {
        return this.zzg;
    }

    public final List zzf() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zzb", "zzd", zzfu.class, "zze", zzfw.class, "zzf", zzgc.class, "zzg", "zzh", zzfu.class});
        }
        if (i2 == 3) {
            return new zzgf();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzfs(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }
}
