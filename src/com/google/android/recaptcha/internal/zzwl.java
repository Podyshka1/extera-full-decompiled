package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwl extends zzafv implements zzagy {
    private static final zzwl zzg;
    private static volatile zzahe zzh;
    private int zza;
    private int zzd;
    private zzaer zze = zzaer.zza;
    private zzwn zzf;

    static {
        zzwl zzwlVar = new zzwl();
        zzg = zzwlVar;
        zzafv.zzL(zzwl.class, zzwlVar);
    }

    private zzwl() {
    }

    public static zzwl zzd(zzaer zzaerVar, zzafh zzafhVar) {
        return (zzwl) zzafv.zzU(zzg, zzaerVar, zzafhVar);
    }

    public static zzwk zze() {
        return (zzwk) zzg.zzF();
    }

    public static zzahe zzg() {
        return (zzahe) zzg.zzf(7, null, null);
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzaer zzb() {
        return this.zze;
    }

    public final zzwn zzc() {
        zzwn zzwnVar = this.zzf;
        return zzwnVar == null ? zzwn.zze() : zzwnVar;
    }

    public final /* synthetic */ void zzh(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zze = zzaerVar;
    }

    public final /* synthetic */ void zzi(zzwn zzwnVar) {
        Objects.requireNonNull(zzwnVar);
        this.zzf = zzwnVar;
        this.zza |= 1;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zza", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzwl();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwk(bArr);
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
        synchronized (zzwl.class) {
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
