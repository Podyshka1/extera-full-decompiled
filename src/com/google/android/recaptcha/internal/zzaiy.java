package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaiy extends zzafv implements zzagy {
    private static final zzaiy zzk;
    private static volatile zzahe zzl;
    private zzaer zza;
    private String zzd;
    private zzaer zze;
    private String zzf;
    private String zzg;
    private zzaer zzh;
    private String zzi;
    private zzaer zzj;

    static {
        zzaiy zzaiyVar = new zzaiy();
        zzk = zzaiyVar;
        zzafv.zzL(zzaiy.class, zzaiyVar);
    }

    private zzaiy() {
        zzaer zzaerVar = zzaer.zza;
        this.zza = zzaerVar;
        this.zzd = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zze = zzaerVar;
        this.zzf = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzg = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzh = zzaerVar;
        this.zzi = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzj = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzk, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\n\u0004Ȉ\u0005Ȉ\u0006\n\u0007Ȉ\b\n", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzaiy();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaix(bArr);
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
        synchronized (zzaiy.class) {
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
