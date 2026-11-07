package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzako extends zzafv implements zzagy {
    private static final zzako zzg;
    private static volatile zzahe zzh;
    private int zza;
    private zzaer zzd;
    private zzaer zze;
    private boolean zzf;

    static {
        zzako zzakoVar = new zzako();
        zzg = zzakoVar;
        zzafv.zzL(zzako.class, zzakoVar);
    }

    private zzako() {
        zzaer zzaerVar = zzaer.zza;
        this.zzd = zzaerVar;
        this.zze = zzaerVar;
    }

    public static zzako zzd() {
        return zzg;
    }

    @Deprecated
    public final zzaer zza() {
        return this.zzd;
    }

    @Deprecated
    public final zzaer zzb() {
        return this.zze;
    }

    public final boolean zzc() {
        return this.zzf;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\n\u0003ဇ\u0000", new Object[]{"zza", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzako();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakn(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzh;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzako.class) {
            try {
                zzafrVar = zzh;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzg);
                    zzh = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
