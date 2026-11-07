package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalk extends zzafv implements zzagy {
    private static final zzalk zzh;
    private static volatile zzahe zzi;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzalk zzalkVar = new zzalk();
        zzh = zzalkVar;
        zzafv.zzL(zzalk.class, zzalkVar);
    }

    private zzalk() {
    }

    public static zzalj zza() {
        return (zzalj) zzh.zzF();
    }

    public final /* synthetic */ void zzb(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzc(String str) {
        this.zza |= 2;
        this.zze = "18.9.2";
    }

    public final /* synthetic */ void zzd(String str) {
        Objects.requireNonNull(str);
        this.zza |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void zze(String str) {
        Objects.requireNonNull(str);
        this.zza |= 8;
        this.zzg = str;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001\u0003ለ\u0002\u0004ለ\u0003", new Object[]{"zza", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzalk();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzalj(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzi;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzalk.class) {
            try {
                zzafrVar = zzi;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzh);
                    zzi = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
