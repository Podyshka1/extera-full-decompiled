package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalm extends zzafv implements zzagy {
    private static final zzalm zze;
    private static volatile zzahe zzf;
    private zzaer zza;
    private zzaer zzd;

    static {
        zzalm zzalmVar = new zzalm();
        zze = zzalmVar;
        zzafv.zzL(zzalm.class, zzalmVar);
    }

    private zzalm() {
        zzaer zzaerVar = zzaer.zza;
        this.zza = zzaerVar;
        this.zzd = zzaerVar;
    }

    public static zzall zzc() {
        return (zzall) zze.zzF();
    }

    public static zzalm zzd() {
        return zze;
    }

    public final zzaer zza() {
        return this.zza;
    }

    public final zzaer zzb() {
        return this.zzd;
    }

    public final /* synthetic */ void zze(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza = zzaerVar;
    }

    public final /* synthetic */ void zzg(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzd = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0004\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003\n", new Object[]{"zza", "zzd"});
        }
        if (i2 == 3) {
            return new zzalm();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzall(bArr);
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
        synchronized (zzalm.class) {
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
