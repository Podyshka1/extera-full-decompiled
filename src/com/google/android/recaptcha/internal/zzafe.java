package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzafe extends zzafv implements zzagy {
    private static final zzafe zze;
    private static volatile zzahe zzf;
    private long zza;
    private int zzd;

    static {
        zzafe zzafeVar = new zzafe();
        zze = zzafeVar;
        zzafv.zzL(zzafe.class, zzafeVar);
    }

    private zzafe() {
    }

    public static zzafd zzc() {
        return (zzafd) zze.zzF();
    }

    public static zzafe zzd() {
        return zze;
    }

    public final long zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzd;
    }

    public final /* synthetic */ void zze(long j) {
        this.zza = j;
    }

    public final /* synthetic */ void zzg(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new zzahi(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zza", "zzd"});
        }
        if (i2 == 3) {
            return new zzafe();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzafd(bArr);
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
        synchronized (zzafe.class) {
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
