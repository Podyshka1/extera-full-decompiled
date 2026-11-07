package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzake extends zzafv implements zzagy {
    private static final zzake zzd;
    private static volatile zzahe zze;
    private zzaer zza = zzaer.zza;

    static {
        zzake zzakeVar = new zzake();
        zzd = zzakeVar;
        zzafv.zzL(zzake.class, zzakeVar);
    }

    private zzake() {
    }

    public static zzake zzb() {
        return zzd;
    }

    public final zzaer zza() {
        return this.zza;
    }

    public final /* synthetic */ void zzc(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza = zzaerVar;
    }

    public final /* synthetic */ void zzd() {
        this.zza = zzd.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"zza"});
        }
        if (i2 == 3) {
            return new zzake();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakd(bArr);
        }
        if (i2 == 5) {
            return zzd;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zze;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzake.class) {
            try {
                zzafrVar = zze;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzd);
                    zze = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
