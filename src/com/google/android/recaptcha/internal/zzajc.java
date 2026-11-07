package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajc extends zzafv implements zzagy {
    private static final zzajc zzi;
    private static volatile zzahe zzj;
    private String zza = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzajc zzajcVar = new zzajc();
        zzi = zzajcVar;
        zzafv.zzL(zzajc.class, zzajcVar);
    }

    private zzajc() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzi, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzajc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajb(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzj;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajc.class) {
            try {
                zzafrVar = zzj;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzi);
                    zzj = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
