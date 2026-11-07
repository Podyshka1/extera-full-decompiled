package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajr extends zzafv implements zzagy {
    private static final zzajr zzj;
    private static volatile zzahe zzk;
    private int zza;
    private zzajc zze;
    private zzaiw zzf;
    private zzaje zzg;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzajr zzajrVar = new zzajr();
        zzj = zzajrVar;
        zzafv.zzL(zzajr.class, zzajrVar);
    }

    private zzajr() {
    }

    public static zzajq zza() {
        return (zzajq) zzj.zzF();
    }

    public final /* synthetic */ void zzb(String str) {
        Objects.requireNonNull(str);
        this.zzd = str;
    }

    public final /* synthetic */ void zzc(zzaiw zzaiwVar) {
        Objects.requireNonNull(zzaiwVar);
        this.zzf = zzaiwVar;
        this.zza |= 2;
    }

    public final /* synthetic */ void zzd(String str) {
        Objects.requireNonNull(str);
        this.zzh = str;
    }

    public final /* synthetic */ void zze(String str) {
        Objects.requireNonNull(str);
        this.zzi = str;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzj, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000\u0003ဉ\u0001\u0004ဉ\u0002\u0005Ȉ\u0006Ȉ", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzajr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajq(bArr);
        }
        if (i2 == 5) {
            return zzj;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzk;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajr.class) {
            try {
                zzafrVar = zzk;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzj);
                    zzk = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
