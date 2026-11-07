package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzakk extends zzafv implements zzagy {
    private static final zzakk zzk;
    private static volatile zzahe zzl;
    private zzaer zza;
    private String zzd;
    private long zze;
    private zzaer zzf;
    private String zzg;
    private String zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        zzakk zzakkVar = new zzakk();
        zzk = zzakkVar;
        zzafv.zzL(zzakk.class, zzakkVar);
    }

    private zzakk() {
        zzaer zzaerVar = zzaer.zza;
        this.zza = zzaerVar;
        this.zzd = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzf = zzaerVar;
        this.zzg = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static zzakk zzh() {
        return zzk;
    }

    public final zzaer zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final long zzc() {
        return this.zze;
    }

    public final zzaer zzd() {
        return this.zzf;
    }

    public final String zze() {
        return this.zzg;
    }

    public final String zzg() {
        return this.zzh;
    }

    public final /* synthetic */ void zzi(String str) {
        Objects.requireNonNull(str);
        this.zzd = str;
    }

    public final /* synthetic */ void zzj() {
        this.zzd = zzk.zzd;
    }

    public final /* synthetic */ void zzk(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzf = zzaerVar;
    }

    public final /* synthetic */ void zzl() {
        this.zzf = zzk.zzf;
    }

    public final /* synthetic */ void zzn(String str) {
        Objects.requireNonNull(str);
        this.zzg = str;
    }

    public final /* synthetic */ void zzo() {
        this.zzg = zzk.zzg;
    }

    public final /* synthetic */ void zzp(String str) {
        Objects.requireNonNull(str);
        this.zzh = str;
    }

    public final /* synthetic */ void zzq() {
        this.zzh = zzk.zzh;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzk, "\u0004\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\u0002\u0004\n\u0005Ȉ\u0006Ȉ\u0007\u0007\b\u0007", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzakk();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakj(bArr);
        }
        if (i2 == 5) {
            return zzk;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzl;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzakk.class) {
            try {
                zzafrVar = zzl;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzk);
                    zzl = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
