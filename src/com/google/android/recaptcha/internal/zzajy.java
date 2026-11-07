package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajy extends zzafv implements zzagy {
    private static final zzajy zze;
    private static volatile zzahe zzf;
    private int zza;
    private zzalt zzd;

    static {
        zzajy zzajyVar = new zzajy();
        zze = zzajyVar;
        zzafv.zzL(zzajy.class, zzajyVar);
    }

    private zzajy() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zza", "zzd"});
        }
        if (i2 == 3) {
            return new zzajy();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajx(bArr);
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
        synchronized (zzajy.class) {
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
