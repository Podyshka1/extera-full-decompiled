package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajw extends zzafv implements zzagy {
    private static final zzajw zzn;
    private static volatile zzahe zzo;
    private int zza;
    private int zzg;
    private boolean zzj;
    private boolean zzk;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzl = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzm = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzajw zzajwVar = new zzajw();
        zzn = zzajwVar;
        zzafv.zzL(zzajw.class, zzajwVar);
    }

    private zzajw() {
    }

    public static zzajv zza() {
        return (zzajv) zzn.zzF();
    }

    public final /* synthetic */ void zzb(String str) {
        Objects.requireNonNull(str);
        this.zzd = str;
    }

    public final /* synthetic */ void zzc(String str) {
        Objects.requireNonNull(str);
        this.zze = str;
    }

    public final /* synthetic */ void zzd(String str) {
        this.zzf = "18.9.2";
    }

    public final /* synthetic */ void zze(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzh = str;
    }

    public final /* synthetic */ void zzg(String str) {
        Objects.requireNonNull(str);
        this.zzi = str;
    }

    public final /* synthetic */ void zzh(boolean z) {
        this.zzj = z;
    }

    public final /* synthetic */ void zzi(boolean z) {
        this.zzk = z;
    }

    public final /* synthetic */ void zzj(String str) {
        Objects.requireNonNull(str);
        this.zzl = str;
    }

    public final /* synthetic */ void zzk(String str) {
        Objects.requireNonNull(str);
        this.zza |= 2;
        this.zzm = str;
    }

    public final /* synthetic */ void zzn(int i) {
        this.zzg = i - 2;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzn, "\u0000\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\f\u0005ለ\u0000\u0006Ȉ\u0007\u0007\b\u0007\tȈ\nለ\u0001", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new zzajw();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajv(bArr);
        }
        if (i2 == 5) {
            return zzn;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzo;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajw.class) {
            try {
                zzafrVar = zzo;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzn);
                    zzo = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
