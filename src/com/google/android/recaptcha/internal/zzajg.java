package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajg extends zzafv implements zzagy {
    private static final zzajg zzj;
    private static volatile zzahe zzk;
    private int zza;
    private int zze;
    private int zzg;
    private int zzi;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzajg zzajgVar = new zzajg();
        zzj = zzajgVar;
        zzafv.zzL(zzajg.class, zzajgVar);
    }

    private zzajg() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzj, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0004\u0002Ȉ\u0003\u0004\u0004Ȉ\u0005\u0004\u0006Ȉ\u0007\u0004", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzajg();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajf(bArr);
        }
        if (i2 == 5) {
            return zzj;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzk;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajg.class) {
            try {
                zzafrVar = zzk;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzj);
                    zzk = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
