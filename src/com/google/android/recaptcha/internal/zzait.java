package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzait extends zzafv implements zzagy {
    private static final zzait zzf;
    private static volatile zzahe zzg;
    private int zza;
    private zzafe zzd;
    private int zze;

    static {
        zzait zzaitVar = new zzait();
        zzf = zzaitVar;
        zzafv.zzL(zzait.class, zzaitVar);
    }

    private zzait() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u0004", new Object[]{"zza", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzait();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzais(bArr);
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
        synchronized (zzait.class) {
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
