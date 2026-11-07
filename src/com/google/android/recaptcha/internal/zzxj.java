package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxj extends zzafv implements zzagy {
    private static final zzxj zzl;
    private static volatile zzahe zzm;
    private int zza;
    private int zzd;
    private zzxl zze;
    private zzaer zzf;
    private zzaer zzg;
    private zzaer zzh;
    private zzaer zzi;
    private zzaer zzj;
    private zzaer zzk;

    static {
        zzxj zzxjVar = new zzxj();
        zzl = zzxjVar;
        zzafv.zzL(zzxj.class, zzxjVar);
    }

    private zzxj() {
        zzaer zzaerVar = zzaer.zza;
        this.zzf = zzaerVar;
        this.zzg = zzaerVar;
        this.zzh = zzaerVar;
        this.zzi = zzaerVar;
        this.zzj = zzaerVar;
        this.zzk = zzaerVar;
    }

    public static zzxj zzj(zzaer zzaerVar, zzafh zzafhVar) {
        return (zzxj) zzafv.zzU(zzl, zzaerVar, zzafhVar);
    }

    public static zzxi zzk() {
        return (zzxi) zzl.zzF();
    }

    public static zzahe zzl() {
        return (zzahe) zzl.zzf(7, null, null);
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzxl zzb() {
        zzxl zzxlVar = this.zze;
        return zzxlVar == null ? zzxl.zzh() : zzxlVar;
    }

    public final zzaer zzc() {
        return this.zzf;
    }

    public final zzaer zzd() {
        return this.zzg;
    }

    public final zzaer zze() {
        return this.zzh;
    }

    public final zzaer zzg() {
        return this.zzi;
    }

    public final zzaer zzh() {
        return this.zzj;
    }

    public final zzaer zzi() {
        return this.zzk;
    }

    public final /* synthetic */ void zzm(int i) {
        this.zzd = 0;
    }

    public final /* synthetic */ void zzn(zzxl zzxlVar) {
        Objects.requireNonNull(zzxlVar);
        this.zze = zzxlVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void zzo(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzf = zzaerVar;
    }

    public final /* synthetic */ void zzp(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzg = zzaerVar;
    }

    public final /* synthetic */ void zzq(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzh = zzaerVar;
    }

    public final /* synthetic */ void zzr(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzi = zzaerVar;
    }

    public final /* synthetic */ void zzs(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzj = zzaerVar;
    }

    public final /* synthetic */ void zzt(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzk = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzl, "\u0000\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n\u0005\n\u0006\n\u0007\n\b\n", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzxj();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzxi(bArr);
        }
        if (i2 == 5) {
            return zzl;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzm;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzxj.class) {
            try {
                zzafrVar = zzm;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzl);
                    zzm = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
