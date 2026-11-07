package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxb extends zzafv implements zzagy {
    private static final zzxb zzg;
    private static volatile zzahe zzh;
    private String zza = _UrlKt.FRAGMENT_ENCODE_SET;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzxb zzxbVar = new zzxb();
        zzg = zzxbVar;
        zzafv.zzL(zzxb.class, zzxbVar);
    }

    private zzxb() {
    }

    public static zzxa zza() {
        return (zzxa) zzg.zzF();
    }

    public final /* synthetic */ void zzb(String str) {
        Objects.requireNonNull(str);
        this.zza = str;
    }

    public final /* synthetic */ void zzc(int i) {
        this.zze = i;
    }

    public final /* synthetic */ void zze(int i) {
        this.zzd = zzws.zza(i);
    }

    public final /* synthetic */ void zzg(int i) {
        this.zzf = zzxd.zza(i);
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zza", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzxb();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzxa(bArr);
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
        synchronized (zzxb.class) {
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
