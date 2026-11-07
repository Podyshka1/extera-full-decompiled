package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalo extends zzafv implements zzagy {
    private static final zzalo zzk;
    private static volatile zzahe zzl;
    private int zza;
    private long zzd;
    private long zze;
    private int zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    static {
        zzalo zzaloVar = new zzalo();
        zzk = zzaloVar;
        zzafv.zzL(zzalo.class, zzaloVar);
    }

    private zzalo() {
    }

    public static zzalo zzd(byte[] bArr) {
        return (zzalo) zzafv.zzV(zzk, bArr);
    }

    public final long zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zzf;
    }

    public final long zzc() {
        return this.zzg;
    }

    public final int zzg() {
        int i = this.zzh;
        int i2 = i != 0 ? i != 1 ? i != 2 ? 0 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzh() {
        int i = this.zzi;
        int i2 = i != 0 ? i != 1 ? i != 2 ? 0 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzi() {
        int i = this.zzj;
        int i2 = i != 0 ? i != 1 ? i != 2 ? 0 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzk, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003င\u0002\u0004ဂ\u0003\u0005ဌ\u0004\u0006ဌ\u0005\u0007ဌ\u0006", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzalo();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaln(bArr);
        }
        if (i2 == 5) {
            return zzk;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzl;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzalo.class) {
            try {
                zzafrVar = zzl;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzk);
                    zzl = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
