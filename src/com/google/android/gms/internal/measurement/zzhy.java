package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhy extends zzmf implements zznn {
    private static final zzhy zzg;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzhc zzf;

    static {
        zzhy zzhyVar = new zzhy();
        zzg = zzhyVar;
        zzmf.zzcp(zzhy.class, zzhyVar);
    }

    private zzhy() {
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzhy();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzhx(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
