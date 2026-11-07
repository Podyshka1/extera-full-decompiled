package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwr extends zzafv implements zzagy {
    private static final zzwr zzf;
    private static volatile zzahe zzg;
    private String zza = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzaer zzd = zzaer.zza;
    private int zze;

    static {
        zzwr zzwrVar = new zzwr();
        zzf = zzwrVar;
        zzafv.zzL(zzwr.class, zzwrVar);
    }

    private zzwr() {
    }

    public static zzwq zzc() {
        return (zzwq) zzf.zzF();
    }

    public static zzwr zzd() {
        return zzf;
    }

    public final String zza() {
        return this.zza;
    }

    public final zzaer zzb() {
        return this.zzd;
    }

    public final /* synthetic */ void zze(String str) {
        Objects.requireNonNull(str);
        this.zza = str;
    }

    public final /* synthetic */ void zzg(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzd = zzaerVar;
    }

    public final int zzi() {
        int i = this.zze;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? 0 : 6 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final /* synthetic */ void zzj(int i) {
        this.zze = i - 2;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zza", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzwr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwq(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzg;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzwr.class) {
            try {
                zzafrVar = zzg;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzf);
                    zzg = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
