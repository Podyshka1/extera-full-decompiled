package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zziw extends zzmf implements zznn {
    private static final zziw zzd;
    private zzmo zzb = zzmf.zzcv();

    static {
        zziw zziwVar = new zziw();
        zzd = zziwVar;
        zzmf.zzcp(zziw.class, zziwVar);
    }

    private zziw() {
    }

    public static zziw zzc() {
        return zzd;
    }

    public final List zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzb.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zziy.class});
        }
        if (i2 == 3) {
            return new zziw();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zziv(bArr);
        }
        if (i2 == 5) {
            return zzd;
        }
        throw null;
    }
}
