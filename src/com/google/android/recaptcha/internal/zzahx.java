package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzahx extends zzafv implements zzagy {
    private static final zzahx zze;
    private static volatile zzahe zzf;
    private long zza;
    private int zzd;

    static {
        zzahx zzahxVar = new zzahx();
        zze = zzahxVar;
        zzafv.zzL(zzahx.class, zzahxVar);
    }

    private zzahx() {
    }

    public static zzahw zzc() {
        return (zzahw) zze.zzF();
    }

    public final long zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzd;
    }

    public final /* synthetic */ void zzd(long j) {
        this.zza = j;
    }

    public final /* synthetic */ void zze(int i) {
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
            return new zzahx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzahw(bArr);
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
        synchronized (zzahx.class) {
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
