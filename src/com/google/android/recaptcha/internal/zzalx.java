package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalx extends zzafv implements zzagy {
    private static final zzalx zzk;
    private static volatile zzahe zzl;
    private int zza;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private zzalv zzh;
    private int zzi;
    private zzamd zzj;

    static {
        zzalx zzalxVar = new zzalx();
        zzk = zzalxVar;
        zzafv.zzL(zzalx.class, zzalxVar);
    }

    private zzalx() {
    }

    public static zzalw zza() {
        return (zzalw) zzk.zzF();
    }

    public final /* synthetic */ void zzb(int i) {
        this.zzi = i;
    }

    public final /* synthetic */ void zzd(int i) {
        this.zzd = i - 2;
    }

    public final /* synthetic */ void zze(int i) {
        this.zzf = i - 2;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzk, "\u0000\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\f\u0002\u000b\u0003\f\u0004\f\u0005ဉ\u0000\u0006\u000b\u0007ဉ\u0001", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzalx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzalw(bArr);
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
        synchronized (zzalx.class) {
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
