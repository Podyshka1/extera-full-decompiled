package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaks extends zzafv implements zzagy {
    private static final zzaks zzg;
    private static volatile zzahe zzh;
    private int zza;
    private zzako zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzaks zzaksVar = new zzaks();
        zzg = zzaksVar;
        zzafv.zzL(zzaks.class, zzaksVar);
    }

    private zzaks() {
    }

    public static zzakr zzd() {
        return (zzakr) zzg.zzF();
    }

    public static zzahe zze() {
        return (zzahe) zzg.zzf(7, null, null);
    }

    public final zzako zza() {
        zzako zzakoVar = this.zzd;
        return zzakoVar == null ? zzako.zzd() : zzakoVar;
    }

    public final String zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final /* synthetic */ void zzg(zzako zzakoVar) {
        Objects.requireNonNull(zzakoVar);
        this.zzd = zzakoVar;
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
            return new zzaks();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakr(bArr);
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
        synchronized (zzaks.class) {
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
