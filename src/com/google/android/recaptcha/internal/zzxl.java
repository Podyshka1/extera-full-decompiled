package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxl extends zzafv implements zzagy {
    private static final zzxl zzh;
    private static volatile zzahe zzi;
    private int zza;
    private int zzd;
    private zzxh zze;
    private zzaer zzf;
    private zzaer zzg;

    static {
        zzxl zzxlVar = new zzxl();
        zzh = zzxlVar;
        zzafv.zzL(zzxl.class, zzxlVar);
    }

    private zzxl() {
        zzaer zzaerVar = zzaer.zza;
        this.zzf = zzaerVar;
        this.zzg = zzaerVar;
    }

    public static zzxl zze(zzaer zzaerVar, zzafh zzafhVar) {
        return (zzxl) zzafv.zzU(zzh, zzaerVar, zzafhVar);
    }

    public static zzxk zzg() {
        return (zzxk) zzh.zzF();
    }

    public static zzxl zzh() {
        return zzh;
    }

    public static zzahe zzi() {
        return (zzahe) zzh.zzf(7, null, null);
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzxh zzb() {
        zzxh zzxhVar = this.zze;
        return zzxhVar == null ? zzxh.zzc() : zzxhVar;
    }

    public final zzaer zzc() {
        return this.zzf;
    }

    public final zzaer zzd() {
        return this.zzg;
    }

    public final /* synthetic */ void zzj(zzxh zzxhVar) {
        Objects.requireNonNull(zzxhVar);
        this.zze = zzxhVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void zzk(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzf = zzaerVar;
    }

    public final /* synthetic */ void zzl(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzg = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzh, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zza", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzxl();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzxk(bArr);
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
        synchronized (zzxl.class) {
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
