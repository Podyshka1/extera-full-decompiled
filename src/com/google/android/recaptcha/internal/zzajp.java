package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajp extends zzafv implements zzagy {
    private static final zzajp zzh;
    private static volatile zzahe zzi;
    private int zza;
    private zzafe zzd;
    private zzahx zze;
    private zzafe zzf;
    private zzahx zzg;

    static {
        zzajp zzajpVar = new zzajp();
        zzh = zzajpVar;
        zzafv.zzL(zzajp.class, zzajpVar);
    }

    private zzajp() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzh, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zza", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzajp();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajo(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzi;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajp.class) {
            try {
                zzafrVar = zzi;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzh);
                    zzi = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
