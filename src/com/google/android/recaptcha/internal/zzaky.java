package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaky extends zzafv implements zzagy {
    private static final zzaky zzf;
    private static volatile zzahe zzg;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzalt zze;

    static {
        zzaky zzakyVar = new zzaky();
        zzf = zzakyVar;
        zzafv.zzL(zzaky.class, zzakyVar);
    }

    private zzaky() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ለ\u0000\u0002ဉ\u0001", new Object[]{"zza", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzaky();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakx(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzg;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzaky.class) {
            try {
                zzafrVar = zzg;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzf);
                    zzg = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
