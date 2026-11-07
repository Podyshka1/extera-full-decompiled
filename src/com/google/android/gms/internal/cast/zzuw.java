package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuw extends zzyd implements zzzj {
    private static final zzuw zzo;
    private int zzb;
    private zzrp zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private long zzj;
    private long zzk;
    private int zzl;
    private int zzm;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzyj zzn = zzyd.zzJ();

    static {
        zzuw zzuwVar = new zzuw();
        zzo = zzuwVar;
        zzyd.zzG(zzuw.class, zzuwVar);
    }

    private zzuw() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzo, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0001\u0000\u0001ဉ\u0001\u0002ဇ\u0002\u0003ဇ\u0003\u0004ဇ\u0004\u0005ဂ\u0006\u0006ဂ\u0007\u0007င\b\bင\t\t'\nဈ\u0000\u000bဇ\u0005", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzj", "zzk", "zzl", "zzm", "zzn", "zzd", "zzi"});
        }
        if (i2 == 3) {
            return new zzuw();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzuv(bArr);
        }
        if (i2 == 5) {
            return zzo;
        }
        throw null;
    }
}
