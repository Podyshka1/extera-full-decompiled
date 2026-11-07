package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzamf extends zzafv implements zzagy {
    private static final zzamf zzq;
    private static volatile zzahe zzr;
    private int zza;
    private int zzg;
    private boolean zzk;
    private boolean zzl;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzm = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzn = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzo = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzp = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzamf zzamfVar = new zzamf();
        zzq = zzamfVar;
        zzafv.zzL(zzamf.class, zzamfVar);
    }

    private zzamf() {
    }

    public static zzame zza() {
        return (zzame) zzq.zzF();
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
        this.zzh = str;
    }

    public final /* synthetic */ void zzg(String str) {
        Objects.requireNonNull(str);
        this.zzi = str;
    }

    public final /* synthetic */ void zzh(String str) {
        Objects.requireNonNull(str);
        this.zzj = str;
    }

    public final /* synthetic */ void zzi(boolean z) {
        this.zzk = z;
    }

    public final /* synthetic */ void zzj(boolean z) {
        this.zzl = z;
    }

    public final /* synthetic */ void zzk(String str) {
        Objects.requireNonNull(str);
        this.zzm = str;
    }

    public final /* synthetic */ void zzl(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzn = str;
    }

    public final /* synthetic */ void zzo(int i) {
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
            return zzafv.zzM(zzq, "\u0000\r\u0000\u0001\u0001\u000e\r\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\f\u0006Ȉ\u0007Ȉ\bȈ\t\u0007\n\u0007\u000bȈ\fለ\u0000\rለ\u0001\u000eለ\u0002", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp"});
        }
        if (i2 == 3) {
            return new zzamf();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzame(bArr);
        }
        if (i2 == 5) {
            return zzq;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzr;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzamf.class) {
            try {
                zzafrVar = zzr;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzq);
                    zzr = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
