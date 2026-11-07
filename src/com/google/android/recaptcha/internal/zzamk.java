package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzamk extends zzafv implements zzagy {
    private static final zzamk zze;
    private static volatile zzahe zzf;
    private int zza = 0;
    private Object zzd;

    static {
        zzamk zzamkVar = new zzamk();
        zze = zzamkVar;
        zzafv.zzL(zzamk.class, zzamkVar);
    }

    private zzamk() {
    }

    public static zzamk zzc(byte[] bArr) {
        return (zzamk) zzafv.zzV(zze, bArr);
    }

    public static zzamj zzd() {
        return (zzamj) zze.zzF();
    }

    public final zzajj zza() {
        return this.zza == 1 ? (zzajj) this.zzd : zzajj.zze();
    }

    public final zzajt zzb() {
        return this.zza == 2 ? (zzajt) this.zzd : zzajt.zza();
    }

    public final /* synthetic */ void zze(zzajj zzajjVar) {
        Objects.requireNonNull(zzajjVar);
        this.zzd = zzajjVar;
        this.zza = 1;
    }

    public final int zzh() {
        int i = this.zza;
        if (i == 0) {
            return 3;
        }
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000", new Object[]{"zzd", "zza", zzajj.class, zzajt.class});
        }
        if (i2 == 3) {
            return new zzamk();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzamj(bArr);
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
        synchronized (zzamk.class) {
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
