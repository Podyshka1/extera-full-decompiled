package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgt extends zzmf implements zznn {
    private static final zzgt zzf;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzgt zzgtVar = new zzgt();
        zzf = zzgtVar;
        zzmf.zzcp(zzgt.class, zzgtVar);
    }

    private zzgt() {
    }

    public final String zza() {
        return this.zzd;
    }

    public final String zzb() {
        return this.zze;
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
            return new zzgt();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzgs(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
