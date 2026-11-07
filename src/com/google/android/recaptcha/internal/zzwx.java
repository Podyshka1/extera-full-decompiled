package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwx extends zzafv implements zzagy {
    private static final zzwx zzh;
    private static volatile zzahe zzi;
    private int zza;
    private zzwr zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzwx zzwxVar = new zzwx();
        zzh = zzwxVar;
        zzafv.zzL(zzwx.class, zzwxVar);
    }

    private zzwx() {
    }

    public static zzww zzd() {
        return (zzww) zzh.zzF();
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final zzwr zzb() {
        zzwr zzwrVar = this.zzd;
        return zzwrVar == null ? zzwr.zzd() : zzwrVar;
    }

    public final int zzc() {
        return this.zzf;
    }

    public final /* synthetic */ void zze(zzwr zzwrVar) {
        Objects.requireNonNull(zzwrVar);
        this.zzd = zzwrVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void zzg(int i) {
        this.zzf = i;
    }

    public final int zzi() {
        int i = this.zze;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? 0 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzj() {
        int i = this.zzg;
        int i2 = 2;
        if (i != 0) {
            if (i == 1) {
                i2 = 3;
            } else if (i != 2) {
                i2 = 5;
                if (i != 3) {
                    i2 = i != 4 ? i != 5 ? 0 : 7 : 6;
                }
            } else {
                i2 = 4;
            }
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final /* synthetic */ void zzk(int i) {
        this.zze = zzws.zza(i);
    }

    public final /* synthetic */ void zzl(int i) {
        this.zzg = zzxd.zza(i);
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzh, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zza", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzwx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzww(bArr);
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
        synchronized (zzwx.class) {
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
