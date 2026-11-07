package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaje extends zzafv implements zzagy {
    private static final zzaje zze;
    private static volatile zzahe zzf;
    private String zza = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzaje zzajeVar = new zzaje();
        zze = zzajeVar;
        zzafv.zzL(zzaje.class, zzajeVar);
    }

    private zzaje() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"zza", "zzd"});
        }
        if (i2 == 3) {
            return new zzaje();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajd(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzf;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzaje.class) {
            try {
                zzafrVar = zzf;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zze);
                    zzf = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
