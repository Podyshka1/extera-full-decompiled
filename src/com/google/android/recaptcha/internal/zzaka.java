package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaka extends zzafv implements zzagy {
    private static final zzaka zzi;
    private static volatile zzahe zzj;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzaer zze;
    private String zzf;
    private String zzg;
    private zzaer zzh;

    static {
        zzaka zzakaVar = new zzaka();
        zzi = zzakaVar;
        zzafv.zzL(zzaka.class, zzakaVar);
    }

    private zzaka() {
        zzaer zzaerVar = zzaer.zza;
        this.zze = zzaerVar;
        this.zzf = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzg = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzh = zzaerVar;
    }

    public static zzajz zzg() {
        return (zzajz) zzi.zzF();
    }

    public static zzahe zzh() {
        return (zzahe) zzi.zzf(7, null, null);
    }

    public final String zza() {
        return this.zzd;
    }

    public final zzaer zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final String zzd() {
        return this.zzg;
    }

    public final zzaer zze() {
        return this.zzh;
    }

    public final /* synthetic */ void zzi(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzj(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza |= 2;
        this.zze = zzaerVar;
    }

    public final /* synthetic */ void zzk(String str) {
        Objects.requireNonNull(str);
        this.zza |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void zzl(String str) {
        Objects.requireNonNull(str);
        this.zza |= 8;
        this.zzg = str;
    }

    public final /* synthetic */ void zzn(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza |= 16;
        this.zzh = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ለ\u0000\u0002ည\u0001\u0003ለ\u0002\u0004ለ\u0003\u0005ည\u0004", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzaka();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajz(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzj;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzaka.class) {
            try {
                zzafrVar = zzj;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzi);
                    zzj = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
