package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwi extends zzafv implements zzagy {
    private static final zzwi zzh;
    private static volatile zzahe zzi;
    private int zza;
    private int zzd;
    private zzwe zze;
    private zzaer zzf;
    private zzaer zzg;

    static {
        zzwi zzwiVar = new zzwi();
        zzh = zzwiVar;
        zzafv.zzL(zzwi.class, zzwiVar);
    }

    private zzwi() {
        zzaer zzaerVar = zzaer.zza;
        this.zzf = zzaerVar;
        this.zzg = zzaerVar;
    }

    public static zzwi zze(zzaer zzaerVar, zzafh zzafhVar) {
        return (zzwi) zzafv.zzU(zzh, zzaerVar, zzafhVar);
    }

    public static zzwh zzg() {
        return (zzwh) zzh.zzF();
    }

    public static zzwi zzh() {
        return zzh;
    }

    public static zzahe zzi() {
        return (zzahe) zzh.zzf(7, null, null);
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzwe zzb() {
        zzwe zzweVar = this.zze;
        return zzweVar == null ? zzwe.zzc() : zzweVar;
    }

    public final zzaer zzc() {
        return this.zzf;
    }

    public final zzaer zzd() {
        return this.zzg;
    }

    public final /* synthetic */ void zzj(zzwe zzweVar) {
        Objects.requireNonNull(zzweVar);
        this.zze = zzweVar;
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
            return new zzwi();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwh(bArr);
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
        synchronized (zzwi.class) {
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
