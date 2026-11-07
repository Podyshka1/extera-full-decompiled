package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsj extends zzyd implements zzzj {
    private static final zzsj zze;
    private int zzb;
    private int zzd;

    static {
        zzsj zzsjVar = new zzsj();
        zze = zzsjVar;
        zzyd.zzG(zzsj.class, zzsjVar);
    }

    private zzsj() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzb", "zzd", zzmq.zza()});
        }
        if (i2 == 3) {
            return new zzsj();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzsi(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }
}
