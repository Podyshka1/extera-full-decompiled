package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzama extends zzafv implements zzagy {
    private static final zzama zze;
    private static volatile zzahe zzf;
    private int zza = 0;
    private Object zzd;

    static {
        zzama zzamaVar = new zzama();
        zze = zzamaVar;
        zzafv.zzL(zzama.class, zzamaVar);
    }

    private zzama() {
    }

    public static zzalz zza() {
        return (zzalz) zze.zzF();
    }

    public final /* synthetic */ void zzb(boolean z) {
        this.zza = 1;
        this.zzd = Boolean.TRUE;
    }

    public final /* synthetic */ void zzc(long j) {
        this.zza = 7;
        this.zzd = Long.valueOf(j);
    }

    public final /* synthetic */ void zzd(String str) {
        Objects.requireNonNull(str);
        this.zza = 11;
        this.zzd = str;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0000\u000b\u0001\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001:\u0000\u0002=\u0000\u0003Ȼ\u0000\u0004B\u0000\u0005B\u0000\u0006>\u0000\u0007C\u0000\b6\u0000\t4\u0000\n3\u0000\u000bȻ\u0000", new Object[]{"zzd", "zza"});
        }
        if (i2 == 3) {
            return new zzama();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzalz(bArr);
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
        synchronized (zzama.class) {
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
