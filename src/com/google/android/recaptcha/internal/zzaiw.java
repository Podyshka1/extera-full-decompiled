package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaiw extends zzafv implements zzagy {
    private static final zzaiw zzj;
    private static volatile zzahe zzk;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzagc zzi = zzafv.zzO();

    static {
        zzaiw zzaiwVar = new zzaiw();
        zzj = zzaiwVar;
        zzafv.zzL(zzaiw.class, zzaiwVar);
    }

    private zzaiw() {
    }

    public static zzaiu zza() {
        return (zzaiu) zzj.zzF();
    }

    public final /* synthetic */ void zzb(int i) {
        this.zza = i;
    }

    public final /* synthetic */ void zzc(String str) {
        Objects.requireNonNull(str);
        this.zzd = str;
    }

    public final /* synthetic */ void zzd(String str) {
        this.zze = "18.9.2";
    }

    public final /* synthetic */ void zze(String str) {
        Objects.requireNonNull(str);
        this.zzf = str;
    }

    public final /* synthetic */ void zzg(String str) {
        Objects.requireNonNull(str);
        this.zzg = str;
    }

    public final /* synthetic */ void zzh(String str) {
        Objects.requireNonNull(str);
        this.zzh = str;
    }

    public final /* synthetic */ void zzi(Iterable iterable) {
        zzagc zzagcVar = this.zzi;
        if (!zzagcVar.zza()) {
            this.zzi = zzafv.zzP(zzagcVar);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.zzi.zzh(((zzaiv) it.next()).zza());
        }
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzj, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u0004\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007,", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzaiw();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaiu(bArr);
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
        synchronized (zzaiw.class) {
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
