package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgc extends zzmf implements zznn {
    private static final zzgc zzf;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzgc zzgcVar = new zzgc();
        zzf = zzgcVar;
        zzmf.zzcp(zzgc.class, zzgcVar);
    }

    private zzgc() {
    }

    public final String zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzgc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzgb(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
