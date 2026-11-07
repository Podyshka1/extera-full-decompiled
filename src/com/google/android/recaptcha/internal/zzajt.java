package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajt extends zzafv implements zzagy {
    private static final zzajt zzm;
    private static volatile zzahe zzn;
    private int zza;
    private int zzd;
    private int zze;
    private zzafe zzh;
    private zzahx zzi;
    private int zzj;
    private zzajg zzk;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzage zzl = zzafv.zzR();

    static {
        zzajt zzajtVar = new zzajt();
        zzm = zzajtVar;
        zzafv.zzL(zzajt.class, zzajtVar);
    }

    private zzajt() {
    }

    public static zzajt zza() {
        return zzm;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzm, "\u0000\t\u0000\u0001\u0001\u000b\t\u0000\u0001\u0000\u0001\u0004\u0003ဉ\u0000\u0004ဉ\u0001\u0005\f\u0007\u001b\b\f\tȈ\nȈ\u000bဉ\u0002", new Object[]{"zza", "zzd", "zzh", "zzi", "zzj", "zzl", zzajn.class, "zze", "zzf", "zzg", "zzk"});
        }
        if (i2 == 3) {
            return new zzajt();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajs(bArr);
        }
        if (i2 == 5) {
            return zzm;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzn;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajt.class) {
            try {
                zzafrVar = zzn;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzm);
                    zzn = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
