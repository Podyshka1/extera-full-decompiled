package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwn extends zzafv implements zzagy {
    private static final zzwn zze;
    private static volatile zzahe zzf;
    private int zza;
    private zzaer zzd = zzaer.zza;

    static {
        zzwn zzwnVar = new zzwn();
        zze = zzwnVar;
        zzafv.zzL(zzwn.class, zzwnVar);
    }

    private zzwn() {
    }

    public static zzwn zzc(zzaer zzaerVar, zzafh zzafhVar) {
        return (zzwn) zzafv.zzU(zze, zzaerVar, zzafhVar);
    }

    public static zzwm zzd() {
        return (zzwm) zze.zzF();
    }

    public static zzwn zze() {
        return zze;
    }

    public static zzahe zzg() {
        return (zzahe) zze.zzf(7, null, null);
    }

    public final int zza() {
        return this.zza;
    }

    public final zzaer zzb() {
        return this.zzd;
    }

    public final /* synthetic */ void zzh(zzaer zzaerVar) {
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
            return zzafv.zzM(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zza", "zzd"});
        }
        if (i2 == 3) {
            return new zzwn();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwm(bArr);
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
        synchronized (zzwn.class) {
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
