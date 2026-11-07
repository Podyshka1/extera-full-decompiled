package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public final class zzxf extends zzafv implements zzagy {
    public static final /* synthetic */ int zza = 0;
    private static final zzxf zzf;
    private static volatile zzahe zzg;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzage zze = zzafv.zzR();

    static {
        zzxf zzxfVar = new zzxf();
        zzf = zzxfVar;
        zzafv.zzL(zzxf.class, zzxfVar);
    }

    private zzxf() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", zzwu.class});
        }
        if (i2 == 3) {
            return new zzxf();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzxe(bArr);
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
        synchronized (zzxf.class) {
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
