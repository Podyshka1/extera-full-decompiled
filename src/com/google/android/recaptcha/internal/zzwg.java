package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwg extends zzafv implements zzagy {
    private static final zzwg zzg;
    private static volatile zzahe zzh;
    private int zza;
    private int zzd;
    private zzwi zze;
    private zzaer zzf = zzaer.zza;

    static {
        zzwg zzwgVar = new zzwg();
        zzg = zzwgVar;
        zzafv.zzL(zzwg.class, zzwgVar);
    }

    private zzwg() {
    }

    public static zzwg zzd(zzaer zzaerVar, zzafh zzafhVar) {
        return (zzwg) zzafv.zzU(zzg, zzaerVar, zzafhVar);
    }

    public static zzwf zze() {
        return (zzwf) zzg.zzF();
    }

    public static zzahe zzg() {
        return (zzahe) zzg.zzf(7, null, null);
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzwi zzb() {
        zzwi zzwiVar = this.zze;
        return zzwiVar == null ? zzwi.zzh() : zzwiVar;
    }

    public final zzaer zzc() {
        return this.zzf;
    }

    public final /* synthetic */ void zzh(zzwi zzwiVar) {
        Objects.requireNonNull(zzwiVar);
        this.zze = zzwiVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void zzi(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzf = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zza", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzwg();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwf(bArr);
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
        synchronized (zzwg.class) {
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
