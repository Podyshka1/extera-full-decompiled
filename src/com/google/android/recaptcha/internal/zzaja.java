package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaja extends zzafv implements zzagy {
    private static final zzaja zzj;
    private static volatile zzahe zzk;
    private int zze;
    private int zzh;
    private int zzi;
    private String zza = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzaja zzajaVar = new zzaja();
        zzj = zzajaVar;
        zzafv.zzL(zzaja.class, zzajaVar);
    }

    private zzaja() {
    }

    public static zzaiz zza() {
        return (zzaiz) zzj.zzF();
    }

    public final /* synthetic */ void zzb(String str) {
        Objects.requireNonNull(str);
        this.zza = str;
    }

    public final /* synthetic */ void zzc(int i) {
        this.zze = i;
    }

    public final /* synthetic */ void zzd(String str) {
        Objects.requireNonNull(str);
        this.zzg = str;
    }

    public final /* synthetic */ void zze(int i) {
        this.zzi = i;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzj, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003Ȉ\u0004\u0004\u0005Ȉ\u0006Ȉ\u0007\u0004", new Object[]{"zza", "zze", "zzg", "zzh", "zzd", "zzf", "zzi"});
        }
        if (i2 == 3) {
            return new zzaja();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaiz(bArr);
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
        synchronized (zzaja.class) {
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
