package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrp extends zzyd implements zzzj {
    private static final zzrp zzf;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzrp zzrpVar = new zzrp();
        zzf = zzrpVar;
        zzyd.zzG(zzrp.class, zzrpVar);
    }

    private zzrp() {
    }

    public static zzro zza() {
        return (zzro) zzf.zzB();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzrp();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzro(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }

    public final /* synthetic */ void zzc(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }
}
