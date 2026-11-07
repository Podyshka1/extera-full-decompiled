package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaki extends zzafv implements zzagy {
    private static final zzaki zzg;
    private static volatile zzahe zzh;
    private int zza;
    private zzakg zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzaki zzakiVar = new zzaki();
        zzg = zzakiVar;
        zzafv.zzL(zzaki.class, zzakiVar);
    }

    private zzaki() {
    }

    public static zzakh zzd() {
        return (zzakh) zzg.zzF();
    }

    public static zzahe zze() {
        return (zzahe) zzg.zzf(7, null, null);
    }

    public final zzakg zza() {
        zzakg zzakgVar = this.zzd;
        return zzakgVar == null ? zzakg.zzn() : zzakgVar;
    }

    public final String zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final /* synthetic */ void zzg(zzakg zzakgVar) {
        Objects.requireNonNull(zzakgVar);
        this.zzd = zzakgVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void zzh(String str) {
        this.zza |= 2;
        this.zze = "18.9.2";
    }

    public final /* synthetic */ void zzi(String str) {
        Objects.requireNonNull(str);
        this.zza |= 4;
        this.zzf = str;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ለ\u0001\u0003ለ\u0002", new Object[]{"zza", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzaki();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakh(bArr);
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
        synchronized (zzaki.class) {
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
