package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzakg extends zzafv implements zzagy {
    private static final zzakg zzs;
    private static volatile zzahe zzt;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzagd zzj = zzafv.zzQ();
    private zzaer zzk = zzaer.zza;
    private zzakk zzl;
    private zzake zzm;
    private zzako zzn;
    private boolean zzo;
    private long zzp;
    private boolean zzq;
    private boolean zzr;

    static {
        zzakg zzakgVar = new zzakg();
        zzs = zzakgVar;
        zzafv.zzL(zzakg.class, zzakgVar);
    }

    private zzakg() {
    }

    public static zzakg zzn() {
        return zzs;
    }

    public final String zza() {
        return this.zzf;
    }

    public final String zzb() {
        return this.zzh;
    }

    public final boolean zzc() {
        return (this.zza & 128) != 0;
    }

    public final zzakk zzd() {
        zzakk zzakkVar = this.zzl;
        return zzakkVar == null ? zzakk.zzh() : zzakkVar;
    }

    public final boolean zze() {
        return (this.zza & 256) != 0;
    }

    public final zzake zzg() {
        zzake zzakeVar = this.zzm;
        return zzakeVar == null ? zzake.zzb() : zzakeVar;
    }

    public final zzako zzh() {
        zzako zzakoVar = this.zzn;
        return zzakoVar == null ? zzako.zzd() : zzakoVar;
    }

    public final boolean zzi() {
        return this.zzo;
    }

    public final long zzj() {
        return this.zzp;
    }

    public final boolean zzk() {
        return this.zzq;
    }

    public final boolean zzl() {
        return this.zzr;
    }

    public final /* synthetic */ void zzo(zzakk zzakkVar) {
        Objects.requireNonNull(zzakkVar);
        this.zzl = zzakkVar;
        this.zza |= 128;
    }

    public final /* synthetic */ void zzp(zzake zzakeVar) {
        Objects.requireNonNull(zzakeVar);
        this.zzm = zzakeVar;
        this.zza |= 256;
    }

    public final /* synthetic */ void zzq(zzako zzakoVar) {
        Objects.requireNonNull(zzakoVar);
        this.zzn = zzakoVar;
        this.zza |= 512;
    }

    public final /* synthetic */ void zzr() {
        this.zzn = null;
        this.zza &= -513;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzs, "\u0004\u000f\u0000\u0001\u0001\u0011\u000f\u0000\u0001\u0000\u0001ለ\u0000\u0002ለ\u0001\u0003ለ\u0002\u0004ለ\u0003\u0005ለ\u0004\u0006ለ\u0005\u0007%\bည\u0006\u000bဉ\u0007\fဉ\b\rဉ\t\u000eဇ\n\u000fဂ\u000b\u0010ဇ\f\u0011ဇ\r", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr"});
        }
        if (i2 == 3) {
            return new zzakg();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakf(bArr);
        }
        if (i2 == 5) {
            return zzs;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzt;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzakg.class) {
            try {
                zzafrVar = zzt;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzs);
                    zzt = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
