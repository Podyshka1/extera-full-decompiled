package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalg extends zzafv implements zzagy {
    private static final zzalg zzg;
    private static volatile zzahe zzh;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzaku zzf;

    static {
        zzalg zzalgVar = new zzalg();
        zzg = zzalgVar;
        zzafv.zzL(zzalg.class, zzalgVar);
    }

    private zzalg() {
    }

    public static zzalf zza() {
        return (zzalf) zzg.zzF();
    }

    public final /* synthetic */ void zzb(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzc(String str) {
        Objects.requireNonNull(str);
        this.zza |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void zzd(zzaku zzakuVar) {
        Objects.requireNonNull(zzakuVar);
        this.zzf = zzakuVar;
        this.zza |= 4;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0004\u0003\u0000\u0001\u0002\u0004\u0003\u0000\u0000\u0000\u0002ለ\u0000\u0003ለ\u0001\u0004ဉ\u0002", new Object[]{"zza", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzalg();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzalf(bArr);
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
        synchronized (zzalg.class) {
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
